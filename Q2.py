#!/usr/bin/env python3

import pandas as pd


flightdelays=pd.read_csv("flightdelays.csv")

data=flightdelays[flightdelays['Origin']=='SFO']['ArrDelay'].iloc[:3]

data.to_csv('first3sfo.csv')

c=pd.read_csv('first3sfo.csv',header=None)[1]

print (c)

print(flightdelays['Dest'].value_counts().head(3))

