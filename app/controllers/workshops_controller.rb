class WorkshopsController < ApplicationController
  expose :workshop
  expose :workshops do
    Workshop.all
  end
  expose :string do
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut enim fermentum, scelerisque nunc ac, consectetur ligula. Sed dignissim erat tortor, et congue erat pulvinar at. Aliquam porttitor, quam ac egestas auctor, ex magna faucibus erat, vitae iaculis enim risus non ipsum. Donec sed laoreet mi. Duis quis leo in nunc iaculis viverra. Praesent mollis, mi pellentesque semper pharetra, ex nisl malesuada lectus, sed tempor nisi libero ut nisl. Nam quis ante cursus, commodo eros in, rhoncus ligula. Mauris tortor lorem, sollicitudin vitae pharetra eget, egestas a nisi. Etiam enim odio, bibendum non velit in, pellentesque cursus quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In purus eros, rutrum in vestibulum malesuada, congue eget nisi. Donec venenatis sit amet orci eu ullamcorper. Phasellus ut mauris orci. Donec a felis non lacus sollicitudin maximus in vel libero. Nam et dolor arcu.".truncate(400)
  end
end
