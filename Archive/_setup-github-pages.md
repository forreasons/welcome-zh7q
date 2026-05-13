# One-time setup: GitHub Pages

Click-by-click instructions to take this folder live as a public website. You only do this once. After that, you double-click `_deploy-to-github-pages.command` whenever you want to push updates.

Time to expect: 10-15 minutes the first time, mostly waiting on GitHub's verification screens.

---

## URL plan — what the live address will look like

You have two paths. The free path lands you on a `github.io` URL. The custom-domain path attaches a name like `hassanfamily.com` on top. Either works for the NFC tag; you can start free and add a custom domain later without redoing the tag if you want.

### Recommended repo slug: `hassanfamily`

Rename the repo (see Step 2) from `hassanfamily` to `hassanfamily`. The free URL becomes:

```
https://thehassanfamily.com
```

So if your username is `zunera-h`, the live URL is `https://zunera-h.github.io/hassanfamily/`. Pick a clean username at signup since it appears on the entry card as the fallback URL.

### Custom domain options — approximate annual costs

Check availability yourself tonight on Namecheap, Cloudflare, or Porkbun. Approximate yearly costs at registrars in May 2026, before promos:

| Domain | Annual cost | Note |
|---|---|---|
| `hassanfamily.com` | $12 to $15 | Cleanest read on the printed card. Most likely already taken. Check first. |
| `hassanfamily.house` | $40 to $60 | Reads novel on a card, but the `.house` TLD costs four times `.com`. |
| `hassanfamily.casa` | $4 to $10 first year, $20+ on renewal | Cheap intro, jumps on renewal. Looks fine on the card. |
| `hassanfamily.family` | $30 to $50 | Long TLD, slightly weaker visual on the card. |
| `hassan.family` | $30 to $50 if available | Shorter, reads cleaner than `hassanfamily.family`. |
| `thehassans.com` | $12 to $15 | Strong fallback if `hassanfamily.com` is taken. |

Recommendation: try `hassanfamily.com` first. If taken, fall back to `thehassans.com` or `hassanfamily.casa` (cheap year one). Avoid `.house` and `.family` for cost-to-look ratio.

Cloudflare Registrar sells at wholesale (no markup) and is the cheapest renewal path if you want to avoid the year-two price hike most registrars charge. Namecheap is the easiest UI if you've never bought a domain.

---

## Step 1 — Create a free GitHub account (skip if you already have one)

1. Open Chrome and go to `https://github.com/signup`
2. Enter your email (`forreasonsandstuff@gmail.com` or another one you check)
3. Pick a password
4. Pick a username — this becomes part of your live URL. Suggestion: `zunera-h` or `hassanfamily`. Whatever you pick, write it down — you will need it in Step 4.
5. Verify the email when GitHub sends you the code.
6. On the "Welcome" / personalization screens, click "Skip personalization" or pick any defaults. You do not need any paid features.

---

## Step 2 — Create the repository on GitHub

1. Once logged in, click the green "New" button on the left, OR go to `https://github.com/new`
2. Repository name: type `hassanfamily` (this is what shows up in the live URL, so keep it lowercase and clean)
3. Description (optional): `Guest welcome page for the Hassan home — opens from NFC tag at the entry`
4. Set visibility to **Public**. (Pages requires Public on free accounts, and the URL is hard to guess anyway. Privacy tradeoffs are covered in `README.md`.)
5. Do NOT check "Add a README" — this folder already has one.
6. Do NOT add a .gitignore or license through the GitHub form — already in the folder.
7. Click the green "Create repository" button.
8. The next page shows commands. Leave this tab open — you'll copy one URL from it in Step 4.

---

## Step 3 — Open Terminal on your Mac

1. Press `Cmd + Space` to open Spotlight
2. Type `Terminal` and press Return
3. A Terminal window opens. Paste this command (copy the whole line, including the quotes) and press Return:

```
cd "/Users/zunerahassan/Documents/Claude Cowork Folder/Side Projects/House Website"
```

The line in Terminal should change to show you are inside the House Website folder.

---

## Step 4 — Connect the local folder to your new GitHub repo

The folder already has a git repository inside it with the first commit ready to go. You just need to tell git where on GitHub to push.

On the GitHub tab you left open in Step 2, you'll see a section called "...or push an existing repository from the command line." Below that is a URL that looks like:

```
https://github.com/YOUR-USERNAME/hassanfamily.git
```

1. Click the small copy-icon next to that URL on GitHub to copy it.
2. In Terminal, type this (paste the URL where shown):

```
git remote add origin <PASTE THE URL HERE>
```

Press Return.

3. Then run:

```
git push -u origin main
```

Press Return.

4. Terminal will ask for your GitHub username and password. GitHub does NOT accept your regular password here anymore — it wants a "personal access token." If prompted:
   - Go to `https://github.com/settings/tokens/new`
   - Note: `hassanfamily deploy`
   - Expiration: `No expiration` (so you don't have to redo this)
   - Scopes: check the `repo` box
   - Scroll down, click green "Generate token"
   - **Copy the token immediately** — GitHub will only show it once. Paste it somewhere safe (your password manager, or a note for now).
   - Back in Terminal, paste this token when it asks for the password. The username is your GitHub username from Step 1.

If the push succeeds, you'll see lines ending with `Branch 'main' set up to track 'origin/main'.`

---

## Step 5 — Turn on GitHub Pages

1. In Chrome, go to your repository: `https://github.com/YOUR-USERNAME/hassanfamily`
2. Click the "Settings" tab (gear icon) at the top right of the repo page.
3. In the left sidebar of Settings, click "Pages."
4. Under "Build and deployment":
   - Source: leave on "Deploy from a branch"
   - Branch: change to `main`, folder stays as `/ (root)`, click "Save"
5. The page now shows a yellow notice that your site is being built. Wait about 1-2 minutes.
6. Refresh the page. The yellow notice turns green and shows your live URL — something like:

```
https://YOUR-USERNAME.github.io/hassanfamily/
```

That URL is permanent. This is the URL you encode on the NFC tag.

---

## Step 6 — Test the live URL

1. Copy the URL from the green box.
2. Open it in Chrome and check the page renders.
3. Open it on your iPhone (text it to yourself, or AirDrop the URL) and check it looks right on the phone.

If it looks good, the site is live.

---

## After this — every update is one click

Once setup is done, anytime you change `index.html` or update content, you just:

1. Make the edit in the file (or have Claude do it)
2. Double-click `_deploy-to-github-pages.command` in this folder
3. Wait 1-2 minutes
4. The live URL shows the new version

No Terminal needed after this first setup.

---

## If something breaks

- **First time push asks for password and your real password fails:** GitHub requires a personal access token. Go back to Step 4.4.
- **Push fails with "permission denied":** the personal access token expired. Generate a new one at `https://github.com/settings/tokens/new` with the `repo` scope.
- **Live URL shows a 404:** GitHub Pages takes 1-2 minutes the first time. Wait, then refresh.
- **The `.command` script says "no remote configured":** Step 4 didn't complete. Re-run `git remote add origin <URL>` in Terminal.

---

## Optional — custom domain attach (numbered steps)

If you bought `hassanfamily.com` (or any of the alternatives above) and want to attach it on top of the `github.io` URL:

1. Open your repo: `https://github.com/<your-username>/hassanfamily`. Click "Settings" then "Pages" in the left sidebar.
2. Scroll to "Custom domain." Type `hassanfamily.com` (or your chosen domain) into the box and click "Save." GitHub will run a check and show a yellow notice until DNS is configured.
3. Open a second tab and log into your domain registrar (Namecheap, Cloudflare, Porkbun, wherever you bought it). Find the DNS settings for `hassanfamily.com`.
4. Add four A records pointing the apex (root) to GitHub Pages. Host = `@`, Type = `A`, Value = each of these on its own record:
   - `185.199.108.153`
   - `185.199.109.153`
   - `185.199.110.153`
   - `185.199.111.153`
5. Add one CNAME record for the `www` subdomain. Host = `www`, Type = `CNAME`, Value = `<your-username>.github.io.` (trailing dot included if your registrar shows one).
6. Save the DNS changes. Propagation usually takes 10 to 30 minutes; can take up to 24 hours in rare cases.
7. Back in GitHub Settings > Pages, wait for the green check next to the custom domain. Then tick the "Enforce HTTPS" checkbox. The live URL is now `https://hassanfamily.com/` and `https://www.hassanfamily.com/` both redirect to it.

The `github.io` URL keeps working as a fallback automatically, so the NFC tag and printed QR can encode whichever URL you prefer at the moment. Pick the custom domain on the entry card if you have it — it reads cleaner in print.

### Which URL to encode on the entry card

- If custom domain is ready when you print: encode `https://hassanfamily.com/` (or your chosen domain).
- If not: encode `https://<your-username>.github.io/hassanfamily/` and re-encode the NFC sticker later when the domain attaches. The NFC sticker is re-writable up until you choose to lock it.
- The printed QR is harder to swap; print it pointing at the URL you plan to keep for the long term.
