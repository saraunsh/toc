def checkKey(dict, key): 
    if key in dict.keys(): 
        return(1)
    else: 
        return(0) 

dist1={}                                        #To accept the NFA
transition_list=[]
number_state=0
number_state=int(input("Enter the number of the states == "))
for i in range(0,number_state):
    name_state=input("Enter the name of state == ")
    number_trans=int(input("Enter the number of transitions from "+name_state+" == "))
    dist2={}
    for j in range(0,number_trans):
        name_trans=input("Enter the transition == ")
        if name_trans not in transition_list:
            transition_list.append(name_trans) 
        name_final_state=input("Enter the final state == ")
        if(checkKey(dist2,name_trans)):
            dist2[name_trans]=dist2[name_trans]+name_final_state
        else:
            dist2[name_trans]=name_final_state
    dist1[name_state]=dist2

print(dist1)                                #create the final list
final_dist={}
dist2={}
split_key=[]
key=list(dist1.keys())[0]
temp_key=""
new_key=""
queue=[]
final_dist[key]=dist1[key]
for val in transition_list:
    if(checkKey(dist1[key],val)):
        if(checkKey(dist1,dist1[key][val])==0):
            temp_key=dist1[key][val]
            queue.append(temp_key);

while queue:
    key=queue.pop(0)
    dist2={}
    split_key=list(key)
    for trans_val in transition_list:
        new_key=""
        for temp_key in split_key:
            if(checkKey(dist1[temp_key],trans_val)):
                new_key=new_key+dist1[temp_key][trans_val]
                if not checkKey(final_dist,new_key):
                    if new_key not in queue:
                        queue.append(new_key)
        dist2[trans_val]=new_key

    final_dist[key]=dist2    
    print(queue)        
print(final_dist)
