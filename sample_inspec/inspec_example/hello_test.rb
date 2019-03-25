control 'hello.config should be present' do
    describe file 'hello.config' do
        it {should exist }
    end
end

control 'hello.config content check ' do
    describe file 'hello.config' do
        its('content') { should match('Greetings : Hello_world') }
    end
end
