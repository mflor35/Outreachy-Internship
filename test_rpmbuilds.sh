#! /bin/bash
# Helps test the different rpmbuilds

ARCH="x86_64"
RPMSRC="$HOME/kernel/kernel-4.7.0-0.rc3.git1.1.local.fc25.src.rpm"
DIR_LOGS="$HOME/Documents/Outreachy-Internship/rpmbuild-logs/"

i=0
SECONDS=0
rpmbuild --target $ARCH --without vdso --without bootwrapper --without debug --without debuginfo --without perf --without tools --rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS
echo "$(($duration / 60)) min $(($duration % 60)) s"
if [ $? -eq 0 ]; then
    echo "Successful: " $i >> $DIR_LOGS/summary
    echo "Duration: " $duration >> $DIR_LOGS/summary
else
    echo "Failed: " $i     >> $DIR_LOGS/summary
    echo "Duration: " $duration >> $DIR_LOGS/summary
fi
i=$((i+1))

                                                                                                                                                                      
                                                                                                                                                                   
SECONDS=0                                                                                                                                                             
rpmbuild --target $ARCH --with pae --without vdso --without bootwrapper --without debug --without debuginfo --without perf --without tools --rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS                                                                                                                                                     
echo "$(($duration / 60)) min $(($duration % 60)) s"                                                                                                                  
if [ $? -eq 0 ]; then                                                                                                                                                 
    echo "Successful: " $i >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
else                                                                                                                                                                  
    echo "Failed: " $i     >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
fi                                                                                                                                                                    
i=$((i+1))                                                                                                                                                            

                                                                                                                                                                      
                                                                                                                                                                   
SECONDS=0
rpmbuild --target $ARCH --with dbonly --without bootwrapper --without debug --without debuginfo --without perf --without tools --rebuild $RPMSRC                 > $DIR_LOGS/"$i".log
duration=$SECONDS                                                                                                                                                     
echo "$(($duration / 60)) min $(($duration % 60)) s"                                                                                                                  
if [ $? -eq 0 ]; then                                                                                                                                                 
    echo "Successful: " $i >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
else                                                                                                                                                                  
    echo "Failed: " $i     >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
fi                                                                                                                                                                    
i=$((i+1))                                                                                                                                                            

                                                                                                                                                                      
                                                                                                                                                                   
SECONDS=0                                                                                                                                                             
rpmbuild --target $ARCH --with sparce --without bootwrapper --without debug --without debuginfo --without perf --without tool  --rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS                                                                                                                                                     
echo "$(($duration / 60)) min $(($duration % 60)) s"                                                                                                                  
if [ $? -eq 0 ]; then                                                                                                                                                 
    echo "Successful: " $i >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
else                                                                                                                                                                  
    echo "Failed: " $i     >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
fi                                                                                                                                                                    
i=$((i+1))                                                                                                                                                            

                                                                                                                                                                      
                                                                                                                                                                   
SECONDS=0
rpmbuild --target $ARCH --with cross --without bootwrapper --without debug --without debuginfo --without perf --without tools  --rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS                                                                                                                                                     
echo "$(($duration / 60)) min $(($duration % 60)) s"                                                                                                                  
if [ $? -eq 0 ]; then                                                                                                                                                 
    echo "Successful: " $i >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
else                                                                                                                                                                  
    echo "Failed: " $i     >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
fi                                                                                                                                                                    
i=$((i+1))                                                                                                                                                            

                                                                                                                                                                      
                                                                                                                                                                   
SECONDS=0                                                                                                                                                             
rpmbuild --target $ARCH --with vanilla --without vdso --without bootwrapper --without debug --without debuginfo --without perf --without tools -- rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS                                                                                                                                                     
echo "$(($duration / 60)) min $(($duration % 60)) s"                                                                                                                  
if [ $? -eq 0 ]; then                                                                                                                                                 
    echo "Successful: " $i >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
else                                                                                                                                                                  
    echo "Failed: " $i     >> $DIR_LOGS/summary                                                                                                                       
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                  
fi                                                                                                                                                                    
i=$((i+1))                                                                                                                                                            
                                                                                                                                                                      

                                                                                                                                                                                    
SECONDS=0                                                                                                                                                                              
rpmbuild --target $ARCH --with baseonly --rebuild $RPMSRC > $DIR_LOGS/"$i".log 
duration=$SECONDS                                                                                                                                                                      
echo "$(($duration / 60)) min $(($duration % 60)) s"                                                                                                                                   
if [ $? -eq 0 ]; then                                                                                                                                                                  
    echo "Successful: " $i >> $DIR_LOGS/summary                                                                                                                                        
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                                   
else                                                                                                                                                                                   
    echo "Failed: " $i     >> $DIR_LOGS/summary                                                                                                                                        
    echo "Duration: " $duration >> $DIR_LOGS/summary                                                                                                                                   
fi                                                                                                                                                                                     
i=$((i+1))                                                                                                                                                                             	

                                                                            
SECONDS=0                                                                      
rpmbuild --target $ARCH --with paeonly --rebuild $RPMSRC > $DIR_LOGS/"$i".log 
duration=$SECONDS                                                              
echo "$(($duration / 60)) min $(($duration % 60)) s"                           
if [ $? -eq 0 ]; then                                                          
    echo "Successful: " $i >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
else                                                                           
    echo "Failed: " $i     >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
fi                                                                             
i=$((i+1))                                                                     

                                                                            
SECONDS=0                                                                      
rpmbuild --target $ARCH --with dbgonly --rebuild $RPMSRC > $DIR_LOGS/"$i".log 
duration=$SECONDS                                                              
echo "$(($duration / 60)) min $(($duration % 60)) s"                           
if [ $? -eq 0 ]; then                                                          
    echo "Successful: " $i >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
else                                                                           
    echo "Failed: " $i     >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
fi                                                                             
i=$((i+1))                                                                     

                                                                            
SECONDS=0                                                                      
rpmbuild --target $ARCH --with sparse --rebuild $RPMSRC > $DIR_LOGS/"$i".log 
duration=$SECONDS                                                              
echo "$(($duration / 60)) min $(($duration % 60)) s"                           
if [ $? -eq 0 ]; then                                                          
    echo "Successful: " $i >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
else                                                                           
    echo "Failed: " $i     >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
fi                                                                             
i=$((i+1))                                                                     

                                                                            
SECONDS=0                                                                      
rpmbuild --target $ARCH --with baseonly --rebuild $RPMSRC > $DIR_LOGS/"$i".log 
duration=$SECONDS                                                              
echo "$(($duration / 60)) min $(($duration % 60)) s"                           
if [ $? -eq 0 ]; then                                                          
    echo "Successful: " $i >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
else                                                                           
    echo "Failed: " $i     >> $DIR_LOGS/summary                                
    echo "Duration: " $duration >> $DIR_LOGS/summary                           
fi                                                                             
i=$((i+1))                                                                     
                                                                               

                                                                           
SECONDS=0                                                                     
rpmbuild --target $ARCH --with cross --rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS                                                             
echo "$(($duration / 60)) min $(($duration % 60)) s"                          
if [ $? -eq 0 ]; then                                                         
    echo "Successful: " $i >> $DIR_LOGS/summary                               
    echo "Duration: " $duration >> $DIR_LOGS/summary                          
else                                                                          
    echo "Failed: " $i     >> $DIR_LOGS/summary                               
    echo "Duration: " $duration >> $DIR_LOGS/summary                          
fi                                                                            
i=$((i+1))                                                                    

                                                                           
SECONDS=0                                                                     
rpmbuild --target $ARCH --with release --rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS                                                             
echo "$(($duration / 60)) min $(($duration % 60)) s"                          
if [ $? -eq 0 ]; then                                                         
    echo "Successful: " $i >> $DIR_LOGS/summary                               
    echo "Duration: " $duration >> $DIR_LOGS/summary                          
else                                                                          
    echo "Failed: " $i     >> $DIR_LOGS/summary                               
    echo "Duration: " $duration >> $DIR_LOGS/summary                          
fi                                                                            
i=$((i+1))                                                                    

                                                                           
SECONDS=0                                                                     
rpmbuild --target $ARCH --with vanilla --rebuild $RPMSRC > $DIR_LOGS/"$i".log
duration=$SECONDS                                                             
echo "$(($duration / 60)) min $(($duration % 60)) s"                          
if [ $? -eq 0 ]; then                                                         
    echo "Successful: " $i >> $DIR_LOGS/summary                               
    echo "Duration: " $duration >> $DIR_LOGS/summary                          
else                                                                          
    echo "Failed: " $i     >> $DIR_LOGS/summary                               
    echo "Duration: " $duration >> $DIR_LOGS/summary                          
fi                                                                            
i=$((i+1))                                                                    
                                                                              
