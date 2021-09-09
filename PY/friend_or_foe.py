# Make a program that filters a list of strings and returns a list with only your friends name in it.
# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...

def friend(list):
    friend_list = []
    for name in list:
        if len(name) == 4:
            friend_list.append(name)
    return friend_list


# yea? nay?
expected1 = ["Ryan", "Mark"]
print(friend(["Ryan", "Kieran", "Mark",]) == expected1)
expected2 = ["Ryan"]
print(friend(["Ryan", "Jimmy", "123", "4", "Cool Man"]) == expected2)
expected3 = ["Jimm", "Cari", "aret"]
print(friend(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"]) == expected3)