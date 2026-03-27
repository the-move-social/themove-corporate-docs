# Post-Formation Checklist — The Move Social Inc.

**Updated:** March 27, 2026
**Entity:** The Move Social Inc. — Delaware C-Corp (dual-class)
**DE File Number:** 10540347
**Founders:** Altin Lecaj (CEO) / Eric Garcia (CTO)

---

## What's Done

- [x] Certificate of Incorporation filed with Delaware (March 10, 2026) — file number 10540347
- [x] Amended and Restated Certificate of Incorporation adopted by written consent of all directors under DGCL §§ 241/245, filed March 18, 2026 (before any stock payment received)
  - Dual-class: 8,500,000 Class A Common (voting, $0.00001 par) + 1,500,000 Class B Common (non-voting, $0.00001 par)
  - Pari passu economic rights — no dividend/distribution on one class without equal on the other
  - Director + officer liability protection (Article VII)
  - Full indemnification with expense advancement (Article VIII)
  - Corporate opportunities renouncement for directors/officers who serve any other entity (Article VI)
  - Exclusive forum: DE Court of Chancery for internal claims; federal courts for Securities Act of 1933 claims (Article IX)
- [x] EIN received from IRS (March 18, 2026) — CP 575 A in `formation/`
- [x] Founders' Agreement signed
- [x] Registered agent: Northwest Registered Agent Service, Inc. — 8 The Green, Suite B, Dover, DE 19901

---

## Step 1: Adopt Bylaws & Board Resolutions — COMPLETE

**Completed at the First Board Meeting on March 27, 2026.**

- [x] Both founders attended the **First Board Meeting** (`board-minutes/2026-03-27-board-meeting.md`)
  - Adopted Bylaws, appointed officers, authorized stock issuance, adopted EIP, approved Dana Vines' restricted stock grant, and more (Resolutions 1-14)
- [x] Both founders sign the **Bylaws** (`bylaws.md`)
  - Consensus voting, dual-authorization for spend > $500, dispute resolution tied to Founders' Agreement
- [ ] Store signed copies in `signed/`

> The Board Minutes from March 27, 2026 are the master resolution — they authorize stock issuance (Resolution 6), adopt the EIP (Resolution 7), appoint officers (Resolution 3), and authorize banking (Resolution 10). You cannot issue stock without them.

---

## Step 2: Open Business Bank Account

**Required before stock can be issued (founders need somewhere to deposit purchase funds).**

- [ ] Open TMS bank account at Mercury, Relay, or similar startup-friendly bank
  - Bring: EIN confirmation (CP 575 A in `formation/`), A&R Certificate of Incorporation (`signed/amended-and-restated-certificate-of-incorporation.pdf`), Board Meeting Minutes, Bylaws
  - Set up **dual authorization** for transactions > $500 (required by Bylaws Section 7.5)
- [ ] Both founders added as authorized signers
- [ ] Set up online banking access for both CEO and CTO

---

## Step 3: Issue Founder Stock

**This is how you and Eric become shareholders. Do this immediately after the bank account is open.**

The A&R Certificate confirms no stock has been issued yet ("adopted before payment has been received for any stock"). The Board Meeting (Resolution 6) authorizes the issuance below.

### How Stock Issuance Works

1. **Sign the Stock Subscription Agreements** — The legal contract where each founder agrees to buy shares
2. **Pay for the shares** — Deposit the purchase price into the TMS bank account
3. **Company records the issuance** — Update the stock ledger
4. **You're now shareholders** — You each own 4,250,000 Class A shares (50/50)

### Checklist

- [ ] Both founders execute **Stock Subscription Agreement** (`stock-subscription-agreement.md`)

  | Founder | Shares | Class | Price | Total |
  |---------|--------|-------|-------|-------|
  | Altin Lecaj | 4,250,000 | Class A Common (Voting) | $0.00001/share | $42.50 |
  | Eric Garcia | 4,250,000 | Class A Common (Voting) | $0.00001/share | $42.50 |

- [ ] Each founder deposits **$42.50** into the TMS bank account (check, wire, or transfer)
  - Keep the receipt / confirmation — this is your proof of payment
  - Total: $85.00 for 8,500,000 shares
- [ ] Record issuance in the **stock ledger**
  - If using a cap table tool (Carta, Pulley, AngelList): enter the issuance there
  - If not yet set up: create a simple spreadsheet with: shareholder name, share class, number of shares, price paid, date issued, certificate number (if any)
- [ ] Issue stock certificates (optional — uncertificated shares are fine per Bylaws Section 5.3)
  - If issuing certificates: both officers sign, clearly label "Class A Common Stock"
  - If uncertificated: send written notice to each shareholder confirming their shares

> **Note:** TMS founder shares have **reverse vesting** per the Founders' Agreement: 25% vested immediately, 75% vesting monthly over 36 months. Each founder must file an **83(b) election within 30 days** of issuance.

### Key A&R Certificate provisions governing your shares

- **Voting:** 1 vote per Class A share on all matters (A&R Cert § 4.2)
- **Economic rights:** Identical to Class B on a per-share pari passu basis (§ 4.3)
- **Dividends:** Equal per-share; no dividend on one class without equal on the other (§ 4.4)
- **Liquidation:** Ratable distribution regardless of class, after debts and any preferred (§ 4.5)
- **No conversion:** Class A cannot convert to Class B and vice versa (§ 4.6)
- **Board control:** Majority of Class A elects/removes directors; Class B has no board vote (§ 5.2)

---

## Step 4: Set Up Stock Ledger / Cap Table

- [ ] Choose a cap table tool: **Carta**, **Pulley**, or **AngelList Stack**
  - Carta: industry standard, $0 for startups under a certain size
  - Pulley: founder-friendly, free tier available
  - Either works — pick one and stick with it
- [ ] Record the founder stock issuance (Step 3)
- [ ] Record the 1,500,000 Class B shares reserved for the Equity Incentive Plan
- [ ] Upload signed formation docs: A&R Certificate, Board Meeting Minutes, Bylaws, Stock Subscription Agreements
- [ ] Both CEO and CTO have admin access
- [ ] Bylaws Section 7.10 requires quarterly reconciliation signed by both founders

---

## Step 5: Adopt Equity Incentive Plan & Contractor Templates

**Sets up the infrastructure to grant options to Dana and future team members.**

- [ ] Confirm **Equity Incentive Plan** (`equity-incentive-plan.md`) is adopted (authorized by Board Meeting Resolution 7)
  - Pool: 1,500,000 Class B shares (non-voting per A&R Cert § 4.2, equal economic rights per § 4.3)
  - All grants as NSOs (Non-Qualified Stock Options)
  - Early-exercise provisions included
- [ ] Finalize **Stock Option Grant Agreement** template (`stock-option-grant-agreement.md`)
- [ ] Finalize **Independent Contractor Agreement** template (`independent-contractor-agreement.md`)
  - Equity-only compensation, confidentiality + invention assignment, no non-compete

---

## Step 6: Execute Contractor Agreement & Restricted Stock Grant — Dana Vines

**Dana's grant is restricted stock at par value — no 409A required. Can execute as soon as Steps 1-5 are complete.**

### Contractor Agreement

- [ ] Execute Independent Contractor Agreement — **Dana Vines** (VP of Sales)

### Restricted Stock Purchase

- [ ] Execute Restricted Stock Purchase Agreement — **Dana Vines** (400,000 Class B at $0.00001/share, $4.00 total)
- [ ] Dana deposits **$4.00** purchase price
- [ ] Vesting commencement: **[start date TBD — to be agreed with Dana]**
- [ ] Board approval already granted (Board Meeting Resolution 8, March 27, 2026)

### 83(b) Election — **HARD DEADLINE: 30 days from Purchase Date**

- [ ] Provide Dana with 83(b) election package:
  - Pre-filled 83(b) election form
  - Certified mail instructions
- [ ] Dana files **83(b) election via certified mail within 30 days** of purchase
- [ ] Collect proof of 83(b) filing from Dana within 35 days
- [ ] Record grant in cap table / stock ledger

### Pool Status After First Grants

| Metric | Shares |
|--------|--------|
| Total Class B pool (A&R Cert § 4.1) | 1,500,000 |
| Approved, pending grant (Dana Vines) | 400,000 (26.7% of pool) |
| Reserved for seed round | 500,000 |
| Available for future grants | 600,000 (6% fully diluted) |

---

## Step 7: PTL S-Corp Election (Overdue)

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

## Step 8: State Compliance & Insurance

**Target: within 30 days of operating (April 2026).**

Only file in states where you have nexus (employees, office, or significant in-person sales). Right now that's just **Delaware** (state of incorporation) and **New York** (operating address). Contractors in other states do not create foreign qualification nexus.

- [ ] Confirm Delaware **franchise tax** registration (both PTL and TMS)
- [ ] **Foreign qualification in New York** — required because TMS is a DE corp operating from NY
  - File Application for Authority with NY Dept of State (~$250 filing fee)
  - Appoint registered agent in NY (Northwest can serve in NY as well)
- [ ] NY state tax registration
- [ ] Set up **monthly financial reporting** process (Bylaws Section 7.8 — due within 10 business days of month end)
- [ ] **D&O liability insurance** for both PTL and TMS
  - The A&R Certificate (Articles VII-VIII) provides liability protection and indemnification for directors and officers, but D&O insurance covers the gap (defense costs, claims the corporation can't afford to indemnify, claims outside DGCL protection)
- [ ] **Key-person life and disability insurance** on both founders
- [ ] Each founder designates **incapacity proxy** and **independent tiebreaker** (per Founders' Agreement, within 30 days)

---

## Step 9: Pre-Seed / Seed Preparation (Q2-Q3 2026)

- [ ] Prepare investor data room:
  - Cap table (from Carta/Pulley)
  - All signed formation docs (A&R Certificate, Board Meeting Minutes, Bylaws, Founders' Agreement, Stock Subscription Agreements)
  - Financials
  - Product metrics / traction
- [ ] Amend TMS Certificate of Incorporation to increase authorized Class B shares if needed for investor option pool requirements (requires Class A stockholder consent per A&R Cert Article X)
- [ ] Draft term sheet framework (non-participating preferred, option holder carve-outs)
- [ ] Engage startup counsel for fundraising documentation
  - Note: A&R Certificate Article IX already designates federal courts as exclusive forum for Securities Act of 1933 claims — this is investor-friendly and standard for VC-backed companies

---

## A&R Certificate of Incorporation — Key Provisions Reference

For quick reference, here's what the signed A&R cert (filed March 18, 2026) establishes:

| Article | Provision | What It Means |
|---------|-----------|---------------|
| IV § 4.1 | 10M authorized shares (8.5M Class A + 1.5M Class B) | Total share budget; Class B reserved for EIP |
| IV § 4.2 | Class A: 1 vote/share; Class B: no votes | Founders control all decisions through Class A |
| IV § 4.3 | Pari passu economic rights | Class B holders get equal dividends/distributions per share |
| IV § 4.4 | Equal dividend requirement | Cannot pay one class without paying the other equally |
| IV § 4.5 | Ratable liquidation | All common shares share equally in a sale/wind-down |
| IV § 4.6 | No conversion | Classes are permanent — no A↔B conversion |
| V § 5.2 | Class A elects/removes directors | Class B has zero board representation |
| VI | Corporate opportunities renouncement | Directors/officers can serve other entities freely |
| VII | Director + officer liability shield | No personal liability for breach of fiduciary duty |
| VIII | Indemnification + expense advancement | Company pays legal costs upfront; repay only if not entitled |
| IX | Exclusive forum (DE Chancery + federal for Securities Act) | Prevents forum shopping; standard for VC fundraising |
| X | Amendment reservation | Can amend the cert via DGCL procedures |

---

## Quick Reference: Execution Order

```
Week 1 — COMPLETE (March 27, 2026)
  ├── First Board Meeting — all initial resolutions passed
  └── Bylaws adopted

Week 2
  ├── Open bank account
  ├── Execute Stock Subscription Agreements + deposit $85
  └── Set up cap table tool (Carta or Pulley)

Week 3
  ├── Confirm EIP adoption, finalize grant templates
  ├── Execute contractor agreement + restricted stock grant (Dana, start date TBD)
  ├── Dana files 83(b) election within 30 days
  └── File PTL Form 2553 (late S-Corp election)

Month 2
  ├── NY foreign qualification
  ├── Delaware franchise tax confirmation
  ├── D&O and key-person insurance
  └── Monthly financial reporting begins
```
