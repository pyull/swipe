from swipe import Swipe

input()
print('hoge')
P = Swipe('test.wav', pmin=75, pmax=800, st=.5, dt=0.01, mel=False)
print('hoge')
for (t, pitch) in P:
    print('hoge')
    if pitch < 700:  # hz
        print(t, pitch)