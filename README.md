[![Build Status](https://travis-ci.org/orlissenberg/ansible-oracle-java.svg?branch=master)](https://travis-ci.org/orlissenberg/ansible-oracle-java)

Role Name
=========

Oracle Java 8

Requirements
------------

No pre-requisites.

Role Variables
--------------

oracle_java_from_src
Will install from (apt) repositories if set on false.

Dependencies
------------

No dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    ---

    - hosts: webservers
      gather_facts: yes
      sudo: yes

    roles:
      - oracle-java

License
-------

MIT
