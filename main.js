function main() {
  console.log('test');
}

class Sample {
  constructor() {
    const Ss = SpreadsheetApp.getActiveSpreadsheet();
    this.sampleSheet = Ss.getSheetByName("sample");
  }

  obtainScores() {
    return this.sampleSheet.getRange("A1:D4").getValues();
  }

  obtainStudentScore(name) {
    const scores = this.obtainScores();

    for (let i=0; i<scores.length; i++) {
      if (scores[i][0] === name) {
        return scores[i];
      }
    }

    throw "not found user";
  }
}
