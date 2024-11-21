Overview

This page describes how to deploy your Azure landing zone with a custom configuration.

In this example, we take the default configuration and make the following changes:

Create a new custom archetype definition named customer_online which will create two Policy Assignments, Deny-Resource-Locations and Deny-RSG-Locations at the associated scope with a set of pre-configured default parameter values.
Add a new Management Group for standard workloads using the customer_online archetype definition:
Management Group ID: teliacompany-Production
Management Group Name: TELIACOMPANY Production
Parent Management Group ID: teliacompany-landing-zones
Allowed location list: default
Add a new Management Group for geo-restricted workloads using the customer_online archetype definition:
Management Group ID: teliacompany-Development
Management Group Name: TELIACOMPANY Development
Parent Management Group ID: teliacompany-landing-zones
Allowed location list: ["westeurope"]