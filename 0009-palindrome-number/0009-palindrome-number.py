class Solution:
    def isPalindrome(self, x: int) -> bool:
        check = []

        t = str(x)

        if len(t) % 2 == 0:
            for i in range(len(t) // 2):
                if t[i] == t[len(t) - i - 1]:
                    check.append(0)
                else:
                    check.append(1)
        else:
            for i in range((len(t) - 1) // 2):
                if t[i] == t[len(t) - i - 1]:
                    check.append(0)
                else:
                    check.append(1) 


        if sum(check) == 0:
            return True
        else:
            return False