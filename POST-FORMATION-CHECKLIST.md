# Post-Formation Checklist — The Move Social Inc.

**Updated:** March 27, 2026
**Entity:** The Move Social Inc. — Delaware C-Corp (dual-class)
**Founders:** Altin Lecaj (CEO) / Eric Garcia (CTO)

---

## What's Done

- [x] Certificate of Incorporation filed with Delaware (March 18, 2026)
- [x] Amended and Restated Certificate of Incorporation filed (dual-class: 8.5M Class A voting + 1.5M Class B non-voting)
- [x] EIN received from IRS (March 18, 2026)
- [x] Founders' Agreement signed
- [x] Registered agent: Northwest (Delaware)

---

## Step 1: Adopt Bylaws & Board Consent

**Do this first — everything else depends on it.**

- [ ] Both founders review and sign the **Board Consent in Lieu of First Meeting** (`board-consent.md`)
  - This single document adopts the bylaws, appoints officers, authorizes stock issuance, adopts the EIP, and more (Resolutions 1-17)
- [ ] Both founders sign the **Bylaws** (`bylaws.md`)
  - Consensus voting, dual-authorization for spend > $500, dispute resolution tied to Founders' Agreement
- [ ] Store signed copies in `signed/`

> The Board Consent is the master resolution — it authorizes stock issuance (Resolution 6), adopts the EIP (Resolution 7), appoints officers (Resolution 3), and authorizes banking (Resolution 10). You cannot issue stock without it.

---

## Step 2: Open Business Bank Account

**Required before stock can be issued (founders need somewhere to deposit purchase funds).**

- [ ] Open TMS bank account at Mercury, Relay, or similar startup-friendly bank
  - Bring: EIN confirmation (CP 575 A in `formation/`), Certificate of Incorporation, Board Consent, Bylaws
  - Set up **dual authorization** for transactions > $500 (required by Bylaws Section 7.5)
- [ ] Both founders added as authorized signers
- [ ] Set up online banking access for both CEO and CTO

---

## Step 3: Issue Founder Stock

**This is how you and Eric become shareholders. Do this immediately after the bank account is open.**

### How Stock Issuance Works

1. **Sign the Stock Subscription Agreements** — The legal contract where each founder agrees to buy shares
2. **Pay for the shares** — Deposit the purchase price into the TMS bank account
3. **Company records the issuance** — Update the stock ledger
4. **You're now shareholders** — You each own 4,250,000 Class A shares (50/50)

### Checklist

- [ ] Both founders execute **Stock Subscription Agreement** (`stock-subscription-agreement.md`)

  | Founder | Shares | Class | Price | Total |
  |---------|--------|-------|-------|-------|
  | Altin Lecaj | 4,250,000 | Class A (Voting) | $0.00001/share | $42.50 |
  | Eric Garcia | 4,250,000 | Class A (Voting) | $0.00001/share | $42.50 |

- [ ] Each founder deposits **$42.50** into the TMS bank account (check, wire, or transfer)
  - Keep the receipt / confirmation — this is your proof of payment
  - Total: $85.00 for 8,500,000 shares
- [ ] Record issuance in the **stock ledger**
  - If using a cap table tool (Carta, Pulley, AngelList): enter the issuance there
  - If not yet set up: create a simple spreadsheet with: shareholder name, share class, number of shares, price paid, date issued, certificate number (if any)
- [ ] Issue stock certificates (optional — uncertificated shares are fine per Bylaws Section 5.3)
  - If issuing certificates: both officers sign, clearly label "Class A Common Stock"
  - If uncertificated: send written notice to each shareholder confirming their shares

> **Note:** TMS founder shares do NOT have vesting or 83(b) requirements. That's only for PTL. The TMS Stock Subscription Agreement is a straightforward purchase — no vesting, no cliff, no repurchase right. You pay $42.50, you own the shares outright.

---

## Step 4: Set Up Stock Ledger / Cap Table

- [ ] Choose a cap table tool: **Carta**, **Pulley**, or **AngelList Stack**
  - Carta: industry standard, $0 for startups under a certain size
  - Pulley: founder-friendly, free tier available
  - Either works — pick one and stick with it
- [ ] Record the founder stock issuance (Step 3)
- [ ] Record the 1,500,000 Class B shares reserved for the Equity Incentive Plan
- [ ] Both CEO and CTO have admin access
- [ ] Bylaws Section 7.10 requires quarterly reconciliation signed by both founders

---

## Step 5: PTL-TMS Intercompany Agreements

**These define the IP and services relationship between your two entities.**

- [ ] **IP Assignment Agreement** (`agreements/ip-assignment-agreement.md`) — Founders assign all existing IP to PTL
- [ ] **IP License Agreement** (`ip-license-agreement.md`) — PTL grants TMS exclusive license to core IP within the IRL social planning field
- [ ] **Intercompany Services Agreement** (`intercompany-services-agreement.md`) — PTL provides shared services (engineering, infrastructure) to TMS at $0 initial fee, arm's length terms

> All three should be signed the same day. The Board Consent (Resolution 8-9) already authorizes the IP License and Intercompany Services agreements.

---

## Step 6: Adopt Equity Incentive Plan & Contractor Templates

**Sets up the infrastructure to grant options to Dana, Paul, and future team members.**

- [ ] Confirm **Equity Incentive Plan** (`equity-incentive-plan.md`) is adopted (already authorized by Board Consent Resolution 7)
  - Pool: 1,500,000 Class B shares (non-voting, equal economic rights)
  - All grants as NSOs (Non-Qualified Stock Options)
  - Early-exercise provisions included
- [ ] Finalize **Stock Option Grant Agreement** template (`stock-option-grant-agreement.md`)
- [ ] Finalize **Independent Contractor Agreement** template (`independent-contractor-agreement.md`)
  - Equity-only compensation, IP assignment + confidentiality, no non-compete

---

## Step 7: Commission 409A Valuation

**You need a 409A before you can set the exercise price for any option grants.**

- [ ] Select a 409A provider
  - Carta 409A (~$1,000-$2,000) — integrates with Carta cap table
  - Pulley 409A (~$1,000) — integrates with Pulley
  - Independent firm (~$2,000-$3,000)
- [ ] Commission the valuation — provide: Certificate of Incorporation, cap table, financial projections, any revenue/traction data
- [ ] Receive final report with **per-share FMV** (expected $0.01-$0.05/share for pre-revenue startup, cost/asset method)
- [ ] Report is valid for **12 months** or until a material event (e.g., fundraise)

---

## Step 8: Execute Contractor Agreements & Issue First Grants

**Do this once the 409A is complete (estimated April 7-14, 2026).**

### Contractor Agreements

- [ ] Execute Independent Contractor Agreement — **Dana Vines** (President of Sales)
- [ ] Execute Independent Contractor Agreement — **Paul Wand** (Founding Engineer)

### Stock Option Grants

- [ ] Board consent approving grants (already pre-approved in Board Consent Resolution 15, effective upon 409A completion)
- [ ] Execute Stock Option Grant Agreement — **Dana Vines** (100,000 Class B NSO, 4yr/1yr cliff)
- [ ] Execute Stock Option Grant Agreement — **Paul Wand** (100,000 Class B NSO, 4yr/1yr cliff)
- [ ] Exercise price = 409A FMV per share
- [ ] Vesting commencement = date services began (can predate grant date)

### Early Exercise & 83(b) Elections

- [ ] Provide each optionee with early exercise package:
  - Pre-filled 83(b) election form
  - Certified mail instructions
  - Payment instructions for exercise price
- [ ] Each optionee exercises options immediately upon grant
- [ ] Each optionee files **83(b) election via certified mail within 30 days** of exercise
- [ ] Collect proof of 83(b) filing from each optionee within 35 days
- [ ] Record all grants and exercises in cap table / stock ledger

### Pool Status After First Grants

| Metric | Shares |
|--------|--------|
| Total Class B pool | 1,500,000 |
| Granted (Dana + Paul) | 200,000 (13.3% of pool) |
| Reserved for seed round | 500,000 |
| Available for future grants | 800,000 (8% fully diluted) |

---

## Step 9: PTL S-Corp Election (Overdue)

**This is for Present Tense Labs, not TMS — but it's blocking.**

- [ ] File **IRS Form 2553** with late election relief
  - Include reasonable cause statement (e.g., "newly formed corporation, founders were completing formation paperwork")
  - Original deadline was March 15, 2026
- [ ] Both founders sign and consent on the form
- [ ] Send via **certified mail** — keep the receipt
- [ ] Set up minimal founder payroll ($1K/month per founder) via Gusto or Rippling
  - Required for S-Corp reasonable compensation
  - Establishes W-2 employment relationship
- [ ] Notify accountant of S-Corp election (Form 1120-S instead of 1120)

---

## Step 10: State Compliance & Insurance

**Target: within 30 days of operating (April 2026).**

- [ ] Confirm Delaware **franchise tax** registration (both PTL and TMS)
- [ ] **Foreign qualification in New York** — required because TMS is a DE corp operating from NY
  - File Application for Authority with NY Dept of State (~$250 filing fee)
  - Appoint registered agent in NY
- [ ] State tax registrations in operating states
- [ ] Set up **monthly financial reporting** process (Bylaws Section 7.8 — due within 10 business days of month end)
- [ ] **D&O liability insurance** for both PTL and TMS
- [ ] **Key-person life and disability insurance** on both founders
- [ ] Each founder designates **incapacity proxy** and **independent tiebreaker** (per Founders' Agreement, within 30 days)

---

## Step 11: Pre-Seed / Seed Preparation (Q2-Q3 2026)

- [ ] Prepare investor data room:
  - Cap table (from Carta/Pulley)
  - All signed formation docs
  - Financials
  - Product metrics / traction
- [ ] Amend TMS Certificate of Incorporation to increase authorized Class B shares if needed for investor option pool requirements
- [ ] Draft term sheet framework (non-participating preferred, option holder carve-outs)
- [ ] Engage startup counsel for fundraising documentation

---

## Quick Reference: Execution Order

```
Week 1 (now)
  ├── Sign Board Consent + Bylaws
  ├── Open bank account
  └── Execute Stock Subscription Agreements + deposit $85

Week 2
  ├── Set up cap table tool (Carta or Pulley)
  ├── Sign PTL-TMS intercompany agreements (IP Assignment, IP License, Services)
  └── Confirm EIP adoption, finalize grant templates

Week 3
  ├── Commission 409A valuation
  └── File PTL Form 2553 (late S-Corp election)

Week 4-5 (upon 409A completion)
  ├── Execute contractor agreements (Dana, Paul)
  ├── Issue option grants
  └── Early exercise + 83(b) elections

Month 2
  ├── NY foreign qualification
  ├── Delaware franchise tax confirmation
  ├── D&O and key-person insurance
  └── Monthly financial reporting begins
```
