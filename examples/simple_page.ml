(* Simple page example demonstrating tw.html with automatic CSS generation *)
open Tw_html

let simple_page =
  page ~title:"Simple Styled Page"
    ~meta:
      [
        ( "description",
          "A simple page demonstrating Tw CSS generation with OCaml" );
        ("viewport", "width=device-width, initial-scale=1.0");
      ]
    ~tw_css:"simple.css"
    (* Head content *)
    [ meta ~at:[ At.name "author"; At.content "tw.html" ] () ]
    (* Body content *)
    [
      div
        ~tw:Tw.[ min_h_screen; bg gray 50 ]
        [
          (* Header *)
          header
            ~tw:Tw.[ bg_white; shadow_sm; py 4 ]
            [
              div
                ~tw:Tw.[ max_w_4xl; mx_auto; px 4 ]
                [
                  h1
                    ~tw:Tw.[ text_2xl; font_bold; text gray 800 ]
                    [ txt "Welcome to tw.html" ];
                ];
            ];
          (* Main content *)
          main
            ~tw:Tw.[ flex_1; py 8 ]
            [
              div
                ~tw:Tw.[ max_w_2xl; mx_auto; px 4 ]
                [
                  (* Hero section *)
                  section
                    ~tw:Tw.[ text_center; mb 12 ]
                    [
                      h2
                        ~tw:
                          Tw.[ text_4xl; font_bold; text gray 900; mb 4 ]
                        [ txt "Type-Safe HTML with Tw" ];
                      p
                        ~tw:
                          Tw.
                            [
                              text_lg; text gray 600; max_w_2xl; mx_auto;
                            ]
                        [
                          txt
                            "Generate beautiful, responsive pages with OCaml's \
                             type safety and Tw's TailwindCSS-like API.";
                        ];
                    ];
                  (* Feature cards *)
                  section
                    ~tw:
                      Tw.
                        [
                          grid; grid_cols 1; on_md [ grid_cols 3 ]; gap 8; mb 12;
                        ]
                    [
                      (* Card 1 *)
                      div
                        ~tw:
                          Tw.
                            [
                              bg_white; rounded_lg; shadow_md; p 6; text_center;
                            ]
                        [
                          div
                            ~tw:
                              Tw.
                                [
                                  w 12;
                                  h 12;
                                  bg blue 100;
                                  rounded_full;
                                  mx_auto;
                                  mb 4;
                                  flex;
                                  items_center;
                                  justify_center;
                                ]
                            [ span ~tw:Tw.[ text_2xl ] [ txt "🎨" ] ];
                          h3
                            ~tw:Tw.[ text_lg; font_semibold; mb 2 ]
                            [ txt "Beautiful Design" ];
                          p
                            ~tw:Tw.[ text gray 600 ]
                            [
                              txt
                                "Craft stunning UIs with Tw's TailwindCSS-like \
                                 utility classes.";
                            ];
                        ];
                      (* Card 2 *)
                      div
                        ~tw:
                          Tw.
                            [
                              bg_white; rounded_lg; shadow_md; p 6; text_center;
                            ]
                        [
                          div
                            ~tw:
                              Tw.
                                [
                                  w 12;
                                  h 12;
                                  bg green 100;
                                  rounded_full;
                                  mx_auto;
                                  mb 4;
                                  flex;
                                  items_center;
                                  justify_center;
                                ]
                            [ span ~tw:Tw.[ text_2xl ] [ txt "🛡️" ] ];
                          h3
                            ~tw:Tw.[ text_lg; font_semibold; mb 2 ]
                            [ txt "Type Safety" ];
                          p
                            ~tw:Tw.[ text gray 600 ]
                            [
                              txt
                                "Catch errors at compile time with OCaml's \
                                 powerful type system.";
                            ];
                        ];
                      (* Card 3 *)
                      div
                        ~tw:
                          Tw.
                            [
                              bg_white; rounded_lg; shadow_md; p 6; text_center;
                            ]
                        [
                          div
                            ~tw:
                              Tw.
                                [
                                  w 12;
                                  h 12;
                                  bg purple 100;
                                  rounded_full;
                                  mx_auto;
                                  mb 4;
                                  flex;
                                  items_center;
                                  justify_center;
                                ]
                            [ span ~tw:Tw.[ text_2xl ] [ txt "⚡" ] ];
                          h3
                            ~tw:Tw.[ text_lg; font_semibold; mb 2 ]
                            [ txt "Fast Development" ];
                          p
                            ~tw:Tw.[ text gray 600 ]
                            [
                              txt
                                "Build responsive pages quickly with \
                                 composable components.";
                            ];
                        ];
                    ];
                  (* CTA section *)
                  section
                    ~tw:Tw.[ bg_white; rounded_lg; shadow_sm; p 8; text_center ]
                    [
                      h3
                        ~tw:Tw.[ text_2xl; font_bold; mb 4 ]
                        [ txt "Ready to get started?" ];
                      p
                        ~tw:Tw.[ text gray 600; mb 6 ]
                        [
                          txt
                            "Install tw.html and start building beautiful, \
                             type-safe web pages today.";
                        ];
                      div
                        ~tw:
                          Tw.
                            [
                              flex;
                              flex_col;
                              on_sm [ flex_row ];
                              gap 4;
                              justify_center;
                            ]
                        [
                          a
                            ~at:[ At.href "https://github.com/samoht/tw" ]
                            ~tw:
                              Tw.
                                [
                                  bg_blue;
                                  text_white;
                                  px 6;
                                  py 3;
                                  rounded_md;
                                  font_medium;
                                  on_hover [ bg blue 700 ];
                                  transition_all;
                                  duration 200;
                                ]
                            [ txt "View on GitHub" ];
                          a
                            ~at:
                              [
                                At.href
                                  "https://ocaml.org/p/tw/latest/doc/index.html";
                              ]
                            ~tw:
                              Tw.
                                [
                                  bg gray 200;
                                  text gray 800;
                                  px 6;
                                  py 3;
                                  rounded_md;
                                  font_medium;
                                  on_hover [ bg gray 300 ];
                                  transition_all;
                                  duration 200;
                                ]
                            [ txt "Documentation" ];
                        ];
                    ];
                ];
            ];
          (* Footer *)
          footer
            ~tw:Tw.[ bg_white; border_t; py 6; mt 12 ]
            [
              div
                ~tw:Tw.[ max_w_4xl; mx_auto; px 4; text_center ]
                [
                  p
                    ~tw:Tw.[ text gray 500 ]
                    [ txt "Built with ❤️ using OCaml and Tw" ];
                ];
            ];
        ];
    ]

(* Generate the page *)
let () =
  let html_str = html simple_page in
  let css_filename, css_stylesheet = css simple_page in
  let css_str = Tw.Css.to_string ~minify:false css_stylesheet in

  (* Write HTML file *)
  let oc_html = open_out "simple_page.html" in
  output_string oc_html html_str;
  close_out oc_html;

  (* Write CSS file *)
  let oc_css = open_out css_filename in
  output_string oc_css css_str;
  close_out oc_css;

  Printf.printf "Generated:\n";
  Printf.printf "  - simple_page.html\n";
  Printf.printf "  - %s\n" css_filename;
  Printf.printf "\nOpen simple_page.html in your browser to see the result!\n"
