// Name: Generate-KH-Account
// Snippet: ;acc

import "@johnlindquist/kit";

const accountDB = await db({ accountNumber: 1 });

await accountDB.read();

accountDB.data.accountNumber++;
await accountDB.write();

const { accountNumber } = accountDB.data;

await keyboard.type(`joel+${accountNumber}@kindhealth.co`);
