def main():

    '''
        set up a  client for use with the home automation controller found
        at https://github.com/blank-blank/homeAutomationAndAnalyticsPlatform
    '''

    def add_to_hosts_file(url, ip_address):

        '''
        add entry to hosts file for platform_url
        '''

        isLinux = True
        assert isLinux, 'We only support linux at this time.  isLinux must be set to True.  Feel free to add support for your system.  If you do, please provide a PR.  Thanks :)'


        hosts_file = '/etc/hosts'

        with open(hosts_file, 'r') as fp:
            contents = fp.read()

        with open(hosts_file, 'w') as fp:
            fp.write(contents + '%s\t%s\n'%(ip_address, url))

    platform_root_url = "controller.platform"
    platform_port = "8081"
    platform_ip_address = "192.168.0.10"

    add_to_hosts_file(platform_root_url, platform_ip_address)

if __name__ == '__main__':



    main()

