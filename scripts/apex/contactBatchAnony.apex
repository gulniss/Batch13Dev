ContactSendKycBatch ckyc = new ContactSendKycBatch();
Database.executeBatch(ckyc, 50); // default number is 200.