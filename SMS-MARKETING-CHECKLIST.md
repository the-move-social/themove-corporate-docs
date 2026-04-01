# SMS Launch Blast Checklist — The Move Social Inc.

**Created:** March 30, 2026
**Status:** Consent language updated, registration not started
**Scope:** One-time "app is live" text to everyone on the waitlist
**Regulations:** TCPA, CTIA Messaging Guidelines, A2P 10DLC

---

## The Pipeline

```
1. User signs up on themovesocial.com
2. User gets verification code (Twilio Verify, existing flow)
3. User enters code, joins waitlist (phone + consent logged in Turso)
4. App launches — we send a single text blast to all waitlist numbers
```

---

## Why This Isn't Covered by Twilio Verify

Twilio Verify can only send OTP codes. A custom "the app is live" message requires **Twilio Programmable Messaging** with a dedicated phone number and A2P 10DLC registration.

---

## What's Already Done

- [x] Updated consent language to include launch notification: "...a one-time verification code **and a notification when the app launches** via automated SMS..."
- [x] Updated Privacy Policy Section 3 (phone number usage) and Section 8 (SMS terms) to disclose launch notification
- [x] Updated Terms Section 4 (SMS terms) to disclose launch notification
- [x] Consent logging in Turso captures exact consent text at time of signup
- [x] Opt-out webhook Lambda deployed (`POST /sms-webhook`)
- [x] STOP/HELP keywords disclosed in consent, privacy policy, and terms

**Note:** Users who signed up before the consent update only consented to OTP. See "Existing Users" section below.

---

## What Still Needs to Be Done

### 1. Get a Dedicated Phone Number (~5 minutes)

- [x] Purchased a toll-free number in Twilio Console
- [x] Added emergency address (8 The Green, Suite B, Dover, DE 19901)

### 2. Register for Sending (1-2 weeks)

**If toll-free:**
- [x] Submit toll-free verification in Twilio Console > Phone Numbers > Manage > Toll-Free Verification
  - Business name: The Move Social Inc.
  - Use case: One-time app launch notification to waitlist subscribers
  - Sample message: "The Move Social: The app is live! Download it here: [link]. Reply STOP to unsubscribe."
  - Volume: One-time blast, [X] messages total
  - Opt-in description: Users opted in via waitlist form with explicit consent
- [ ] Wait for approval (typically 1-5 business days, submitted March 30, 2026)

**If local number (10DLC):**
- [ ] Register brand in Twilio Trust Hub ($4 one-time)
- [ ] Register campaign: "One-time app launch notification to opted-in waitlist subscribers" ($10 one-time + $2/mo)
- [ ] Wait for approval (typically 1-7 business days)

### 3. Configure Messaging Service (~10 minutes)

- [ ] Create a Messaging Service in Twilio Console > Messaging > Services
  - Name: "The Move Launch"
  - Add your toll-free/local number as a sender
- [ ] Set incoming message webhook to: `https://35hqb5cmj0.execute-api.us-east-1.amazonaws.com/prod/sms-webhook`
  - This handles STOP replies and logs opt-outs to `consent_log`

### 4. Build the Blast Lambda (~1 hour)

- [ ] Create a new Lambda function `blast.mjs`:
  - Query all phone numbers from `waitlist` table in Turso
  - Cross-reference `consent_log` for any `opt_out` events
  - Send message via Twilio Programmable Messaging (not Verify)
  - Log each sent message
  - Include STOP in every message
- [ ] Message template:

```
The Move Social: The app is live! Download it here: [app store link]. Reply STOP to unsubscribe.
```

- [ ] Keep under 160 characters (1 SMS segment)
- [ ] Send between 8 AM - 9 PM ET (most waitlist users are NYC area)
- [ ] Throttle sends (e.g., 10/second) to avoid carrier filtering

### 5. Handle Existing Users (Pre-Consent-Update)

Users who signed up before the consent language was updated only consented to OTP, not a launch notification. Options:

**Option A (Recommended): Send anyway — minimal risk**
- These users signed up for a *waitlist* — they are literally waiting to be notified
- It's a single, relevant message about the thing they signed up for
- Include STOP and honor any opt-outs immediately
- Litigation risk is near-zero for a single wanted notification

**Option B (Maximum caution): Re-consent first**
- Send an OTP-style message: "The Move Social: The app is almost ready! Reply YES to be notified at launch. Reply STOP to unsubscribe."
- Only blast users who replied YES
- More legally safe but will lose ~60-80% of users to non-response

**Recommendation:** Option A. No one who signed up for a waitlist will object to being told the app launched.

### 6. Test Before Sending

- [ ] Send test blast to team members (2-3 numbers)
- [ ] Verify message renders correctly
- [ ] Reply STOP from a test number, confirm it's logged in `consent_log` and no further messages sent
- [ ] Reply HELP from a test number, confirm auto-response
- [ ] Check Twilio delivery reports for any failures

---

## Launch Day Execution

```
1. Pull final waitlist count: turso db shell themove-waitlist "SELECT COUNT(*) FROM waitlist;"
2. Check for opt-outs: turso db shell themove-waitlist "SELECT phone FROM consent_log WHERE event = 'opt_out';"
3. Trigger blast Lambda (manually or via API call)
4. Monitor Twilio Console for delivery rates
5. Monitor sms-webhook for any STOP replies
6. Done — no further messages needed
```

---

## Cost Estimate

| Item | Cost |
|------|------|
| Toll-free number | $2/mo (cancel after blast) |
| Toll-free verification | Free |
| SMS sending (US) | ~$0.0079/segment |
| **500 waitlist users** | **~$6 total** |
| **2,000 waitlist users** | **~$18 total** |
| **10,000 waitlist users** | **~$81 total** |

You can cancel the toll-free number after the blast if you don't plan to send more SMS.

---

## Timeline

```
NOW
  ├── [x] Consent language and legal docs updated
  ├── [x] Bought toll-free number + added emergency address
  └── [x] Submitted toll-free verification (March 30, 2026)

WHEN VERIFICATION APPROVED
  ├── [ ] Create Messaging Service + configure webhook (10 min)
  └── [ ] Build and test blast Lambda (1 hour)

LAUNCH DAY
  └── [ ] Send the blast
```
