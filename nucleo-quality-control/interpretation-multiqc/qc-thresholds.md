# QC thresholds

### CMO-CH QC thresholds

| Metric                      | PASS                                   | WARNING                            | FAIL                     |
| --------------------------- | -------------------------------------- | ---------------------------------- | ------------------------ |
| Insert size                 | <p>>=150</p><p>&#x3C;= 250</p>         | <p>>251<br>&#x3C;149</p>           | <p>&#x3C;100<br>>300</p> |
| Number of reads             | <p>>= 35000000<br>&#x3C;= 40000000</p> | <p>&#x3C;20000000<br>>40000000</p> | -                        |
| Pool input (captureInputNg) | >= 250                                 | <p>&#x3C; 240<br>>260<br></p>      | -                        |
| On target                   | >= 0.3                                 | < 0.20                             | -                        |
| On bait                     | >= 0.3                                 | < 0.20                             | -                        |
| On near                     | >= 0.40                                | < 0.40                             | -                        |
