Map<String,Object> inputs = new Map<String,Object>();
inputs.put('AccountId', '001Dn00000OhtfLIAR');
inputs.put('AccountName', 'Soft Innovas');
inputs.put('AccountOwnerId', '005Dn000003wGsTIAU');
inputs.put('CreatedByName', 'Nara Issa');

Flow.Interview invokeFlow = new Flow.Interview.X17_Account_Auto_Launch_Flow(inputs);
invokeFlow.start();