function addRow() {
  var sheet = SpreadsheetApp.getActiveSheet();

  var lastNumber = parseInt(sheet.getLastRow());
  Logger.log(lastNumber);

  // sheet.appendRow([lastNumber, "Random Movie name", 2021, 9.2]);
}