require "./spec_helper"

describe Checkup do
  # TODO: Write tests

  # it "Emails" do
  #   Email.notify("Test body", "Test subject", ["evandrojr@gmail.com"])
  # end

  # it "Ls" do
  #   puts OS.execute("ls *")
  # end

  it "Requests get" do
    r = Rest.get "https://jsonplaceholder.typicode.com/posts/1"
    r.status_code.should eq 200
    puts r.body
    r.body.should eq %Q({\n  \"userId\": 1,\n  \"id\": 1,\n  \"title\": \"sunt aut facere repellat provident occaecati excepturi optio reprehenderit\",\n  \"body\": \"quia et suscipit\\nsuscipit recusandae consequuntur expedita et cum\\nreprehenderit molestiae ut ut quas totam\\nnostrum rerum est autem sunt rem eveniet architecto\"\n})
    # ap response.body     # => "<!doctype html>"
  end
end
