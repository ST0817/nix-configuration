{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "ST0817";
        email = "136716138+ST0817@users.noreply.github.com";
      };
      init.defaultBranch = "main";
    };
  };
}
