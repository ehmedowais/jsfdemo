#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# Simple banner
echo -e "${CYAN}${BOLD}"
echo "╔════════════════════════════════════════╗"
echo "║                                        ║"
echo "║        WELCOME TO DEMO APP!            ║"
echo "║                                        ║"
echo "╔════════════════════════════════════════╗"
echo -e "${RESET}"

echo -e "${GREEN}✓ ######### Building Application ######### ${RESET}"
mvn clean install package
sh  /Users/macbookpro/development/tomcat/apache-tomcat-11.0.1/bin/shutdown.sh
echo -e "${GREEN}✓ ######### Deploying war file ######### ${RESET}"
rm -rf /Users/macbookpro/development/tomcat/apache-tomcat-11.0.1/webapps/jsfdemo/
rm -f /Users/macbookpro/development/tomcat/apache-tomcat-11.0.1/webapps/jsfdemo.war
cp ./target/jsfdemo.war /Users/macbookpro/development/tomcat/apache-tomcat-11.0.1/webapps
echo -e "${GREEN}✓ ######### Deploying war file complete ######### ${RESET}"
sleep 3
sh  /Users/macbookpro/development/tomcat/apache-tomcat-11.0.1/bin/startup.sh
echo "starting tomcat"

## echo -e "${GREEN}✓ Application started successfully${RESET}"
## echo -e "${YELLOW}⚠ Running in development mode${RESET}"
## echo -e "${RED}✗ Database connection failed${RESET}"
