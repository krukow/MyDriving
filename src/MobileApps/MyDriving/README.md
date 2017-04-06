# Building and running tests
In the `scripts` directory there are two scripts:
`scripts/prepare.sh` and `scripts/run-prepared.sh`.

You use them as follows:

```bash
➜  MyDriving git:(master) ✗ ./scripts/prepare.sh ~/tmp/uitest-artifacts
Preparing artifacts dir /Users/krukow/tmp/uitest-artifacts

➜  MyDriving git:(master) ✗ ./scripts/run-prepared.sh ~/tmp/uitest-artifacts 7e57ad4c
Running tests on devices 7e57ad4c from prepared dir /Users/krukow/tmp/uitest-artifacts
Validating arguments... done.
Creating new test run... done.
Validating application file... done.
- Uploading files...
...

```
