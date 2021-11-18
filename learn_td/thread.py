import threading
import time
n=0

lock=threading.Lock()
def f1():
    for i in range(10):
        print("in f1",i)
        time.sleep(0.1)

def f2():
    for i in range(15):
        print("in f2",i)
        time.sleep(0.2)

def f3():
    global n # 对全局变量进行操作
    for i in range(1000000):
        lock.acquire() #获取锁， 在编辑全局变量前
        n+=1
        n-=1
        lock.release() # 释放锁 ，在编辑变量后释放
    print(n)

if __name__=='__main__':
    th1=threading.Thread(target=f1)
    th2 = threading.Thread(target=f2)
    th1.start()
    th2.start()
    th1.join() #线程阻塞 main thread 在子线程结束后结束
    th2.join()

    start_time=time.time()
    th3=threading.Thread(target=f3)
    th4=threading.Thread(target=f3)
    th3.start()
    th4.start()
    th3.join()
    th4.join()
    print(time.time()-start_time)


