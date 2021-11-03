#!/bin/bash
grep -w $2 $1_Dealer_schedule | grep -w $3 | awk '{print $5,$6}'



