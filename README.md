# Mobile Banking System

## Table of Contents

- [Introduction](#introduction)
- [Hardware Requirements](#hardware-requirements)
- [Wireless Markup Language (WML)](#wireless-markup-language-wml)
  - [Reasons to use WML](#reasons-to-use-wml)
- [Nokia Simulator](#nokia-simulator)
  - [Nokia Mobile Internet Toolkit 4.0 (NMIT)](#nokia-mobile-internet-toolkit-40-nmit)
  - [Nokia 5100 SDK](#nokia-5100-sdk)
  - [Nokia Mobile Browser 4.0 SDK (NMB)](#nokia-mobile-browser-40-sdk-nmb)
- [Architectural Design](#architectural-design)
  - [Modules](#modules)
    - [1. Registration/User Verification](#1-registrationuser-verification)
    - [2. Wap Registration](#2-wap-registration)
    - [3. Balance Enquiry](#3-balance-enquiry)
    - [4. Statement Enquiry](#4-statement-enquiry)
    - [5. Fund Transfer](#5-fund-transfer)
    - [6. EB, Telephone Bill Payment](#6-eb-telephone-bill-payment)
    - [7. DD/Cheque Request](#7-ddcheque-request)
    - [8. Change Password](#8-change-password)
    - [9. Chatting](#9-chatting)
    

## Introduction

The Mobile Banking System is a project aimed at mobilizing the banking process to enhance customer convenience. This system allows bank customers to access their account details, perform transactions, and access various banking services through their mobile devices.

## Hardware Requirements

To run the Mobile Banking System, you'll need the following hardware components:

- Processor: Pentium-III
- Processor Speed: 750 MHz
- Motherboard: Mercury
- Primary Memory (RAM): 128 MB
- Secondary Memory: 40 GB
- CD-ROM Drive: Samsung 52x MAX
- Floppy Disk Drive: 1.44 MB
- Monitor: 14” Samtron
- Keyboard: Samsung 104 keys
- Mouse: Logitech

## Wireless Markup Language (WML)

WML (Wireless Markup Language) is used in the Mobile Banking System to create mobile-friendly content. It is an XML-based markup language designed for wireless devices and mobile browsers.

### Reasons to use WML

- WML is designed for wireless devices, requiring less bandwidth and processing power than HTML.
- It ensures longer battery life for mobile devices.
- WML content is suitable for small mobile phone displays.

## Nokia Simulator

### Nokia Mobile Internet Toolkit 4.0 (NMIT)

NMIT is a set of editors for creating various types of mobile Internet content. It supports multiple phone SDKs, such as the Nokia 5100 content authoring SDK. NMIT focuses on content authoring and supports multiple active phone SDKs.

### Nokia 5100 SDK

The Nokia 5100 SDK allows you to preview how wireless content will look and work on Nokia 5100 mobile handsets and similar Nokia devices. It features an XHTML color browser and HTTP communication stack for receiving content directly from web servers without going through a WAP gateway.

### Nokia Mobile Browser 4.0 SDK (NMB)

NMB is a mobile phone SDK that includes a mobile Internet browser for browsing both mobile Internet content and local file content. It supports content authoring features of Nokia Mobile Toolkit 4.0 (NMIT) and can be used as a standalone browser or with NMIT. NMB 4.0 also includes diagnostic views for testing content.

## Architectural Design

The Mobile Banking System is designed with various modules, each responsible for specific operations.

### Modules

#### 1. Registration/User Verification

This module provides information about the registered user, including account type and personal details. Users can register by entering their personal details, and the system generates a Wap registration form accordingly. Different account types have different registration processes.

#### 2. Wap Registration

The Wap registration module allows users with specific account types, such as current accounts, to register for mobile access. It generates the necessary forms for Wap registration.

#### 3. Balance Enquiry

The balance enquiry module enables users to check their account balance. It also provides functionalities for booking tickets, checking reservation statuses, and other banking operations.

#### 4. Statement Enquiry

This module allows users to request account statements, view transaction history, and check past account activities.

#### 5. Fund Transfer

Users can initiate fund transfers to other account holders through this module. It facilitates secure money transfers between accounts.

#### 6. EB, Telephone Bill Payment

Users can make payments for their electricity (EB) and telephone bills through this module, enhancing convenience and efficiency.

#### 7. DD/Cheque Request

Users can request demand drafts (DD) or cheque books through this module. It simplifies the process of obtaining financial instruments.

#### 8. Change Password

This module enables users to change their mobile banking system passwords for added security.

#### 9. Chatting

Users can engage in real-time chats with other clients. It includes features like entering a secret code for chat room access and supports multiple simultaneous chats.

