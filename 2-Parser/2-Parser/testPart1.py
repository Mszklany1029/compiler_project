import os
import pexpect
import sys 

def prRed(skk): print("\033[91m{}\033[00m" .format(skk))

def prGreen(skk): print("\033[92m{}\033[00m" .format(skk))

def runFiles(folder, expected):
    total = 0;
    correct = 0;

    for filename in filter(lambda f: f.endswith(".tig"), os.listdir(folder)):
        total += 1;

        print(filename)
        cmd = "Parse.parse(\"../testcases/" + filename + "\");"
        child.send(cmd + "\n")
        try:
            res = child.expect_exact(["Error", "error", "val it = () : unit"], timeout=2)
            if res in expected:
                correct += 1;
                child.expect_exact("-");
                prGreen("\tCorrect");
            else:
                child.expect_exact("-");
                prRed("\tIncorrect");
        except pexpect.TIMEOUT:
                        prRed("\tTimeout");
    return (correct, total)

child = pexpect.spawn("sml")

# wait for sml to be ready
child.expect("\n\-")

# compile
child.send("CM.make \"sources.cm\";\n");
child.expect("\n\-")

(c1, t1) = runFiles("./testcases/parse/", [2]);
(c2, t2) = runFiles("./testcases/noparse/", [0, 1]);

print(str(c1 + c2) + "/" + str(t1 + t2))

child.close()

