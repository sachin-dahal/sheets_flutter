function doGet() {

  var sheet = SpreadsheetApp.getActiveSheet();
  var data = sheet.getDataRange().getValues();

  var allData = []

  for (var i = 1; i < dataFromSheet.length; i++) {
    var row = data[i];
    var element = {}

    element['movie'] = row[1];
    element['date'] = row[2];
    element['rating'] = row[3];

    allData.push(element);
  }

  return ContentService
  .createTextOutput(JSON.stringify(allData))
  .setMimeType(ContentService.MimeType.JSON);
}
