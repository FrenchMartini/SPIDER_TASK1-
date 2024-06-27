def FCFS(bursttime):
    print("Process          Burst Time          Waiting time            Turn around time ")
    i=0
    waiting_time=0
    turnaround_time=0
    lis1=[]
    lis2=[]
    while (i<len(bursttime)):
        #Turn around time is basically the time taken to complete the process after the arrival time 
        turnaround_time+=bursttime[i]
        print("  P"+str(i+1)+"\t\t\t"+ str(bursttime[i])+"\t\t\t"+str(waiting_time)+"\t\t\t"+str(turnaround_time) )
        lis1.append(waiting_time)
        lis2.append(turnaround_time)
        #Waiting time being the time each process has to wait untill it gets executed
        waiting_time+=bursttime[i]
        i+=1
    return(lis1, lis2)
numberofprocess = int(input("Enter number of proceses : "))
burst_time = []
#Taking input for the burst times of each processes 
for i in range(numberofprocess):
    burst_time.append(int(input("Enter the burst time for process" + str(i+1) + ":")))
times = FCFS(burst_time)
#Displaying the obtained results 
print("Average waiting time : "+str(sum(times[0])/len(times[0])))
print("Average turn arount : "+str(sum(times[1])/len(times[1])))

#This above python code is a simple implementaiton of a FIFO process scheduling , which is based on the queue data structure 
#Here we asssume the arrival time is zero for all the processes 



    

