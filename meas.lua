if singleLua==nil then
    singleLua=0
    print ("init")
    FileCurrNumber=0
    FileDelNumber=1
end

dane=FileCurrNumber
    for num=0, 100, 1   --init data file
    do
        dane=dane.." aazzaaax"
    end

if singleLua~=0 then
    singleLua=singleLua+1
    if singleLua>3 then
        singleLua=0
    end
    print(singleLua.." meas ")
    return
end

singleLua=1

tmr.wdclr() 

maxFileNr=500        --OK
FileName='awyn'     --OK
FileExt='.dat'     --OK

    r,u,t=file.fsinfo() print("Total : "..t.." bytes\r\nUsed  : "..u.." bytes\r\nRemain: "..r.." bytes\r\n")
    if(r<20000) then --less than 20k free
    maxFileNr=1    --delete one file
    end
     r=nil u=nil t=nil

print("curr file "..FileCurrNumber.." file to del "..FileDelNumber)

FileCurrNumber=FileCurrNumber+1
fileCntr=FileCurrNumber+1-FileDelNumber

fileCurrName=tostring(FileName..FileCurrNumber..FileExt)

file.open(fileCurrName ,"w+")
file.write(dane)
--wyn=file.seek()
--print('dlugosc = '..wyn)
file.flush()
file.close()

print (fileCurrName)
print (fileCntr)

if fileCntr>maxFileNr then
    fileDelName=tostring(FileName..FileDelNumber..FileExt)
    file.remove(fileDelName)
    FileDelNumber=FileDelNumber+1
end
singleLua=0

