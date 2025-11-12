# Assignment M000

## 1. Personal Details
* **Name:** Kagabo
* **Email:** [Your Email Here]

## 2. GitHub Repository URL
* [[You will paste your URL here in Step 3]](https://github.com/kagabo183/m000-assignment)

## 3. Description of your work
I successfully set up the Aiken development environment, installed the VS Code extension, and created a new project. I wrote 6 passing tests in the `validators/placeholder.ak` file to demonstrate boolean, integer, and comparison operations, and included a test with a trace message.

## 4. What you learned
* I learned how to install Rust, the C++ Build Tools, and use `cargo` to install Aiken.
* I learned the `aiken new owner/project` command to create a new project.
* I learned how to write unit tests in Aiken using `test_` functions.
* I learned how to run the test suite using the `aiken check` command.
* I learned the basic syntax for assertions (`==`), booleans (`True`, `!`), and tracing (`trace()`).

## 5. Challenges and solutions
* **Challenge:** My first installation of Aiken failed with a `linker 'link.exe' not found` error.
* **Solution:** I fixed this by running the Visual Studio Installer and adding the "Desktop development with C++" workload, then restarting my computer.
* **Challenge:** My tests were not running and I saw `todo` warnings.
* **Solution:** I realized I hadn't saved the file after deleting the placeholder content and pasting in the new test code. Saving the file fixed it.

## 6. Understanding of UTXO vs eUTxO

### UTXO (Unspent Transaction Output)
* **Analogy:** Think of it like **physical cash**.
* **How it works:** Your wallet holds a list of "unspent notes" (UTXOs). If you have a $20 note (a UTXO) and want to buy a $5 item, you must spend the **entire** $20 note. The transaction creates two new notes: one for $5 to the seller and one for $15 (your "change") back to you. The original $20 note is destroyed.
* **Limitation:** It's simple. The only "logic" is checking if you have a valid signature to spend it.

### eUTxO (Extended UTXO)
* **Analogy:** Think of it like **cash locked in a "smart" puzzle box**.
* **How it works:** It's the same as UTXO (you still spend entire notes and get change), but it's "Extended" with two key features:
    1.  **Datum (State):** The "note" (eUTxO) can hold data, like the state of a contract (e.g., "This NFT is for sale for 50 Ada").
    2.  **Validator (Logic):** The "note" is locked by a smart contract (a validator script, written in Aiken).
* **To Spend:** To spend this locked note, you must provide a "key" (called a **Redeemer**) that satisfies the validator's logic. This "lock and key" system allows for complex applications.
