require 'test_helper'

class PoliticianTest < ActiveSupport::TestCase
  test "create politician" do
    politician = Politician.new
    assert_not politician.save, "Saved the politician without name"
  end

  test "politician belongs to political party" do
    politician = Politician.new(name: "test taro")
    assert politician.save
    political_party = PoliticalParty.new(name: "test party")
    assert political_party.save
    politician_to_political_party = PoliticianToPoliticalParty.find_or_create_by(politician: politician, political_party: political_party)
    assert politician_to_political_party.save
    assert_equal politician.political_parties.first.political_party.name, "test party"
    assert_equal political_party.politicians.count, 1
  end

  test "politician has many elections" do
    politician = Politician.new(name: "test taro")
    assert politician.save
    election = Election.new(name: "test election")
    assert election.save
    politician_to_election = PoliticianToElection.find_or_create_by(politician: politician, election: election)
    assert politician_to_election.save
    assert_equal politician.elections.first.election.name, "test election"
    assert_equal election.politicians.count, 1
  end

  test "politician has many educations" do
    politician = Politician.new(name: "test taro")
    assert politician.save
    education = Education.new(name: "test education")
    assert education.save
    politician_to_education = PoliticianToEducation.find_or_create_by(politician: politician, education: education)
    assert politician_to_education.save
    assert_equal politician.educations.first.education.name, "test education"
    assert_equal education.politicians.count, 1
  end

  test "politician has many opinions" do
    politician = Politician.new(name: "test taro")
    assert politician.save
    opinion = Opinion.new(text: "test opinion", politician: politician)
    assert opinion.save
    assert_equal politician.opinions.count, 1
  end
end
