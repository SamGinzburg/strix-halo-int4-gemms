	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s19, 0x7f
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
	s_ashr_i32 s33, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s12, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s12, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph3
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_lshlrev_b32_e32 v4, 4, v0
	.loc	1 213 14 is_stmt 1              ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v2, 2, v0
	v_bfe_i32 v6, v0, 3, 1
	v_bfe_i32 v7, v0, 5, 1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 16, v0
	v_and_b32_e32 v4, 0x70, v4
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v65, 12, v2
	v_and_b32_e32 v2, 0x77c, v2
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s35, s12, 2
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v64, 15, v0
	v_and_or_b32 v117, 0x88, v6, v4
	v_and_b32_e32 v4, 0x88, v7
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v3
	v_bfe_i32 v5, v0, 7, 1
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_bfe_u32 v70, v0, 4, 4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_bfe_u32 v71, v0, 4, 1
	v_xor_b32_e32 v2, v4, v2
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v72, 2, v0
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s0, s13, s0
	v_and_b32_e32 v8, 0x7f, v0
	s_ashr_i32 s44, s0, 1
	v_and_b32_e32 v5, 0x88, v5
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s44, 15
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
	s_mov_b32 s24, s4
	s_lshr_b32 s1, s1, 28
	v_xor_b32_e32 v5, v5, v8
	s_add_i32 s0, s0, s1
	v_xor_b32_e32 v6, 8, v117
	s_ashr_i32 s14, s0, 4
	s_cmp_gt_i32 s13, 1
	v_cmp_eq_u32_e64 s0, 0, v3
	s_cselect_b32 s13, -1, 0
	s_abs_i32 s45, s35
	v_mov_b32_e32 v3, 0x7632
	s_cvt_f32_u32 s1, s45
	v_mad_u64_u32 v[66:67], null, s19, v64, v[1:2]
	v_mov_b32_e32 v1, 0x5410
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v4, s1
	v_cndmask_b32_e64 v3, 0x3276, v3, s0
	s_and_b32 s25, s5, 0xffff
	s_sub_i32 s5, 0, s45
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
.Ltmp12:
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v73, 42, v71
	v_lshl_or_b32 v3, v3, 8, v3
	v_or_b32_e32 v74, 44, v71
	v_or_b32_e32 v75, 46, v71
	v_lshl_or_b32 v1, v1, 8, v1
	v_readfirstlane_b32 s1, v4
	v_and_b32_e32 v3, 0x760076, v3
	v_or_b32_e32 v76, 48, v71
	v_or_b32_e32 v77, 50, v71
	v_and_b32_e32 v1, 0x540054, v1
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_lshl_or_b32 v3, v3, 4, v3
	v_or_b32_e32 v78, 52, v71
	v_or_b32_e32 v79, 54, v71
	v_lshl_or_b32 v1, v1, 4, v1
	s_cvt_u32_f32 s4, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b32_e64 v0, 0, 1, s13
	v_or_b32_e32 v80, 56, v71
	s_mul_i32 s5, s5, s4
	v_or_b32_e32 v81, 58, v71
	v_or_b32_e32 v82, 60, v71
	v_or_b32_e32 v83, 62, v71
	v_or_b32_e32 v84, 64, v71
	v_or_b32_e32 v85, 0x42, v71
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
	v_sub_nc_u32_e32 v116, s44, v64
	v_add_nc_u32_e32 v118, 16, v66
	v_add_nc_u32_e32 v119, 32, v66
	v_add_nc_u32_e32 v120, 48, v66
	v_add_nc_u32_e32 v121, 64, v66
	v_add_nc_u32_e32 v122, 0x50, v66
	v_add_nc_u32_e32 v123, 0x60, v66
	v_add_nc_u32_e32 v124, 0x70, v66
	v_and_b32_e32 v125, 0x5040504, v1
	v_and_b32_e32 v126, 0x7060706, v3
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s3, 4
	v_cmp_ne_u32_e64 s3, 1, v0
	v_add_nc_u32_e32 v127, 0, v5
	v_add_nc_u32_e32 v128, 0, v6
	v_add_nc_u32_e32 v129, 0, v2
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_mul_hi_u32 s5, s4, s5
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_max_i32 s46, s14, 1
	s_bfe_i32 s47, s12, 0x1001d
	s_add_i32 s48, s4, s5
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s40, s10
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s17, s5, 7
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v32, s4, v64
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s17, v71
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 2, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v37, s17, v77
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 4, v71
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v32, 1, v32
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s17, v34
	v_or_b32_e32 v36, s17, v76
	v_or_b32_e32 v166, s17, v84
	.loc	1 242 18 is_stmt 1              ; generate_amdgcn.py:242:18
	buffer_load_u16 v160, v32, s[36:39], 0 offen
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v161, v33, s[40:43], 0 offen
	v_lshlrev_b32_e32 v33, 1, v37
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v35
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 12, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v63, v33, s[40:43], 0 offen
	buffer_load_u16 v62, v34, s[40:43], 0 offen
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v33, 6, v71
	v_or_b32_e32 v34, 8, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v167, s17, v85
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v166, 1, v166
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v164, s17, v86
	v_or_b32_e32 v33, s17, v33
	v_or_b32_e32 v34, s17, v34
	v_or_b32_e32 v169, s17, v92
	v_or_b32_e32 v165, s17, v87
	v_or_b32_e32 v163, s17, v89
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v173, s17, v103
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v59, v33, s[40:43], 0 offen
	buffer_load_u16 v60, v34, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v33, 14, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s17, v35
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 18, v71
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s18, s4, s19
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v174, s17, v105
	v_or_b32_e32 v33, s17, v33
	v_or_b32_e32 v175, s17, v106
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s30, s18, s17
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v168, 16, v161
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v161, s17, v91
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v62, 16, v62
	v_lshlrev_b32_e32 v32, 1, v32
	buffer_load_u16 v61, v32, s[40:43], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v59, 16, v59
	v_lshlrev_b32_e32 v34, 1, v34
	s_clause 0x1
	buffer_load_u16 v55, v34, s[40:43], 0 offen
	buffer_load_u16 v56, v33, s[40:43], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s17, v35
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 24, v71
	v_or_b32_e32 v33, 20, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v35, s17, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v33, s17, v33
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	buffer_load_u16 v51, v34, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 10, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v33, 1, v33
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 26, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v32
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	buffer_load_u16 v50, v35, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v35, 32, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v35, s17, v35
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v170, 16, v61
	v_lshlrev_b32_e32 v32, 1, v32
	buffer_load_u16 v58, v32, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 16, v71
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v32
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v55, 16, v55
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v56, 16, v56
	v_lshlrev_b32_e32 v63, 16, v63
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v32, 1, v32
	s_clause 0x1
	buffer_load_u16 v159, v36, s[40:43], 0 offen
	buffer_load_u16 v54, v32, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 22, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v36, s17, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b32_e32 v32, s17, v32
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v50, 16, v50
	v_lshlrev_b32_e32 v32, 1, v32
	s_clause 0x1
	buffer_load_u16 v52, v33, s[40:43], 0 offen
	buffer_load_u16 v53, v32, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 28, v71
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s17, v34
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v34, 30, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v32
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v34, s17, v34
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	buffer_load_u16 v48, v33, s[40:43], 0 offen
	v_lshlrev_b32_e32 v34, 1, v34
	s_clause 0x1
	buffer_load_u16 v47, v34, s[40:43], 0 offen
	buffer_load_u16 v49, v32, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v33, 34, v71
	v_or_b32_e32 v34, 40, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v33
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v35
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v35, s17, v82
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	s_clause 0x1
	buffer_load_u16 v46, v33, s[40:43], 0 offen
	buffer_load_u16 v45, v32, s[40:43], 0 offen
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v32, 36, v71
	v_or_b32_e32 v33, 38, v71
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v40, 1, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v32
	v_or_b32_e32 v33, s17, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	v_lshlrev_b32_e32 v33, 1, v33
	s_clause 0x1
	buffer_load_u16 v44, v32, s[40:43], 0 offen
	buffer_load_u16 v43, v33, s[40:43], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v34
	v_or_b32_e32 v33, s17, v73
	v_or_b32_e32 v34, s17, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	v_lshlrev_b32_e32 v33, 1, v33
	s_clause 0x1
	buffer_load_u16 v57, v32, s[40:43], 0 offen
	buffer_load_u16 v42, v33, s[40:43], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v75
	v_or_b32_e32 v33, s17, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v32, 1, v32
	v_lshlrev_b32_e32 v33, 1, v33
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v54, 16, v54
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v46, 16, v46
	v_lshlrev_b32_e32 v49, 16, v49
	v_lshlrev_b32_e32 v34, 1, v34
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v45, 16, v45
	v_lshlrev_b32_e32 v162, 1, v36
	s_clause 0x1
	buffer_load_u16 v41, v34, s[40:43], 0 offen
	buffer_load_u16 v39, v32, s[40:43], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v79
	v_or_b32_e32 v34, s17, v81
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v57, 16, v57
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v42
	v_lshlrev_b32_e32 v47, 16, v47
	v_lshlrev_b32_e32 v32, 1, v32
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v37, 1, v34
	s_clause 0x4
	buffer_load_u16 v38, v32, s[40:43], 0 offen
	buffer_load_u16 v34, v33, s[40:43], 0 offen
	buffer_load_u16 v35, v37, s[40:43], 0 offen
	buffer_load_u16 v36, v40, s[40:43], 0 offen
	buffer_load_u16 v40, v162, s[40:43], 0 offen
	.loc	1 242 18 is_stmt 1              ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v33, 16, v160
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v32, s17, v83
	v_or_b32_e32 v162, s17, v88
	v_or_b32_e32 v160, s17, v90
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v41, v33, v41
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v134, v41, v134
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v45, v33, v45 :: v_dual_lshlrev_b32 v32, 1, v32
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v171, v33, v62
	v_mul_f32_e32 v54, v33, v54
	v_mul_f32_e32 v42, v33, v42
	v_mul_f32_e32 v47, v33, v47
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v168, v33, v168 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v139, v45, v139
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	buffer_load_u16 v37, v32, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v159, v33, v159
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v155, v171, v155
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v171, v33, v59
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v141, v47, v141 :: v_dual_mul_f32 v172, v54, v148
	v_mul_f32_e32 v158, v168, v158
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v168, s17, v93
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.h, 0
	v_cmp_o_f32_e64 s15, v134, v134
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v61, v159, v157
	v_mul_f32_e32 v151, v171, v151
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v171, s17, v99
	v_or_b32_e32 v157, s17, v94
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v41.h, v32.h
	v_mov_b16_e64 v32.l, v155.h
	v_cmp_o_f32_e64 s12, v155, v155
	v_cmp_o_f32_e64 s11, v158, v158
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v35, 16, v35
	v_lshlrev_b32_e32 v54, 1, v162
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v162, s17, v104
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s16, v151, v151
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v34, v33, v34 :: v_dual_lshlrev_b32 v47, 1, v169
	v_dual_mul_f32 v57, v33, v57 :: v_dual_lshlrev_b32 v52, 16, v52
	v_dual_mul_f32 v60, v33, v60 :: v_dual_lshlrev_b32 v167, 1, v167
	v_mul_f32_e32 v35, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v33, v52
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v57, v57, v136
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v159, v33, v170
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v169, v42, v135 :: v_dual_lshlrev_b32 v170, 16, v58
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v58, v166, s[40:43], 0 offen
	buffer_load_u16 v59, v167, s[40:43], 0 offen
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v167, s17, v98
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v42.h, v32.h
	v_mov_b16_e64 v42.l, v158.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v166, v33, v170
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v170, v60, v153
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v39, v33, v39 :: v_dual_lshlrev_b32 v60, 1, v164
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v164, 1, v165
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v165, v33, v55 :: v_dual_mul_f32 v154, v159, v154
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v159, s17, v97
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s14, v57, v57
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v153, v166, v152
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v166, v33, v56
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v55, v60, s[40:43], 0 offen
	buffer_load_u16 v56, v164, s[40:43], 0 offen
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v35, v35, v69 :: v_dual_lshlrev_b32 v60, 1, v163
	v_mul_f32_e32 v163, v52, v146
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v63, v33, v63
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v152, s17, v100
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e64 v41.l, v154.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v164, v165, v150
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v165, s17, v101
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s10, v154, v154
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v146, s17, v110
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s9, v170, v170
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v150, s17, v112
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v69, v34, v130
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e64 v130.h, v32.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v62, v63, v156
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v63, s17, v95
	v_or_b32_e32 v156, s17, v96
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v136, 1, v165
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v149, v166, v149
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v166, s17, v102
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s8, v164, v164
	v_cmp_o_f32_e64 s4, v163, v163
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v150, 1, v150
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e64 v130.l, v69.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v36, v33, v36 :: v_dual_lshlrev_b32 v45, 1, v63
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v63, 1, v159
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v159, s17, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_and_b32_e32 v130, 1, v130
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v36, v36, v68 :: v_dual_lshlrev_b32 v159, 1, v159
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v37, v33, v37
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v148, 16, v53
	s_clause 0x1
	buffer_load_u16 v53, v54, s[40:43], 0 offen
	buffer_load_u16 v54, v60, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v50, v33, v50
	v_mul_f32_e32 v51, v33, v51
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v37, v37, v67
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v60, v33, v148
	.loc	1 243 26 is_stmt 1              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v148, s17, v111
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v67.l, v36.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v147, v51, v147
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v67.h, v32.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v145, v60, v145
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v67, 1, v67
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v58, 16, v58
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v59, 16, v59
	v_lshlrev_b32_e32 v48, 16, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v58, v33, v58
	v_mul_f32_e32 v59, v33, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v48, v33, v48 :: v_dual_lshlrev_b32 v51, 1, v161
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v60, 1, v160
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v160, v50, v144
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v161, s17, v107
	v_or_b32_e32 v144, s17, v109
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v31, v58, v31 :: v_dual_mul_f32 v46, v33, v46
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v49, v33, v49
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v58, v36, v67, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v52, v51, s[40:43], 0 offen
	buffer_load_u16 v51, v60, s[40:43], 0 offen
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v143, v48, v143
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v161, 1, v161
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s5, v160, v160
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v60, s17, v108
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v176, v49, v142 :: v_dual_lshlrev_b32 v49, 1, v168
	v_mul_f32_e32 v168, v46, v140
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v55, v33, v55 :: v_dual_lshlrev_b32 v46, 1, v156
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v156, 16, v43
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v41, 1, v41
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v48, v47, s[40:43], 0 offen
	buffer_load_u16 v50, v49, s[40:43], 0 offen
	v_lshlrev_b32_e32 v49, 1, v157
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v157, v33, v44
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v28, v55, v28
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_add3_u32 v154, v154, v41, 0x7fff
	v_mov_b16_e32 v41.h, v32.h
	v_mov_b16_e64 v41.l, v172.h
	v_cmp_o_f32_e64 s6, v168, v168
	v_mov_b16_e32 v55.h, v32.h
	v_cmp_o_f32_e64 s7, v176, v176
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v138, v157, v138
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v55.l, v28.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v138, v138
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v142, 1, v171
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v171, v39, v133
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v133, 1, v152
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v39, 1, v32
	v_mov_b16_e64 v152.h, v32.h
	v_mov_b16_e64 v152.l, v138.h
	v_mov_b16_e64 v32.l, v151.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v54, 16, v54
	v_lshlrev_b32_e32 v140, 1, v167
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v167, s17, v115
	.loc	1 244 20 is_stmt 1              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v53, v33, v53
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x5
	buffer_load_u16 v47, v45, s[40:43], 0 offen
	buffer_load_u16 v45, v46, s[40:43], 0 offen
	buffer_load_u16 v46, v63, s[40:43], 0 offen
	buffer_load_u16 v43, v142, s[40:43], 0 offen
	buffer_load_u16 v44, v140, s[40:43], 0 offen
	buffer_load_u16 v49, v49, s[40:43], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v63, v33, v156
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v140, v133, s[40:43], 0 offen
	buffer_load_u16 v142, v136, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v39, v155, v39, 0x7fff
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v156, s17, v113
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s18, v171, v171
	v_cmp_o_f32_e64 s17, v143, v143
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v167, 1, v167
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v157, v63, v137
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v63.h, v32.h
	v_mov_b16_e64 v63.l, v164.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v137, 1, v173
	v_lshlrev_b32_e32 v156, 1, v156
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s12
	v_cmp_o_f32_e64 s12, v147, v147
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v27, v53, v27 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v63, 1, v63
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v51, v33, v51 :: v_dual_and_b32 v42, 1, v42
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v135, v158, v42, 0x7fff
	v_mov_b16_e32 v42.h, v32.h
	v_mov_b16_e64 v42.l, v170.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v24, v51, v24 :: v_dual_and_b32 v41, 1, v41
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v48, 16, v48
	v_lshlrev_b32_e32 v133, 1, v166
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v158, v164, v63, 0x7fff
	v_add3_u32 v164, v172, v41, 0x7fff
	v_mov_b16_e32 v41.h, v32.h
	v_mov_b16_e64 v41.l, v176.h
	v_mov_b16_e32 v63.h, v32.h
	v_mov_b16_e64 v63.l, v160.h
	v_mov_b16_e64 v166.h, v32.h
	v_mov_b16_e64 v166.l, v57.h
	v_cndmask_b16 v39.l, 0x7fff, v135.h, s11
	v_cmp_o_f32_e64 s11, v153, v153
	v_and_b32_e32 v63, 1, v63
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x1
	buffer_load_u16 v136, v133, s[40:43], 0 offen
	buffer_load_u16 v137, v137, s[40:43], 0 offen
	v_lshlrev_b32_e32 v133, 1, v162
	v_lshlrev_b32_e32 v162, 1, v175
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v155, v170, v42, 0x7fff
	v_mov_b16_e32 v42.h, v32.h
	v_mov_b16_e64 v42.l, v163.h
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v160, v160, v63, 0x7fff
	v_mov_b16_e64 v170.h, v32.h
	v_mov_b16_e64 v170.l, v134.h
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v165, v176, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v163, v163, v42, 0x7fff
	v_mov_b16_e32 v42.h, v32.h
	v_mov_b16_e64 v42.l, v168.h
	v_and_b32_e32 v41, 1, v42
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v42, 1, v174
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v168, v168, v41, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x3
	buffer_load_u16 v63, v42, s[40:43], 0 offen
	buffer_load_u16 v41, v162, s[40:43], 0 offen
	buffer_load_u16 v42, v161, s[40:43], 0 offen
	buffer_load_u16 v133, v133, s[40:43], 0 offen
	v_lshlrev_b32_e32 v161, 1, v60
	v_lshlrev_b32_e32 v60, 1, v144
	v_lshlrev_b32_e32 v144, 1, v146
	v_lshlrev_b32_e32 v162, 1, v148
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v146, 1, v152
	v_and_b32_e32 v148, 1, v166
	v_and_b32_e32 v152, 1, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v166, v138, v146, 0x7fff
	v_add3_u32 v170, v57, v148, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v172, v134, v152, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_clause 0x7
	buffer_load_u16 v148, v60, s[40:43], 0 offen
	buffer_load_u16 v146, v144, s[40:43], 0 offen
	buffer_load_u16 v144, v162, s[40:43], 0 offen
	buffer_load_u16 v134, v150, s[40:43], 0 offen
	buffer_load_u16 v135, v156, s[40:43], 0 offen
	buffer_load_u16 v60, v159, s[40:43], 0 offen
	buffer_load_u16 v57, v167, s[40:43], 0 offen
	buffer_load_u16 v152, v161, s[40:43], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v138, 1, v32
	v_mov_b16_e64 v32.l, v153.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v156, v33, v38
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v38.l, 0x7fff, v154.h, s10
	v_cmp_o_f32_e64 s10, v149, v149
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v154, v33, v40
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v40.l, 0x7fff, v155.h, s9
	v_cmp_o_f32_e64 s9, v141, v141
	v_and_b32_e32 v150, 1, v32
	v_add3_u32 v138, v151, v138, 0x7fff
	v_mov_b16_e64 v32.l, v149.h
	v_mov_b16_e64 v151.h, v32.h
	v_mov_b16_e64 v151.l, v61.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v131, v156, v131 :: v_dual_mul_f32 v132, v154, v132
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v38.h, 0x7fff, v138.h, s16
	v_and_b32_e32 v138, 1, v32
	v_mov_b16_e64 v32.l, v147.h
	v_add3_u32 v150, v153, v150, 0x7fff
	v_cmp_o_f32_e64 s16, v145, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v138, v149, v138, 0x7fff
	v_and_b32_e32 v149, 1, v32
	v_mov_b16_e64 v32.l, v145.h
	v_cndmask_b16 v40.h, 0x7fff, v150.h, s11
	v_cmp_o_f32_e64 s11, v139, v139
	v_cndmask_b16 v138.l, 0x7fff, v158.h, s8
	v_and_b32_e32 v158, 1, v151
	v_cmp_o_f32_e64 s8, v157, v157
	v_cndmask_b16 v151.l, 0x7fff, v168.h, s6
	v_and_b32_e32 v150, 1, v32
	v_mov_b16_e64 v32.l, v143.h
	v_add3_u32 v147, v147, v149, 0x7fff
	v_cndmask_b16 v138.h, 0x7fff, v138.h, s10
	v_cmp_o_f32_e64 s10, v169, v169
	v_cndmask_b16 v149.l, 0x7fff, v165.h, s7
	v_cndmask_b16 v147.l, 0x7fff, v164.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v154, v61, v158, 0x7fff
	v_and_b32_e32 v153, 1, v32
	v_mov_b16_e64 v32.l, v141.h
	v_add3_u32 v145, v145, v150, 0x7fff
	v_cndmask_b16 v150.l, 0x7fff, v160.h, s5
	v_cndmask_b16 v147.h, 0x7fff, v147.h, s12
	v_cndmask_b16 v145.l, 0x7fff, v163.h, s4
	v_cmp_o_f32_e64 s4, v131, v131
	v_and_b32_e32 v155, 1, v32
	v_mov_b16_e64 v32.l, v139.h
	v_add3_u32 v143, v143, v153, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v145.h, s16
	v_cndmask_b16 v153.l, 0x7fff, v170.h, s14
	v_cndmask_b16 v143.l, 0x7fff, v166.h, s13
	v_and_b32_e32 v159, 1, v32
	v_mov_b16_e64 v32.l, v157.h
	v_add3_u32 v141, v141, v155, 0x7fff
	v_cndmask_b16 v150.h, 0x7fff, v143.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v139, v139, v159, 0x7fff
	v_and_b32_e32 v160, 1, v32
	v_mov_b16_e64 v32.l, v169.h
	v_cndmask_b16 v149.h, 0x7fff, v141.h, s9
	v_cndmask_b16 v139.l, 0x7fff, v172.h, s15
	v_cndmask_b16 v151.h, 0x7fff, v139.h, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v155, 1, v32
	v_mov_b16_e64 v32.l, v171.h
	v_add3_u32 v155, v169, v155, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v141, 1, v32
	v_mov_b16_e32 v32.l, v62.h
	v_cndmask_b16 v153.h, 0x7fff, v155.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v141, v171, v141, 0x7fff
	v_and_b32_e32 v159, 1, v32
	v_mov_b16_e64 v32.l, v131.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v139.h, 0x7fff, v141.h, s18
	v_add3_u32 v141, v62, v159, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v155, 1, v32
	v_mov_b16_e32 v32.l, v35.h
	v_mov_b16_e64 v141.l, v132.h
	v_cndmask_b16 v62.h, 0x7fff, v141.h, vcc_lo
	v_mov_b16_e64 v141.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v61, 1, v141
	v_add3_u32 v141, v131, v155, 0x7fff
	v_cndmask_b16 v62.l, 0x7fff, v154.h, vcc_lo
	v_and_b32_e32 v131, 1, v32
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_mov_b16_e32 v32.l, v37.h
	v_add3_u32 v61, v132, v61, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v141.h, s4
	v_add3_u32 v131, v35, v131, 0x7fff
	v_cmp_o_f32_e64 s4, v35, v35
	v_and_b32_e32 v68, 1, v32
	v_cndmask_b16 v34.l, 0x7fff, v61.h, vcc_lo
	v_add3_u32 v61, v69, v130, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_cndmask_b16 v35.h, 0x7fff, v131.h, s4
	v_add3_u32 v68, v37, v68, 0x7fff
	v_cmp_o_f32_e64 s4, v37, v37
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v37, v59, v30
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v59.l, v31.h
	v_mov_b16_e32 v59.h, v32.h
	v_cndmask_b16 v35.l, 0x7fff, v61.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v36, v33, v56
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v37.h
	v_and_b32_e32 v56, 1, v59
	v_cndmask_b16 v30.h, 0x7fff, v68.h, s4
	v_cmp_o_f32_e64 s4, v37, v37
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v29, v36, v29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v61, 1, v32
	v_cndmask_b16 v30.l, 0x7fff, v58.h, vcc_lo
	v_add3_u32 v36, v31, v56, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v31, v33, v54 :: v_dual_and_b32 v54, 1, v55
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v36.l, v27.h
	v_mov_b16_e32 v32.l, v29.h
	v_add3_u32 v59, v37, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v26, v31, v26
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v37.l, 0x7fff, v36.h, vcc_lo
	v_mov_b16_e32 v36.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_and_b32_e32 v56, 1, v32
	v_cndmask_b16 v37.h, 0x7fff, v59.h, s4
	v_cmp_o_f32_e64 s4, v29, v29
	v_mov_b16_e32 v32.l, v26.h
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v55, v29, v56, 0x7fff
	v_add3_u32 v29, v28, v54, 0x7fff
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v28, v33, v52
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v53, 1, v32
	v_mov_b16_e32 v29.l, v24.h
	v_cndmask_b16 v31.h, 0x7fff, v55.h, s4
	v_cmp_o_f32_e64 s4, v26, v26
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v25, v28, v25
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v52, v26, v53, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v29.h, vcc_lo
	v_add3_u32 v26, v27, v36, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v36, 16, v50
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v29.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v32.l, v25.h
	v_cndmask_b16 v28.h, 0x7fff, v52.h, s4
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v27, v33, v36
	v_dual_mul_f32 v36, v33, v48 :: v_dual_and_b32 v29, 1, v29
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v25, v25
	v_cndmask_b16 v28.l, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v23, v27, v23 :: v_dual_and_b32 v50, 1, v32
	v_mul_f32_e32 v22, v36, v22
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v27.h, v32.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v25, v50, 0x7fff
	v_add3_u32 v25, v24, v29, 0x7fff
	v_mov_b16_e32 v32.l, v23.h
	v_mov_b16_e32 v27.l, v22.h
	v_cndmask_b16 v26.h, 0x7fff, v48.h, s4
	v_cmp_o_f32_e64 s4, v23, v23
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v27, 1, v27
	v_mov_b16_e32 v25.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v29, 16, v47
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v47, 1, v32
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v36, 16, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v24, v33, v29
	v_mul_f32_e32 v29, v33, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v21, v24, v21
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_add3_u32 v36, v23, v47, 0x7fff
	v_add3_u32 v23, v22, v27, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v20, v29, v20 :: v_dual_lshlrev_b32 v27, 16, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v21.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v29, 16, v45
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v24.h, 0x7fff, v36.h, s4
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v22, v33, v27
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v21, v21
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	v_mov_b16_e32 v23.h, v32.h
	v_mov_b16_e32 v25.l, v20.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v27, v33, v29 :: v_dual_and_b32 v36, 1, v32
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v19, v22, v19
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v29, v21, v36, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v18, v27, v18 :: v_dual_lshlrev_b32 v27, 16, v44
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v19.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v21, v20, v25, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v25, 16, v43
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v23.l, v18.h
	v_cndmask_b16 v22.h, 0x7fff, v29.h, s4
	v_and_b32_e32 v29, 1, v32
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v20, v33, v25
	v_mul_f32_e32 v25, v33, v27
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v27, v19, v29, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v21.h, vcc_lo
	v_mov_b16_e32 v21.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_cndmask_b32_e64 v29, v34, v30, s0
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v17, v20, v17 :: v_dual_mul_f32 v16, v25, v16
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v19, v18, v23, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v23, 16, v142
	v_lshlrev_b32_e32 v25, 16, v140
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v20.h, 0x7fff, v27.h, s4
	v_mov_b16_e32 v32.l, v17.h
	v_mov_b16_e32 v21.l, v16.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v18, v33, v23
	v_mul_f32_e32 v23, v33, v25
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v17, v17
	v_cndmask_b16 v20.l, 0x7fff, v19.h, vcc_lo
	v_mov_b16_e32 v19.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_and_b32_e32 v27, 1, v32
	v_and_b32_e32 v21, 1, v21
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v15, v18, v15 :: v_dual_mul_f32 v14, v23, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v25, v17, v27, 0x7fff
	v_add3_u32 v17, v16, v21, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v23, 16, v136
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v21, 16, v137
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v15.h
	v_mov_b16_e32 v19.l, v14.h
	v_cndmask_b32_e64 v27, v30, v34, s0
	v_cndmask_b32_e64 v30, v28, v37, s0
	v_cndmask_b32_e64 v28, v37, v28, s0
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v16, v33, v21
	v_mul_f32_e32 v21, v33, v23
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v18.h, 0x7fff, v25.h, s4
	v_and_b32_e32 v25, 1, v32
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s4, v15, v15
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_mov_b16_e32 v17.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v13, v16, v13 :: v_dual_mul_f32 v12, v21, v12
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v23, v15, v25, 0x7fff
	v_add3_u32 v15, v14, v19, 0x7fff
	v_cndmask_b32_e64 v25, v62, v35, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v32.l, v13.h
	v_mov_b16_e32 v17.l, v12.h
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s4
	v_cmp_o_f32_e64 s4, v13, v13
	v_cndmask_b16 v16.l, 0x7fff, v15.h, vcc_lo
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v19, 16, v63
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v15.h, v32.h
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v21, 16, v133
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v14, v33, v19 :: v_dual_and_b32 v23, 1, v32
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v19, v33, v21
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v21, v13, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v10, v14, v10
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v13, v12, v17, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 16, v42
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v11, v19, v11
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v19, 16, v41
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v10.h
	v_cndmask_b32_e64 v23, v35, v62, s0
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v12, v33, v17
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v15.l, v11.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v17, v33, v19
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v14.h, 0x7fff, v21.h, s4
	v_and_b32_e32 v21, 1, v32
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	v_and_b32_e32 v15, 1, v15
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v13, 16, v148
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v10, v10
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v8, v17, v8
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v152
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v19, v10, v21, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v9, v12, v9
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v10, v11, v15, 0x7fff
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v13, v33, v13
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v15.h, v32.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v11, v33, v17
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v9.h
	v_mov_b16_e32 v15.l, v8.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v7, v13, v7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v12.h, 0x7fff, v19.h, s4
	v_cmp_o_f32_e64 s4, v9, v9
	v_cndmask_b16 v12.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v13, 16, v146
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v6, v11, v6 :: v_dual_and_b32 v19, 1, v32
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v15, 1, v15
	v_mov_b16_e32 v32.l, v7.h
	v_mov_b16_e32 v11.h, v32.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v13, v33, v13
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v11.l, v6.h
	v_add3_u32 v17, v9, v19, 0x7fff
	v_add3_u32 v9, v8, v15, 0x7fff
	v_and_b32_e32 v15, 1, v32
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v5, v13, v5 :: v_dual_lshlrev_b32 v8, 16, v144
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v13, 16, v60
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v157, v157, v160, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s4
	v_add3_u32 v15, v7, v15, 0x7fff
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v7, v33, v8
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cndmask_b16 v143.h, 0x7fff, v157.h, s8
	v_cndmask_b32_e64 v17, v151, v153, s0
	v_add3_u32 v8, v6, v11, 0x7fff
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v6, 16, v135
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v4, v7, v4 :: v_dual_lshlrev_b32 v11, 16, v134
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v7.l, v5.h
	v_mov_b16_e32 v7.h, v32.h
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s4
	v_cndmask_b32_e64 v21, v143, v139, s0
	v_cndmask_b32_e64 v19, v139, v143, s0
	v_cndmask_b32_e64 v34, v10, v14, s0
	v_cndmask_b32_e64 v10, v14, v10, s0
	v_cndmask_b32_e64 v15, v153, v151, s0
	v_permlanex16_b32 v14, v25, s50, 0xfedcba98 op_sel:[1,0]
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v6, v33, v6
	v_mul_f32_e32 v11, v33, v11
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v4.h
	v_cndmask_b16 v9.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v3, v6, v3 :: v_dual_lshlrev_b32 v6, 16, v57
	v_dual_mul_f32 v2, v11, v2 :: v_dual_mul_f32 v11, v33, v13
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v8, 1, v32
	v_mov_b16_e32 v13.h, v32.h
	v_add3_u32 v7, v5, v7, 0x7fff
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v6, v33, v6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v32.l, v3.h
	v_mov_b16_e32 v13.l, v2.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v1, v11, v1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v8, v4, v8, 0x7fff
	v_mov_b16_e32 v11.h, v32.h
	v_cmp_o_f32_e64 s4, v3, v3
	v_cmp_o_f32_e64 s5, v2, v2
	v_cndmask_b32_e64 v33, v12, v16, s0
	v_cndmask_b32_e64 v12, v16, v12, s0
	v_permlanex16_b32 v16, v29, s50, 0xfedcba98 op_sel:[1,0]
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v0, v6, v0
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v4, 1, v32
	v_and_b32_e32 v6, 1, v13
	v_mov_b16_e32 v11.l, v1.h
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s7, v1, v1
	v_cndmask_b32_e64 v13, v145, v149, s0
	v_mov_b16_e32 v32.l, v0.h
	v_add3_u32 v5, v2, v6, 0x7fff
	v_and_b32_e32 v6, 1, v11
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v0, v0
	v_cndmask_b16 v8.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b32_e64 v7, v147, v150, s0
	v_and_b32_e32 v11, 1, v32
	v_add3_u32 v2, v1, v6, 0x7fff
	v_cndmask_b32_e64 v32, v26, v31, s0
	v_cndmask_b32_e64 v26, v31, v26, s0
	v_cndmask_b32_e64 v31, v20, v24, s0
	v_cndmask_b32_e64 v20, v24, v20, s0
	v_cndmask_b32_e64 v6, v150, v147, s0
	v_cndmask_b32_e64 v24, v18, v22, s0
	v_cndmask_b32_e64 v18, v22, v18, s0
	v_permlanex16_b32 v7, v7, s50, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v3, v0, v11, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s4
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s5
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s7
	v_cndmask_b32_e64 v5, v38, v138, s0
	v_cndmask_b32_e64 v2, v40, v39, s0
	v_cndmask_b32_e64 v4, v138, v38, s0
	v_cndmask_b32_e64 v11, v149, v145, s0
	v_permlanex16_b32 v22, v20, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v18, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s6
	v_cndmask_b32_e64 v3, v39, v40, s0
	v_cndmask_b32_e64 v35, v0, v9, s0
	v_cndmask_b32_e64 v0, v9, v0, s0
	v_permlanex16_b32 v5, v5, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v17, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v28, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v10, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v20, v22, v31, v125
	v_cndmask_b32_e64 v36, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	v_permlanex16_b32 v3, v3, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v21, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v26, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v12, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v0, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v14, v23, v125
	v_permlanex16_b32 v37, v1, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v2, v125
	v_perm_b32 v1, v3, v2, v126
	v_perm_b32 v2, v5, v4, v125
	v_perm_b32 v3, v5, v4, v126
	v_perm_b32 v4, v7, v6, v125
	v_perm_b32 v5, v7, v6, v126
	v_perm_b32 v6, v8, v11, v125
	v_perm_b32 v7, v8, v11, v126
	v_perm_b32 v10, v13, v19, v125
	v_perm_b32 v11, v13, v19, v126
	v_perm_b32 v18, v21, v32, v125
	v_perm_b32 v19, v21, v32, v126
	v_perm_b32 v21, v22, v31, v126
	v_add_lshl_u32 v31, s30, v66, 1
	v_perm_b32 v8, v9, v15, v125
	v_perm_b32 v9, v9, v15, v126
	v_perm_b32 v13, v14, v23, v126
	v_perm_b32 v14, v16, v27, v125
	v_perm_b32 v15, v16, v27, v126
	v_perm_b32 v22, v25, v24, v125
	v_perm_b32 v23, v25, v24, v126
	v_perm_b32 v24, v26, v33, v125
	v_perm_b32 v25, v26, v33, v126
	v_perm_b32 v26, v28, v34, v125
	v_perm_b32 v27, v28, v34, v126
	v_add_lshl_u32 v32, v118, s30, 1
	v_add_lshl_u32 v33, v119, s30, 1
	v_perm_b32 v28, v29, v35, v125
	v_perm_b32 v29, v29, v35, v126
	v_add_lshl_u32 v35, v120, s30, 1
	v_perm_b32 v16, v17, v30, v125
	v_perm_b32 v17, v17, v30, v126
	v_cndmask_b32_e64 v34, 0x80000000, v31, s1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_perm_b32 v30, v37, v36, v125
	v_perm_b32 v31, v37, v36, v126
	buffer_store_b128 v[0:3], v34, s[20:23], 0 offen
	v_add_lshl_u32 v0, v121, s30, 1
	v_cndmask_b32_e64 v1, 0x80000000, v35, s1
	v_add_lshl_u32 v2, v122, s30, 1
	v_add_lshl_u32 v3, v123, s30, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v32, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v33, s[20:23], 0 offen
	v_add_lshl_u32 v4, v124, s30, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b128 v[12:15], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s1
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	buffer_store_b128 v[16:19], v0, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s1
	s_clause 0x2
	buffer_store_b128 v[20:23], v1, s[20:23], 0 offen
	buffer_store_b128 v[24:27], v0, s[20:23], 0 offen
	buffer_store_b128 v[28:31], v2, s[20:23], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s6, s4, s48
	s_xor_b32 s5, s5, s47
	s_mul_i32 s7, s6, s45
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s6, 1
	s_sub_i32 s8, s4, s45
	s_cmp_ge_u32 s4, s45
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s4, s8, s4
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s4, s45
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_cselect_b32 s4, s7, s6
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_xor_b32 s4, s4, s5
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	s_sub_i32 s4, s4, s5
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s8, s4, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s4, s4, s35
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s33, s8
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s4, s2, s4
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s9, s5, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s10, s4
	s_abs_i32 s5, s9
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v22, s6
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v22
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v28, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v130, 0
	s_mul_i32 s7, s7, s6
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	s_mul_hi_u32 s7, s6, s7
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	s_add_i32 s6, s6, s7
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	s_mul_hi_u32 s7, s10, s6
	s_xor_b32 s6, s4, s9
	s_mul_i32 s11, s7, s5
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s10, s5
	s_cmp_ge_u32 s10, s5
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s10, s5
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	s_cselect_b32 s5, s11, s7
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	s_xor_b32 s7, s5, s6
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	s_sub_i32 s5, s7, s6
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s9, s5, s9
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	s_sub_i32 s4, s4, s9
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s4, s4, s8
	.loc	1 226 13 is_stmt 1              ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s4, s4, 4
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v1, s7, 7, v72
	s_lshl_b32 s6, s6, 7
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s4, v70
	s_mov_b32 s7, s46
	v_subrev_nc_u32_e32 v3, s6, v1
	s_mov_b32 s6, s49
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[67:68], null, s44, v2, v[64:65]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[68:69], null, s44, v3, v[65:66]
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
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_add_nc_u32_e32 v69, s6, v65
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v130, s6, v67
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s6, v116
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_add_nc_u32_e32 v131, s6, v68
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v142, 0, v117
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 230 27                        ; generate_amdgcn.py:230:27
	v_cmp_gt_i32_e32 vcc_lo, s44, v69
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s7, s7, -1
	s_add_i32 s6, s6, 16
	s_cmp_lg_u32 s7, 0
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e32 v69, 0x80000000, v131, vcc_lo
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u8 v130, v130, s[24:27], 0 offen
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	buffer_load_b32 v69, v69, s[28:31], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v127, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[162:163], v142
	ds_load_b64 v[164:165], v128
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v129, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[130:133], v142 offset1:32
	ds_load_2addr_b64 v[134:137], v142 offset0:64 offset1:96
	ds_load_2addr_b64 v[138:141], v142 offset0:128 offset1:160
	ds_load_2addr_b64 v[142:145], v142 offset0:192 offset1:224
	ds_load_2addr_b64 v[146:149], v128 offset1:32
	ds_load_2addr_b64 v[150:153], v128 offset0:64 offset1:96
	ds_load_2addr_b64 v[154:157], v128 offset0:128 offset1:160
	ds_load_2addr_b64 v[158:161], v128 offset0:192 offset1:224
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[130:131], v[162:163], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[132:133], v[162:163], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[134:135], v[162:163], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[136:137], v[162:163], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[138:139], v[162:163], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[140:141], v[162:163], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[142:143], v[162:163], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[144:145], v[162:163], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[146:147], v[164:165], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[148:149], v[164:165], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[150:151], v[164:165], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[152:153], v[164:165], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[154:155], v[164:165], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[156:157], v[164:165], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[158:159], v[164:165], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[160:161], v[164:165], v[56:63] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v158, v0
	v_cvt_f32_i32_e32 v155, v1
	v_cvt_f32_i32_e32 v154, v2
	v_cvt_f32_i32_e32 v151, v3
	v_cvt_f32_i32_e32 v153, v4
	v_cvt_f32_i32_e32 v152, v5
	v_cvt_f32_i32_e32 v150, v6
	v_cvt_f32_i32_e32 v149, v7
	v_cvt_f32_i32_e32 v148, v8
	v_cvt_f32_i32_e32 v147, v9
	v_cvt_f32_i32_e32 v146, v10
	v_cvt_f32_i32_e32 v145, v11
	v_cvt_f32_i32_e32 v144, v12
	v_cvt_f32_i32_e32 v143, v13
	v_cvt_f32_i32_e32 v142, v14
	v_cvt_f32_i32_e32 v141, v15
	v_cvt_f32_i32_e32 v140, v16
	v_cvt_f32_i32_e32 v139, v17
	v_cvt_f32_i32_e32 v138, v18
	v_cvt_f32_i32_e32 v137, v19
	v_cvt_f32_i32_e32 v136, v20
	v_cvt_f32_i32_e32 v135, v21
	v_cvt_f32_i32_e32 v134, v22
	v_cvt_f32_i32_e32 v133, v23
	v_cvt_f32_i32_e32 v157, v24
	v_cvt_f32_i32_e32 v156, v25
	v_cvt_f32_i32_e32 v132, v26
	v_cvt_f32_i32_e32 v131, v27
	v_cvt_f32_i32_e32 v130, v28
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
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 177
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 177
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8424
; TotalNumSgprs: 53
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 177
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
