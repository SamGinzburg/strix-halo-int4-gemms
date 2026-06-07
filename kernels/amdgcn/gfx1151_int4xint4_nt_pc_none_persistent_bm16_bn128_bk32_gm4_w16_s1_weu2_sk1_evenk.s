	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s23, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 28
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s22, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s12, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s33, s12, s22
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s33
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph3
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 16, v0
	v_lshlrev_b32_e32 v4, 4, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v72, 15, v0
	v_bfe_i32 v6, v0, 3, 1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v3
	v_and_b32_e32 v4, 0x70, v4
	v_bfe_i32 v7, v0, 5, 1
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s34, s12, 2
	v_bfe_i32 v5, v0, 7, 1
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_bfe_u32 v70, v0, 4, 4
	v_and_or_b32 v4, 0x88, v6, v4
	v_and_b32_e32 v7, 0x88, v7
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_bfe_u32 v71, v0, 4, 1
	v_lshrrev_b32_e32 v73, 2, v0
	v_and_b32_e32 v8, 0x7f, v0
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_and_b32_e32 v0, 0x1e0, v0
	s_add_i32 s0, s13, s0
	s_mov_b32 s28, s4
	s_ashr_i32 s35, s0, 1
	v_xor_b32_e32 v5, v5, v8
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s35, 15
	v_xor_b32_e32 v8, 8, v4
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
.Ltmp12:
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v74, 44, v71
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_lshr_b32 s1, s1, 28
.Ltmp14:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v75, 46, v71
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s0, s1
.Ltmp16:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v76, 48, v71
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s14, s0, 4
	s_cmp_gt_i32 s13, 1
	v_cmp_eq_u32_e64 s0, 0, v3
	s_cselect_b32 s13, -1, 0
	s_abs_i32 s48, s34
	v_mov_b32_e32 v3, 0x7632
	v_mad_u64_u32 v[64:65], null, s23, v72, v[1:2]
	v_mov_b32_e32 v1, 0x5410
	v_and_b32_e32 v6, 0x77c, v2
	s_cvt_f32_u32 s1, s48
	v_cndmask_b32_e64 v3, 0x3276, v3, s0
	s_and_b32 s29, s5, 0xffff
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
	v_xor_b32_e32 v6, v7, v6
	v_rcp_iflag_f32_e32 v7, s1
	v_lshl_or_b32 v3, v3, 8, v3
	s_sub_i32 s5, 0, s48
	v_lshl_or_b32 v1, v1, 8, v1
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v77, 50, v71
	v_and_b32_e32 v3, 0x760076, v3
	v_or_b32_e32 v78, 52, v71
	v_and_b32_e32 v1, 0x540054, v1
	v_or_b32_e32 v79, 54, v71
	v_readfirstlane_b32 s1, v7
	v_lshl_or_b32 v3, v3, 4, v3
	v_or_b32_e32 v80, 56, v71
	v_lshl_or_b32 v1, v1, 4, v1
	v_or_b32_e32 v81, 58, v71
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_or_b32_e32 v82, 60, v71
	v_or_b32_e32 v83, 62, v71
	v_or_b32_e32 v84, 64, v71
	s_cvt_u32_f32 s4, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b32_e64 v0, 0, 1, s13
	v_or_b32_e32 v85, 0x42, v71
	s_mul_i32 s5, s5, s4
	v_or_b32_e32 v86, 0x44, v71
	v_or_b32_e32 v87, 0x46, v71
	v_or_b32_e32 v88, 0x48, v71
	v_or_b32_e32 v89, 0x4a, v71
	v_or_b32_e32 v90, 0x4c, v71
	v_or_b32_e32 v91, 0x4e, v71
	v_or_b32_e32 v92, 0x50, v71
	v_or_b32_e32 v93, 0x52, v71
	v_or_b32_e32 v94, 0x54, v71
	v_or_b32_e32 v95, 0x56, v71
	v_or_b32_e32 v96, 0x58, v71
	v_or_b32_e32 v97, 0x5a, v71
	v_or_b32_e32 v98, 0x5c, v71
	v_or_b32_e32 v99, 0x5e, v71
	v_or_b32_e32 v100, 0x60, v71
	v_or_b32_e32 v101, 0x62, v71
	v_or_b32_e32 v102, 0x64, v71
	v_or_b32_e32 v103, 0x66, v71
	v_or_b32_e32 v104, 0x68, v71
	v_or_b32_e32 v105, 0x6a, v71
	v_or_b32_e32 v106, 0x6c, v71
	v_or_b32_e32 v107, 0x6e, v71
	v_or_b32_e32 v108, 0x70, v71
	v_or_b32_e32 v109, 0x72, v71
	v_or_b32_e32 v110, 0x74, v71
	v_or_b32_e32 v111, 0x76, v71
	v_or_b32_e32 v112, 0x78, v71
	v_or_b32_e32 v113, 0x7a, v71
	v_or_b32_e32 v114, 0x7c, v71
	v_or_b32_e32 v115, 0x7e, v71
	v_add_nc_u32_e32 v116, 16, v64
	v_add_nc_u32_e32 v117, 32, v64
	v_add_nc_u32_e32 v118, 48, v64
	v_add_nc_u32_e32 v119, 64, v64
	v_add_nc_u32_e32 v120, 0x50, v64
	v_add_nc_u32_e32 v121, 0x60, v64
	v_add_nc_u32_e32 v122, 0x70, v64
	v_and_b32_e32 v123, 0x5040504, v1
	v_and_b32_e32 v124, 0x7060706, v3
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_and_or_b32 v65, v2, 12, s3
	v_or_b32_e32 v66, s3, v72
	v_cmp_ne_u32_e64 s3, 1, v0
	v_add_nc_u32_e32 v125, 0, v5
	v_add_nc_u32_e32 v126, 0, v4
	v_add_nc_u32_e32 v127, 0, v8
	v_add_nc_u32_e32 v128, 0, v6
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_mul_hi_u32 s5, s4, s5
	s_and_b32 s37, s7, 0xffff
	s_mov_b32 s36, s6
	s_and_b32 s45, s11, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s49, s14, 1
	s_bfe_i32 s50, s12, 0x1001d
	s_add_i32 s51, s4, s5
	s_mov_b32 s52, 0x76543210
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s44, s10
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s4, s4, 7
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v32, s5, v72
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s4, v71
	v_or_b32_e32 v34, s4, v76
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v36, 12, v71
	v_or_b32_e32 v37, 14, v71
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v32, 1, v32
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v36, s4, v36
	v_or_b32_e32 v37, s4, v37
	.loc	1 242 18 is_stmt 1              ; generate_amdgcn.py:242:18
	buffer_load_u16 v164, v32, s[40:43], 0 offen
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v165, v33, s[44:47], 0 offen
	buffer_load_u16 v47, v34, s[44:47], 0 offen
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 4, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s4, v77
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 2, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s4, v34
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s4, v32
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 10, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v160, v37, s[44:47], 0 offen
	v_lshlrev_b32_e32 v34, 1, v34
	s_clause 0x1
	buffer_load_u16 v45, v33, s[44:47], 0 offen
	buffer_load_u16 v159, v36, s[44:47], 0 offen
	v_lshlrev_b32_e32 v32, 1, v32
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v35, s4, v35
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v163, v34, s[44:47], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 16, v71
	v_or_b32_e32 v36, 24, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v44, v32, s[44:47], 0 offen
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v33, 6, v71
	v_or_b32_e32 v32, 8, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s4, v34
	v_or_b32_e32 v62, s4, v85
	v_or_b32_e32 v51, s4, v86
	v_or_b32_e32 v33, s4, v33
	v_or_b32_e32 v32, s4, v32
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v52, s4, v87
	v_or_b32_e32 v61, s4, v88
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v166, s4, v90
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v161, v34, s[44:47], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s4, v36
	v_or_b32_e32 v36, s4, v82
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v55, v33, s[44:47], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v37, s4, v83
	v_or_b32_e32 v167, s4, v91
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v52, 1, v52
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v166, 1, v166
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v169, s4, v93
	v_or_b32_e32 v170, s4, v94
	v_or_b32_e32 v168, s4, v92
	v_or_b32_e32 v171, s4, v96
	.loc	1 277 22 is_stmt 1              ; generate_amdgcn.py:277:22
	s_mul_i32 s38, s5, s23
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v177, s4, v107
	v_or_b32_e32 v175, s4, v106
	v_or_b32_e32 v178, s4, v108
	v_or_b32_e32 v179, s4, v109
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s38, s38, s4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s33
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v45, 16, v45
	v_lshlrev_b32_e32 v35, 1, v35
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v32, 1, v32
	buffer_load_u16 v158, v35, s[44:47], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v173, 16, v44
	buffer_load_u16 v63, v32, s[44:47], 0 offen
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v33, 18, v71
	v_or_b32_e32 v32, 20, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s4, v33
	v_or_b32_e32 v32, s4, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	buffer_load_u16 v162, v33, s[44:47], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 22, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v34
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 30, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v35, s4, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v34, s4, v34
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v34, 1, v34
	buffer_load_u16 v57, v34, s[44:47], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 38, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s4, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v34, 1, v34
	buffer_load_u16 v56, v34, s[44:47], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s4, v74
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v34, 1, v34
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v63, 16, v63
	v_lshlrev_b32_e32 v32, 1, v32
	s_clause 0x2
	buffer_load_u16 v53, v32, s[44:47], 0 offen
	buffer_load_u16 v54, v35, s[44:47], 0 offen
	buffer_load_u16 v50, v33, s[44:47], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 26, v71
	v_or_b32_e32 v33, 28, v71
	v_or_b32_e32 v35, 36, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s4, v32
	v_or_b32_e32 v33, s4, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v35, s4, v35
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v33, 1, v33
	s_clause 0x1
	buffer_load_u16 v48, v32, s[44:47], 0 offen
	buffer_load_u16 v46, v33, s[44:47], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 32, v71
	v_or_b32_e32 v33, 34, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s4, v32
	v_or_b32_e32 v33, s4, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	v_lshlrev_b32_e32 v33, 1, v33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v57, 16, v57
	s_clause 0x1
	buffer_load_u16 v58, v32, s[44:47], 0 offen
	buffer_load_u16 v59, v33, s[44:47], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 40, v71
	v_or_b32_e32 v33, 42, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s4, v32
	v_or_b32_e32 v33, s4, v33
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v56, 16, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v32, 1, v32
	v_lshlrev_b32_e32 v33, 1, v33
	s_clause 0x1
	buffer_load_u16 v43, v32, s[44:47], 0 offen
	buffer_load_u16 v41, v33, s[44:47], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s4, v75
	v_or_b32_e32 v33, s4, v78
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	s_clause 0x1
	buffer_load_u16 v40, v34, s[44:47], 0 offen
	buffer_load_u16 v39, v32, s[44:47], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s4, v79
	v_or_b32_e32 v34, s4, v80
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b32_e32 v32, 1, v32
	v_lshlrev_b32_e32 v34, 1, v34
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v54, 16, v54
	v_lshlrev_b32_e32 v35, 1, v35
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v50, 16, v50
	v_lshlrev_b32_e32 v49, 1, v37
	buffer_load_u16 v60, v35, s[44:47], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v35, s4, v81
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v42, 1, v35
	s_clause 0x5
	buffer_load_u16 v38, v32, s[44:47], 0 offen
	buffer_load_u16 v35, v34, s[44:47], 0 offen
	buffer_load_u16 v37, v42, s[44:47], 0 offen
	buffer_load_u16 v34, v36, s[44:47], 0 offen
	buffer_load_u16 v36, v49, s[44:47], 0 offen
	buffer_load_u16 v42, v33, s[44:47], 0 offen
	.loc	1 242 18 is_stmt 1              ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v33, 16, v164
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v49, s4, v84
	v_or_b32_e32 v164, s4, v89
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.h, 0
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v40, v33, v40
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v40, v40, v133 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v57, v33, v57 :: v_dual_lshlrev_b32 v164, 1, v164
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v172, 1, v61
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v174, v33, v45 :: v_dual_lshlrev_b32 v59, 16, v59
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v63, v33, v63
	v_mul_f32_e32 v39, v33, v39
	v_dual_mul_f32 v58, v33, v58 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v155, v174, v155
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v174, s4, v103
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s6, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v47, v33, v47
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v139, v58, v139 :: v_dual_mul_f32 v54, v33, v54
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v56, v33, v56
	v_dual_mul_f32 v43, v33, v43 :: v_dual_mul_f32 v156, v47, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s13, v139, v139
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v59, v33, v59
	v_mul_f32_e32 v41, v33, v41
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v43, v43, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s15, v43, v43
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v47, 1, v62
	v_lshlrev_b32_e32 v62, 1, v49
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v58, v33, v60 :: v_dual_lshlrev_b32 v49, 1, v51
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	v_lshlrev_b32_e32 v167, 1, v167
	s_clause 0x7
	buffer_load_u16 v61, v47, s[44:47], 0 offen
	buffer_load_u16 v51, v49, s[44:47], 0 offen
	buffer_load_u16 v52, v52, s[44:47], 0 offen
	buffer_load_u16 v47, v172, s[44:47], 0 offen
	buffer_load_u16 v49, v164, s[44:47], 0 offen
	buffer_load_u16 v44, v166, s[44:47], 0 offen
	buffer_load_u16 v45, v167, s[44:47], 0 offen
	buffer_load_u16 v62, v62, s[44:47], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v34, v33, v34
	v_mul_f32_e32 v36, v33, v36
	v_mul_f32_e32 v163, v33, v163
	v_mul_f32_e32 v164, v33, v173
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v137, v58, v137 :: v_dual_mul_f32 v50, v33, v50
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v166, s4, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v163, v163, v153 :: v_dual_mul_f32 v164, v164, v154
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v167, s4, v98
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v145, v50, v145
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v50, 1, v169
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v172, s4, v99
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v58.h, v32.h
	v_mov_b16_e64 v58.l, v163.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v169, v39, v132
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v173, s4, v101
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s5, v163, v163
	v_mov_b16_e32 v60.h, v32.h
	v_and_b32_e32 v58, 1, v58
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v133, 1, v173
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v35, v33, v35
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e64 v32.l, v164.h
	v_add3_u32 v163, v163, v58, 0x7fff
	v_cmp_o_f32_e64 s11, v164, v164
	v_cmp_o_f32_e64 s8, v145, v145
	v_cmp_o_f32_e64 s14, v137, v137
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v36, v36, v67 :: v_dual_and_b32 v39, 1, v32
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v37, v33, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v37, v37, v69
	v_mul_f32_e32 v69, v35, v129
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v51, v33, v51 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	v_lshlrev_b32_e32 v55, 16, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v44, v33, v44 :: v_dual_lshlrev_b32 v153, 16, v158
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v28, v51, v28
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v62, v33, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v33, v55
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v24, v44, v24 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v53, v33, v53
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v158, s4, v100
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v154, v55, v151
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v55, 16, v159
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v151, v33, v153
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v159, v63, v152
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v63, 16, v160
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v176, v53, v144
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v55, v33, v55
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v153, v151, v150 :: v_dual_lshlrev_b32 v150, 16, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v63, v33, v63
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v53, 1, v170
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v161, v55, v149
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v55, 16, v162
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v149, v33, v150
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v150, 1, v166
	v_lshlrev_b32_e32 v166, 16, v46
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v55, v33, v55
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v144, v54, v143 :: v_dual_lshlrev_b32 v143, 1, v168
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v151, 1, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v165, v33, v165 :: v_dual_mul_f32 v146, v55, v146
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v152, v63, v148 :: v_dual_mul_f32 v147, v149, v147
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v149, 1, v171
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v157, v165, v157
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v165, s4, v95
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v167, v33, v48 :: v_dual_lshlrev_b32 v58, 1, v158
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v168, v41, v134
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v41.h, v32.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v55, 1, v165
	v_lshlrev_b32_e32 v165, 1, v172
	s_clause 0x7
	buffer_load_u16 v63, v50, s[44:47], 0 offen
	buffer_load_u16 v54, v53, s[44:47], 0 offen
	buffer_load_u16 v55, v55, s[44:47], 0 offen
	buffer_load_u16 v50, v150, s[44:47], 0 offen
	buffer_load_u16 v46, v151, s[44:47], 0 offen
	buffer_load_u16 v48, v165, s[44:47], 0 offen
	buffer_load_u16 v53, v149, s[44:47], 0 offen
	buffer_load_u16 v143, v143, s[44:47], 0 offen
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v149, v167, v142
	v_mul_f32_e32 v167, v56, v135
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v56.h, v32.h
	v_mov_b16_e64 v56.l, v157.h
	v_mov_b16_e64 v41.l, v159.h
	v_mov_b16_e64 v60.l, v161.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v132, v58, s[44:47], 0 offen
	buffer_load_u16 v133, v133, s[44:47], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v148, s4, v104
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v150, v33, v166
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v56, 1, v56
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v60, 1, v60
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v162, s4, v105
	v_or_b32_e32 v160, s4, v102
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v58, 1, v174
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v142, s4, v110
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v165, v150, v141
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v166, s4, v111
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v151, v57, v140
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v57, s4, v112
	v_or_b32_e32 v140, s4, v113
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v150, v59, v138
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v59, s4, v114
	v_or_b32_e32 v138, s4, v115
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v159, v159
	v_add3_u32 v158, v159, v41, 0x7fff
	v_add3_u32 v159, v161, v60, 0x7fff
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v61, v33, v61 :: v_dual_lshlrev_b32 v60, 1, v148
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v31, v62, v31 :: v_dual_lshlrev_b32 v136, 1, v162
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v148, 1, v177
	v_lshlrev_b32_e32 v162, 1, v175
	v_lshlrev_b32_e32 v160, 1, v160
	s_clause 0x5
	buffer_load_u16 v141, v58, s[44:47], 0 offen
	buffer_load_u16 v135, v60, s[44:47], 0 offen
	buffer_load_u16 v136, v136, s[44:47], 0 offen
	buffer_load_u16 v58, v148, s[44:47], 0 offen
	buffer_load_u16 v60, v162, s[44:47], 0 offen
	buffer_load_u16 v148, v160, s[44:47], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s10, v157, v157
	v_add3_u32 v134, v157, v56, 0x7fff
	v_mov_b16_e32 v56.h, v32.h
	v_add3_u32 v157, v164, v39, 0x7fff
	v_mov_b16_e32 v39.h, v32.h
	v_mov_b16_e64 v164.h, v32.h
	v_mov_b16_e64 v56.l, v147.h
	v_mov_b16_e64 v39.l, v176.h
	v_mov_b16_e64 v164.l, v145.h
	v_mov_b16_e32 v41.h, v32.h
	v_mov_b16_e64 v41.l, v165.h
	v_and_b32_e32 v56, 1, v56
	v_and_b32_e32 v39, 1, v39
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v47, v33, v47 :: v_dual_and_b32 v160, 1, v164
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_mov_b16_e64 v161.h, v32.h
	v_cmp_o_f32_e64 s7, v147, v147
	v_add3_u32 v147, v147, v56, 0x7fff
	v_mov_b16_e32 v56.h, v32.h
	v_add3_u32 v162, v176, v39, 0x7fff
	v_mov_b16_e32 v39.h, v32.h
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v145, v145, v160, 0x7fff
	v_mov_b16_e64 v160.h, v32.h
	v_mov_b16_e64 v161.l, v139.h
	v_mov_b16_e64 v56.l, v137.h
	v_mov_b16_e32 v39.l, v43.h
	v_mov_b16_e64 v160.l, v40.h
	v_add3_u32 v164, v165, v41, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v41, 1, v178
	v_lshlrev_b32_e32 v171, 1, v57
	v_lshlrev_b32_e32 v172, 1, v138
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v57, 1, v161
	v_and_b32_e32 v56, 1, v56
	v_and_b32_e32 v39, 1, v39
	v_and_b32_e32 v138, 1, v160
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v170, 1, v179
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v27, v47, v27 :: v_dual_lshlrev_b32 v142, 1, v142
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v166, 1, v166
	v_lshlrev_b32_e32 v140, 1, v140
	v_lshlrev_b32_e32 v59, 1, v59
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v139, v139, v57, 0x7fff
	v_add3_u32 v160, v137, v56, 0x7fff
	v_add3_u32 v161, v43, v39, 0x7fff
	v_add3_u32 v173, v40, v138, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x7
	buffer_load_u16 v137, v41, s[44:47], 0 offen
	buffer_load_u16 v138, v170, s[44:47], 0 offen
	buffer_load_u16 v57, v142, s[44:47], 0 offen
	buffer_load_u16 v56, v166, s[44:47], 0 offen
	buffer_load_u16 v41, v171, s[44:47], 0 offen
	buffer_load_u16 v43, v140, s[44:47], 0 offen
	buffer_load_u16 v40, v59, s[44:47], 0 offen
	buffer_load_u16 v39, v172, s[44:47], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e64 v32.l, v154.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v59, 16, v38
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v38.l, 0x7fff, v134.h, s10
	v_cndmask_b16 v38.h, 0x7fff, v157.h, s11
	v_cmp_o_f32_e64 s16, v152, v152
	v_and_b32_e32 v134, 1, v32
	v_mov_b16_e64 v32.l, v153.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v157, v33, v59
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s11, v153, v153
	v_cmp_o_f32_e64 s12, v176, v176
	v_add3_u32 v59, v154, v134, 0x7fff
	v_and_b32_e32 v134, 1, v32
	v_mov_b16_e64 v32.l, v152.h
	v_cndmask_b16 v59.l, 0x7fff, v158.h, s4
	v_cndmask_b16 v139.l, 0x7fff, v162.h, s12
	v_cmp_o_f32_e64 s18, v144, v144
	v_add3_u32 v134, v153, v134, 0x7fff
	v_and_b32_e32 v140, 1, v32
	v_mov_b16_e64 v32.l, v146.h
	v_cmp_o_f32_e64 s10, v154, v154
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v154, v33, v42
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v42.l, 0x7fff, v163.h, s5
	v_add3_u32 v140, v152, v140, 0x7fff
	v_and_b32_e32 v142, 1, v32
	v_mov_b16_e64 v32.l, v144.h
	v_cmp_o_f32_e64 s5, v149, v149
	v_cmp_o_f32_e64 s17, v146, v146
	v_cndmask_b16 v42.h, 0x7fff, v59.h, s10
	v_cmp_o_f32_e64 s10, v151, v151
	v_and_b32_e32 v152, 1, v32
	v_mov_b16_e64 v32.l, v149.h
	v_add3_u32 v142, v146, v142, 0x7fff
	v_cndmask_b16 v145.l, 0x7fff, v145.h, s8
	v_cmp_o_f32_e64 s19, v150, v150
	v_add3_u32 v144, v144, v152, 0x7fff
	v_and_b32_e32 v153, 1, v32
	v_mov_b16_e64 v32.l, v151.h
	v_cmp_o_f32_e64 s20, v167, v167
	v_cndmask_b16 v59.h, 0x7fff, v134.h, s11
	v_cndmask_b16 v134.h, 0x7fff, v140.h, s16
	v_add3_u32 v149, v149, v153, 0x7fff
	v_and_b32_e32 v158, 1, v32
	v_mov_b16_e64 v32.l, v150.h
	v_cndmask_b16 v140.h, 0x7fff, v142.h, s17
	v_cndmask_b16 v134.l, 0x7fff, v159.h, vcc_lo
	v_cndmask_b16 v145.h, 0x7fff, v149.h, s5
	v_add3_u32 v151, v151, v158, 0x7fff
	v_and_b32_e32 v162, 1, v32
	v_mov_b16_e64 v32.l, v167.h
	v_cndmask_b16 v146.l, 0x7fff, v139.h, s13
	v_cndmask_b16 v139.h, 0x7fff, v144.h, s18
	v_cndmask_b16 v142.h, 0x7fff, v151.h, s10
	v_add3_u32 v150, v150, v162, 0x7fff
	v_and_b32_e32 v152, 1, v32
	v_mov_b16_e64 v32.l, v168.h
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v131, v154, v131
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v146.h, 0x7fff, v150.h, s19
	v_add3_u32 v151, v167, v152, 0x7fff
	v_and_b32_e32 v153, 1, v32
	v_mov_b16_e64 v32.l, v169.h
	v_cmp_o_f32_e64 s9, v165, v165
	v_mov_b16_e64 v165.h, v32.h
	v_cndmask_b16 v144.h, 0x7fff, v151.h, s20
	v_add3_u32 v152, v168, v153, 0x7fff
	v_and_b32_e32 v149, 1, v32
	v_mov_b16_e64 v32.l, v155.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v151, v157, v130
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e64 v165.l, v156.h
	v_cmp_o_f32_e64 s21, v168, v168
	v_cmp_o_f32_e64 s4, v169, v169
	v_and_b32_e32 v153, 1, v32
	v_mov_b16_e64 v32.l, v151.h
	v_and_b32_e32 v159, 1, v165
	v_add3_u32 v149, v169, v149, 0x7fff
	v_cndmask_b16 v140.l, 0x7fff, v147.h, s7
	v_add3_u32 v150, v155, v153, 0x7fff
	v_mov_b16_e64 v150.l, v131.h
	v_and_b32_e32 v153, 1, v32
	v_mov_b16_e32 v32.l, v37.h
	v_cndmask_b16 v147.h, 0x7fff, v152.h, s21
	v_cndmask_b16 v130.h, 0x7fff, v150.h, vcc_lo
	v_mov_b16_e64 v150.h, v32.h
	v_cndmask_b16 v149.h, 0x7fff, v149.h, s4
	v_add3_u32 v152, v156, v159, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_add3_u32 v153, v151, v153, 0x7fff
	v_and_b32_e32 v150, 1, v150
	v_cmp_o_f32_e64 s4, v151, v151
	v_and_b32_e32 v151, 1, v32
	v_cndmask_b16 v130.l, 0x7fff, v152.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_add3_u32 v129, v131, v150, 0x7fff
	v_mov_b16_e64 v150.l, v69.h
	v_mov_b16_e64 v150.h, v32.h
	v_cndmask_b16 v35.h, 0x7fff, v153.h, s4
	v_cmp_o_f32_e64 s4, v37, v37
	v_mov_b16_e32 v32.l, v36.h
	v_cndmask_b16 v35.l, 0x7fff, v129.h, vcc_lo
	v_and_b32_e32 v131, 1, v150
	v_add3_u32 v150, v37, v151, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v37, v34, v68
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v68.h, v32.h
	v_and_b32_e32 v129, 1, v32
	v_add3_u32 v67, v69, v131, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v150.h, s4
	v_mov_b16_e32 v68.l, v37.h
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_add3_u32 v69, v36, v129, 0x7fff
	v_cmp_o_f32_e64 s4, v36, v36
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v36, v61, v30
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v68, 1, v68
	v_cndmask_b16 v34.l, 0x7fff, v67.h, vcc_lo
	v_mov_b16_e32 v62.l, v31.h
	v_mov_b16_e32 v62.h, v32.h
	v_mov_b16_e32 v32.l, v36.h
	v_add3_u32 v61, v37, v68, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v37, v33, v52 :: v_dual_and_b32 v52, 1, v62
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v67, 1, v32
	v_cndmask_b16 v30.h, 0x7fff, v69.h, s4
	v_cmp_o_f32_e64 s4, v36, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v29, v37, v29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v30.l, 0x7fff, v61.h, vcc_lo
	v_add3_u32 v62, v36, v67, 0x7fff
	v_add3_u32 v36, v31, v52, 0x7fff
	v_mov_b16_e32 v51.l, v28.h
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v51.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v31, v33, v49
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v37.h, 0x7fff, v62.h, s4
	v_and_b32_e32 v52, 1, v32
	v_and_b32_e32 v49, 1, v51
	v_cmp_o_f32_e64 s4, v29, v29
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v26, v31, v26
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v37.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v51, v29, v52, 0x7fff
	v_add3_u32 v29, v28, v49, 0x7fff
	v_mov_b16_e32 v36.l, v27.h
	v_mov_b16_e32 v32.l, v26.h
	v_mov_b16_e32 v36.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v28, v33, v45
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v31.h, 0x7fff, v51.h, s4
	v_and_b32_e32 v47, 1, v32
	v_and_b32_e32 v36, 1, v36
	v_cmp_o_f32_e64 s4, v26, v26
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v25, v28, v25
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v31.l, 0x7fff, v29.h, vcc_lo
	v_add3_u32 v45, v26, v47, 0x7fff
	v_add3_u32 v26, v27, v36, 0x7fff
	v_mov_b16_e32 v29.l, v24.h
	v_mov_b16_e32 v32.l, v25.h
	v_mov_b16_e32 v29.h, v32.h
	v_cndmask_b16 v28.h, 0x7fff, v45.h, s4
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_cmp_o_f32_e64 s4, v25, v25
	v_and_b32_e32 v45, 1, v32
	v_and_b32_e32 v29, 1, v29
	v_cndmask_b16 v142.l, 0x7fff, v164.h, s9
	v_cndmask_b16 v28.l, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cndmask_b16 v144.l, 0x7fff, v160.h, s14
	v_cndmask_b16 v149.l, 0x7fff, v173.h, s6
	v_cndmask_b16 v147.l, 0x7fff, v161.h, s15
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v36, 16, v63
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v27, v33, v36 :: v_dual_lshlrev_b32 v44, 16, v143
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v23, v27, v23
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v27.h, v32.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v36, v33, v44
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v44, v25, v45, 0x7fff
	v_add3_u32 v25, v24, v29, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v29, 16, v55
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v23.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v22, v36, v22
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v36, 16, v54
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v26.h, 0x7fff, v44.h, s4
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v24, v33, v29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v23, v23
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v25.h, v32.h
	v_and_b32_e32 v44, 1, v32
	v_mov_b16_e32 v27.l, v22.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v29, v33, v36
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v21, v24, v21
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v36, v23, v44, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v20, v29, v20 :: v_dual_and_b32 v27, 1, v27
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v21.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v29, 16, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v24.h, 0x7fff, v36.h, s4
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v23, v22, v27, 0x7fff
	v_mov_b16_e32 v25.l, v20.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v27, 16, v50
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v36, 1, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v22, v33, v27 :: v_dual_and_b32 v25, 1, v25
	v_mul_f32_e32 v27, v33, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v29, v21, v36, 0x7fff
	v_mov_b16_e32 v23.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v19, v22, v19 :: v_dual_mul_f32 v18, v27, v18
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v21, v20, v25, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v25, 16, v48
	v_lshlrev_b32_e32 v27, 16, v46
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v22.h, 0x7fff, v29.h, s4
	v_mov_b16_e32 v32.l, v19.h
	v_mov_b16_e32 v23.l, v18.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v20, v33, v25
	v_mul_f32_e32 v25, v33, v27
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v19, v19
	v_cndmask_b16 v22.l, 0x7fff, v21.h, vcc_lo
	v_mov_b16_e32 v21.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_and_b32_e32 v29, 1, v32
	v_and_b32_e32 v23, 1, v23
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v17, v20, v17 :: v_dual_mul_f32 v16, v25, v16
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v25, 16, v132
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v27, v19, v29, 0x7fff
	v_add3_u32 v19, v18, v23, 0x7fff
	v_mov_b16_e32 v32.l, v17.h
	v_mov_b16_e32 v21.l, v16.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v23, 16, v133
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b32_e64 v29, v35, v30, s0
	v_cndmask_b16 v20.h, 0x7fff, v27.h, s4
	v_and_b32_e32 v27, 1, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v18, v33, v23 :: v_dual_and_b32 v21, 1, v21
	v_mul_f32_e32 v23, v33, v25
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v17, v17
	v_cndmask_b16 v20.l, 0x7fff, v19.h, vcc_lo
	v_mov_b16_e32 v19.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v25, v17, v27, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v15, v18, v15 :: v_dual_mul_f32 v14, v23, v14
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v17, v16, v21, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v21, 16, v141
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v23, 16, v148
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v15.h
	v_mov_b16_e32 v19.l, v14.h
	v_cndmask_b16 v18.h, 0x7fff, v25.h, s4
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v16, v33, v21
	v_mul_f32_e32 v21, v33, v23
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v25, 1, v32
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s4, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v13, v16, v13 :: v_dual_mul_f32 v12, v21, v12
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v23, v15, v25, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v15, v14, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v32.l, v13.h
	v_mov_b16_e32 v17.l, v12.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v19, 16, v136
	v_lshlrev_b32_e32 v21, 16, v135
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v17.h, v32.h
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s4
	v_and_b32_e32 v23, 1, v32
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v14, v33, v19
	v_mul_f32_e32 v19, v33, v21
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v21, v13, v23, 0x7fff
	v_cmp_o_f32_e64 s4, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v10, v14, v10 :: v_dual_mul_f32 v11, v19, v11
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v13, v12, v17, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 16, v58
	v_lshlrev_b32_e32 v19, 16, v60
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v16.l, 0x7fff, v15.h, vcc_lo
	v_mov_b16_e32 v32.l, v10.h
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v12, v33, v17
	v_mul_f32_e32 v17, v33, v19
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v14.h, 0x7fff, v21.h, s4
	v_and_b32_e32 v21, 1, v32
	v_and_b32_e32 v15, 1, v15
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v8, v17, v8 :: v_dual_lshlrev_b32 v13, 16, v138
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 16, v137
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v19, v10, v21, 0x7fff
	v_cmp_o_f32_e64 s4, v10, v10
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v9, v12, v9
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v10, v11, v15, 0x7fff
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v13, v33, v13
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v11, v33, v17
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v9.h
	v_mov_b16_e32 v15.l, v8.h
	v_mov_b16_e32 v15.h, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v7, v13, v7 :: v_dual_mul_f32 v6, v11, v6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v12.h, 0x7fff, v19.h, s4
	v_and_b32_e32 v19, 1, v32
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v32.l, v7.h
	v_mov_b16_e32 v11.l, v6.h
	v_mov_b16_e32 v11.h, v32.h
	v_add3_u32 v17, v9, v19, 0x7fff
	v_cmp_o_f32_e64 s4, v9, v9
	v_cndmask_b16 v12.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v9, v8, v15, 0x7fff
	v_and_b32_e32 v15, 1, v32
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v8, 16, v56
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s4
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v13, 16, v57
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v15, v7, v15, 0x7fff
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v7, v33, v8
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v8, v6, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v13, v33, v13 :: v_dual_lshlrev_b32 v6, 16, v43
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v4, v7, v4 :: v_dual_lshlrev_b32 v11, 16, v41
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v7.h, v32.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v6, v33, v6
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v5, v13, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v11, v33, v11
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v13, 16, v40
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v4.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v3, v6, v3
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v39
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v2, v11, v2 :: v_dual_mul_f32 v11, v33, v13
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v9.l, 0x7fff, v8.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v6, v33, v6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v8, 1, v32
	v_mov_b16_e32 v32.l, v3.h
	v_mov_b16_e32 v13.l, v2.h
	v_mov_b16_e32 v13.h, v32.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v1, v11, v1 :: v_dual_mul_f32 v0, v6, v0
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v8, v4, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_and_b32_e32 v4, 1, v32
	v_and_b32_e32 v6, 1, v13
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e32 v11.h, v32.h
	v_mov_b16_e32 v32.l, v0.h
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v5, v2, v6, 0x7fff
	v_and_b32_e32 v6, 1, v11
	v_and_b32_e32 v11, 1, v32
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s4
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v3, v3
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v1, v6, 0x7fff
	v_add3_u32 v3, v0, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v0, v0
	v_cmp_o_f32_e64 s7, v1, v1
	v_cndmask_b16 v8.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s4
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s5
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s7
	v_cndmask_b32_e64 v3, v38, v59, s0
	v_cndmask_b32_e64 v5, v42, v134, s0
	v_cndmask_b32_e64 v7, v140, v145, s0
	v_cndmask_b32_e64 v13, v139, v142, s0
	v_cndmask_b32_e64 v21, v144, v149, s0
	v_cndmask_b32_e64 v32, v26, v31, s0
	v_cndmask_b32_e64 v26, v31, v26, s0
	v_cndmask_b32_e64 v31, v20, v24, s0
	v_cndmask_b32_e64 v20, v24, v20, s0
	v_cndmask_b32_e64 v2, v59, v38, s0
	v_cndmask_b32_e64 v4, v134, v42, s0
	v_cndmask_b32_e64 v6, v145, v140, s0
	v_cndmask_b32_e64 v11, v142, v139, s0
	v_cndmask_b32_e64 v17, v146, v147, s0
	v_cndmask_b32_e64 v19, v149, v144, s0
	v_cndmask_b32_e64 v23, v34, v130, s0
	v_cndmask_b32_e64 v25, v130, v34, s0
	v_cndmask_b32_e64 v27, v30, v35, s0
	v_cndmask_b32_e64 v30, v28, v37, s0
	v_cndmask_b32_e64 v28, v37, v28, s0
	v_cndmask_b32_e64 v24, v18, v22, s0
	v_cndmask_b32_e64 v18, v22, v18, s0
	v_cndmask_b32_e64 v33, v12, v16, s0
	v_cndmask_b32_e64 v12, v16, v12, s0
	v_cndmask_b32_e64 v34, v10, v14, s0
	v_cndmask_b32_e64 v10, v14, v10, s0
	v_cndmask_b32_e64 v35, v0, v9, s0
	v_cndmask_b32_e64 v0, v9, v0, s0
	v_cndmask_b32_e64 v36, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	v_permlanex16_b32 v3, v3, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v21, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v26, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v20, s52, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v15, v147, v146, s0
	v_permlanex16_b32 v9, v17, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v25, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v29, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v28, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v18, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v12, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v10, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v0, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v1, s52, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v2, v123
	v_perm_b32 v1, v3, v2, v124
	v_perm_b32 v2, v5, v4, v123
	v_perm_b32 v3, v5, v4, v124
	v_perm_b32 v4, v7, v6, v123
	v_perm_b32 v5, v7, v6, v124
	v_perm_b32 v6, v8, v11, v123
	v_perm_b32 v7, v8, v11, v124
	v_perm_b32 v10, v13, v19, v123
	v_perm_b32 v11, v13, v19, v124
	v_perm_b32 v18, v21, v32, v123
	v_perm_b32 v19, v21, v32, v124
	v_perm_b32 v20, v22, v31, v123
	v_perm_b32 v21, v22, v31, v124
	v_add_lshl_u32 v31, s38, v64, 1
	v_perm_b32 v8, v9, v15, v123
	v_perm_b32 v9, v9, v15, v124
	v_perm_b32 v12, v14, v23, v123
	v_perm_b32 v13, v14, v23, v124
	v_perm_b32 v14, v16, v27, v123
	v_perm_b32 v15, v16, v27, v124
	v_perm_b32 v22, v25, v24, v123
	v_perm_b32 v23, v25, v24, v124
	v_perm_b32 v24, v26, v33, v123
	v_perm_b32 v25, v26, v33, v124
	v_perm_b32 v26, v28, v34, v123
	v_perm_b32 v27, v28, v34, v124
	v_cndmask_b32_e64 v34, 0x80000000, v31, s1
	v_add_lshl_u32 v32, v116, s38, 1
	v_add_lshl_u32 v33, v117, s38, 1
	v_perm_b32 v28, v29, v35, v123
	v_perm_b32 v29, v29, v35, v124
	v_add_lshl_u32 v35, v118, s38, 1
	buffer_store_b128 v[0:3], v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v119, s38, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_perm_b32 v16, v17, v30, v123
	v_perm_b32 v17, v17, v30, v124
	v_cndmask_b32_e64 v1, 0x80000000, v35, s1
	v_add_lshl_u32 v2, v120, s38, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v3, v121, s38, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v32, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v33, s[24:27], 0 offen
	v_add_lshl_u32 v4, v122, s38, 1
	buffer_store_b128 v[12:15], v1, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s1
	buffer_store_b128 v[16:19], v0, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s1
	v_perm_b32 v30, v37, v36, v123
	v_perm_b32 v31, v37, v36, v124
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	s_clause 0x2
	buffer_store_b128 v[20:23], v1, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v0, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v2, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s6, s4, s51
	s_xor_b32 s5, s5, s50
	s_mul_i32 s7, s6, s48
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s6, 1
	s_sub_i32 s8, s4, s48
	s_cmp_ge_u32 s4, s48
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s8, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s48
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_cselect_b32 s4, s7, s6
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_xor_b32 s4, s4, s5
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	s_sub_i32 s4, s4, s5
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s5, s4, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s4, s4, s34
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s22, s5
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s10, s2, s4
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s8, s6, 4
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s8
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s9, 0, s7
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v22, s6
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v22
	v_mov_b32_e32 v22, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v134, 0
	s_mul_hi_u32 s4, s6, s9
	s_abs_i32 s9, s10
	s_add_i32 s6, s6, s4
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	s_mul_hi_u32 s4, s9, s6
	s_xor_b32 s6, s10, s8
	s_mul_i32 s11, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s9, s7
	s_cmp_ge_u32 s9, s7
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s9, s7
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	s_cselect_b32 s4, s11, s4
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v144, 0
	s_xor_b32 s7, s4, s6
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	s_sub_i32 s4, s7, s6
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s8, s4, s8
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	s_sub_i32 s8, s10, s8
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v157, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s8, s8, s5
	.loc	1 226 13 is_stmt 1              ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s5, s8, 4
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v1, s7, 7, v73
	s_lshl_b32 s6, s6, 7
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s5, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v3, s6, v1
	s_mov_b32 s6, s49
	v_mov_b32_e32 v1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[67:68], null, s35, v2, v[66:67]
	v_mad_u64_u32 v[68:69], null, s35, v3, v[65:66]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v33, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v41, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v49, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v57, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u8 v69, v67, s[28:31], 0 offen
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v67, 16, v67
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	buffer_load_b32 v129, v68, s[36:39], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v68, 16, v68
	s_add_i32 s6, s6, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s6, 0
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v125, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[161:162], v126
	ds_load_b64 v[163:164], v127
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v128, v129
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[129:132], v126 offset1:32
	ds_load_2addr_b64 v[133:136], v126 offset0:64 offset1:96
	ds_load_2addr_b64 v[137:140], v126 offset0:128 offset1:160
	ds_load_2addr_b64 v[141:144], v126 offset0:192 offset1:224
	ds_load_2addr_b64 v[145:148], v127 offset1:32
	ds_load_2addr_b64 v[149:152], v127 offset0:64 offset1:96
	ds_load_2addr_b64 v[153:156], v127 offset0:128 offset1:160
	ds_load_2addr_b64 v[157:160], v127 offset0:192 offset1:224
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[129:130], v[161:162], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[131:132], v[161:162], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[133:134], v[161:162], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[135:136], v[161:162], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[137:138], v[161:162], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[139:140], v[161:162], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[141:142], v[161:162], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[143:144], v[161:162], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[145:146], v[163:164], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[147:148], v[163:164], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[149:150], v[163:164], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[151:152], v[163:164], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[153:154], v[163:164], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[155:156], v[163:164], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[157:158], v[163:164], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[159:160], v[163:164], v[56:63] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v157, v0
	v_cvt_f32_i32_e32 v154, v1
	v_cvt_f32_i32_e32 v153, v2
	v_cvt_f32_i32_e32 v151, v3
	v_cvt_f32_i32_e32 v152, v4
	v_cvt_f32_i32_e32 v150, v5
	v_cvt_f32_i32_e32 v149, v6
	v_cvt_f32_i32_e32 v148, v7
	v_cvt_f32_i32_e32 v147, v8
	v_cvt_f32_i32_e32 v146, v9
	v_cvt_f32_i32_e32 v144, v10
	v_cvt_f32_i32_e32 v143, v11
	v_cvt_f32_i32_e32 v145, v12
	v_cvt_f32_i32_e32 v142, v13
	v_cvt_f32_i32_e32 v141, v14
	v_cvt_f32_i32_e32 v140, v15
	v_cvt_f32_i32_e32 v139, v16
	v_cvt_f32_i32_e32 v138, v17
	v_cvt_f32_i32_e32 v137, v18
	v_cvt_f32_i32_e32 v135, v19
	v_cvt_f32_i32_e32 v136, v20
	v_cvt_f32_i32_e32 v134, v21
	v_cvt_f32_i32_e32 v133, v22
	v_cvt_f32_i32_e32 v132, v23
	v_cvt_f32_i32_e32 v156, v24
	v_cvt_f32_i32_e32 v155, v25
	v_cvt_f32_i32_e32 v131, v26
	v_cvt_f32_i32_e32 v130, v27
	v_cvt_f32_i32_e32 v129, v28
	v_cvt_f32_i32_e32 v69, v29
	v_cvt_f32_i32_e32 v68, v30
	v_cvt_f32_i32_e32 v67, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v30, v33
	v_cvt_f32_i32_e32 v28, v34
	v_cvt_f32_i32_e32 v29, v35
	v_cvt_f32_i32_e32 v27, v36
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v24, v38
	v_cvt_f32_i32_e32 v25, v39
	v_cvt_f32_i32_e32 v22, v40
	v_cvt_f32_i32_e32 v23, v41
	v_cvt_f32_i32_e32 v20, v42
	v_cvt_f32_i32_e32 v21, v43
	v_cvt_f32_i32_e32 v18, v44
	v_cvt_f32_i32_e32 v19, v45
	v_cvt_f32_i32_e32 v16, v46
	v_cvt_f32_i32_e32 v17, v47
	v_cvt_f32_i32_e32 v14, v48
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v12, v50
	v_cvt_f32_i32_e32 v13, v51
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v8, v54
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v6, v56
	v_cvt_f32_i32_e32 v7, v57
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v0, v63
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge4
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 180
		.amdhsa_next_free_sgpr 53
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 180
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8340
; TotalNumSgprs: 55
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 180
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
