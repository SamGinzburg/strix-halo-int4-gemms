	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s25, 0xff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s24, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s14, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s26, s14, s24
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s26
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph66
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 283 27 is_stmt 1              ; generate_amdgcn.py:283:27
	s_lshl_b32 s0, s3, 4
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s1, s14, 2
	v_lshlrev_b32_e32 v4, 4, v0
	v_lshlrev_b32_e32 v12, 1, v0
	v_and_b32_e32 v13, 16, v0
	v_lshlrev_b32_e32 v14, 5, v0
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v1, 3, v0
	v_and_b32_e32 v6, 0x70, v4
	v_and_b32_e32 v4, 0xcf0, v4
	v_and_or_b32 v15, v12, 64, v13
	v_lshlrev_b32_e32 v17, 6, v0
	v_and_b32_e32 v18, 0x1c00, v14
	v_lshlrev_b32_e32 v2, 2, v0
	v_bfe_i32 v3, v0, 5, 1
	v_bfe_i32 v5, v0, 3, 1
	v_and_b32_e32 v16, 0xf0, v0
	v_lshlrev_b32_e32 v19, 13, v0
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s3, s15, 31
	v_xor_b32_e32 v4, v15, v4
	s_add_i32 s3, s15, s3
	v_lshlrev_b32_e32 v15, 4, v1
	s_ashr_i32 s3, s3, 1
	v_lshlrev_b32_e32 v13, 2, v13
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s16, s3, 31
	v_and_or_b32 v17, 0x300, v17, v18
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s17, s16, 31
.Ltmp12:
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_and_b32_e32 v70, 15, v0
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_lshr_b32 s17, s17, 27
	v_and_b32_e32 v2, 0x37c, v2
	s_add_i32 s17, s16, s17
	s_mov_b32 s16, s4
	s_ashr_i32 s22, s17, 5
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s27, -1, 0
	s_abs_i32 s71, s1
	v_and_b32_e32 v3, 0x88, v3
	s_cvt_f32_u32 s6, s71
	v_and_or_b32 v5, 0x88, v5, v6
	v_lshrrev_b32_e32 v7, 1, v0
	v_lshlrev_b32_e32 v18, 2, v16
	v_rcp_iflag_f32_e32 v22, s6
	v_and_b32_e32 v14, 32, v14
	v_and_or_b32 v74, 0xe000, v19, v4
	v_or3_b32 v75, v17, v15, v13
	v_add_nc_u32_e32 v6, 0, v70
	v_xor_b32_e32 v2, v3, v2
	v_xor_b32_e32 v3, 8, v5
	v_or_b32_e32 v8, 0x300, v0
	v_or_b32_e32 v9, 0x700, v0
	v_or_b32_e32 v10, 0xb00, v0
	v_readfirstlane_b32 s6, v22
	v_or_b32_e32 v11, 0xf00, v0
	v_and_b32_e32 v7, 0x70, v7
	v_and_b32_e32 v4, 28, v12
	v_add3_u32 v12, 0, v18, v14
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_lshlrev_b32_e32 v13, 1, v16
	v_xor_b32_e32 v14, 32, v74
	v_xor_b32_e32 v15, 0x2010, v75
	v_xor_b32_e32 v16, 0x4020, v75
	v_xor_b32_e32 v17, 0x6030, v75
	v_xor_b32_e32 v18, 0x8040, v75
	v_xor_b32_e32 v19, 0xa050, v75
	v_xor_b32_e32 v20, 0xc060, v75
	v_xor_b32_e32 v21, 0xe070, v75
	s_cvt_u32_f32 s6, s6
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s71
.Ltmp14:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v69, 2, v0
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v71, 16, v70
	v_or_b32_e32 v72, 32, v70
	v_or_b32_e32 v73, 48, v70
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_or_b32 v65, v1, 2, s0
	v_add_nc_u32_e32 v76, 0, v2
	v_add_nc_u32_e32 v77, 0, v5
	v_add_nc_u32_e32 v78, 0, v3
	v_add_nc_u32_e32 v79, 0, v0
	v_add_nc_u32_e32 v80, 0, v8
	v_add_nc_u32_e32 v81, 0, v9
	v_add_nc_u32_e32 v82, 0, v10
	v_add_nc_u32_e32 v83, 0, v11
	v_add_nc_u32_e32 v84, v6, v7
	v_add_nc_u32_e32 v85, v12, v4
	v_add_nc_u32_e32 v86, 0, v13
	v_add_nc_u32_e32 v87, 0, v14
	v_add_nc_u32_e32 v88, 0, v15
	v_add_nc_u32_e32 v89, 0, v16
	v_add_nc_u32_e32 v90, 0, v17
	v_add_nc_u32_e32 v91, 0, v18
	v_add_nc_u32_e32 v92, 0, v19
	v_add_nc_u32_e32 v93, 0, v20
	v_add_nc_u32_e32 v94, 0, v21
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	s_lshl_b32 s28, s25, 1
	s_mul_i32 s29, s25, 3
	s_lshl_b32 s30, s25, 2
	s_mul_i32 s31, s25, 5
	s_mul_i32 s33, s25, 6
	s_mul_i32 s34, s25, 7
	s_lshl_b32 s35, s25, 3
	s_mul_i32 s36, s25, 9
	s_mul_i32 s37, s25, 10
	s_mul_i32 s38, s25, 11
	s_mul_i32 s39, s25, 12
	s_mul_i32 s40, s25, 13
	s_mul_i32 s41, s25, 14
	s_mul_i32 s42, s25, 15
	s_lshl_b32 s43, s25, 4
	s_mul_i32 s44, s25, 17
	s_mul_i32 s45, s25, 18
	s_mul_i32 s46, s25, 19
	s_mul_i32 s47, s25, 20
	s_mul_i32 s48, s25, 21
	s_mul_i32 s49, s25, 22
	s_mul_i32 s50, s25, 23
	s_mul_i32 s51, s25, 24
	s_mul_i32 s52, s25, 25
	s_mul_i32 s53, s25, 26
	s_mul_i32 s54, s25, 27
	s_mul_i32 s55, s25, 28
	s_mul_i32 s56, s25, 29
	s_mul_i32 s57, s25, 30
	s_mul_i32 s58, s25, 31
	s_lshl_b32 s59, s25, 5
	s_mul_i32 s60, s25, 33
	s_mul_i32 s61, s25, 34
	s_mul_i32 s62, s25, 35
	s_mul_i32 s63, s25, 36
	s_mul_i32 s64, s25, 37
	s_mul_i32 s65, s25, 38
	s_mul_i32 s66, s25, 39
	s_mul_i32 s67, s25, 40
	s_mul_i32 s68, s25, 41
	s_mul_i32 s69, s25, 42
	s_mul_i32 s70, s25, 43
	s_mul_i32 s72, s25, 44
	s_mul_i32 s73, s25, 45
	s_mul_i32 s74, s25, 46
	s_mul_i32 s75, s25, 47
	s_mul_i32 s76, s25, 48
	s_mul_i32 s77, s25, 49
	s_mul_i32 s78, s25, 50
	s_mul_i32 s79, s25, 51
	s_mul_i32 s80, s25, 52
	s_mul_i32 s81, s25, 53
	s_mul_i32 s82, s25, 54
	s_mul_i32 s83, s25, 55
	s_mul_i32 s84, s25, 56
	s_mul_i32 s85, s25, 57
	s_mul_i32 s86, s25, 58
	s_mul_i32 s87, s25, 59
	s_mul_i32 s88, s25, 60
	s_mul_i32 s89, s25, 61
	s_mul_i32 s90, s25, 62
	s_mul_i32 s91, s25, 63
	s_and_b32 s13, s13, 0xffff
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_max_i32 s92, s22, 1
	s_bfe_i32 s93, s14, 0x1001d
	s_add_i32 s94, s6, s7
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 297 26                        ; generate_amdgcn.py:297:26
	v_or_b32_e32 v35, s14, v70
	v_or_b32_e32 v36, s14, v71
	v_or_b32_e32 v37, s14, v72
	v_or_b32_e32 v38, s14, v73
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	v_lshl_or_b32 v33, s10, 8, v0
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v37, 1, v37
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	v_lshlrev_b32_e32 v38, 1, v38
	s_clause 0x3
	buffer_load_u16 v50, v35, s[8:11], 0 offen
	buffer_load_u16 v51, v36, s[8:11], 0 offen
	buffer_load_u16 v52, v37, s[8:11], 0 offen
	buffer_load_u16 v53, v38, s[8:11], 0 offen
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s6, s14, s25
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	s_mov_b32 s14, s18
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s25
	s_add_i32 s10, s6, s28
	s_add_i32 s11, s6, s29
	s_add_i32 s95, s6, s33
	s_add_i32 s96, s6, s34
	s_add_i32 s97, s6, s35
	s_add_i32 s98, s6, s36
	s_add_i32 s99, s6, s37
	s_add_i32 s100, s6, s38
	s_add_i32 s101, s6, s39
	s_add_i32 s102, s6, s40
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v64, s7, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s41
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v144, s10, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s10, s6, s42
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v145, s11, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s11, s6, s43
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v148, s95, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s95, s6, s46
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v149, s96, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s96, s6, s47
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v150, s97, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s97, s6, s48
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v151, s98, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s98, s6, s49
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v152, s99, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s99, s6, s50
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v153, s100, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s100, s6, s51
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v154, s101, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s101, s6, s52
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v155, s102, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s102, s6, s53
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v156, s7, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s54
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v157, s10, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s10, s6, s55
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v158, s11, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s11, s6, s56
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v161, s95, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s95, s6, s59
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v192, s6, v33, 2
	v_add_lshl_u32 v162, s96, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s96, s6, s60
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v163, s97, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s97, s6, s61
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v164, s98, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s98, s6, s62
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v165, s99, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s99, s6, s63
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v166, s100, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s100, s6, s64
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v167, s101, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s101, s6, s65
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v168, s102, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s102, s6, s66
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v169, s7, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s67
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v170, s10, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s10, s6, s68
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v171, s11, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s11, s6, s69
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v174, s95, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s95, s6, s73
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	s_mov_b32 s15, s19
	v_add_lshl_u32 v175, s96, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s96, s6, s74
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v176, s97, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s97, s6, s75
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v177, s98, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s98, s6, s76
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v178, s99, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s99, s6, s77
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v179, s100, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s100, s6, s78
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v180, s101, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s101, s6, s79
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v181, s102, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s102, s6, s80
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v182, s7, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s81
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v183, s10, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s10, s6, s82
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v184, s11, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s11, s6, s83
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v187, s95, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s95, s6, s86
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v188, s96, v33, 2
	v_add_lshl_u32 v189, s97, v33, 2
	v_add_lshl_u32 v190, s98, v33, 2
	v_add_lshl_u32 v191, s99, v33, 2
	v_add_lshl_u32 v193, s100, v33, 2
	v_add_lshl_u32 v194, s101, v33, 2
	v_add_lshl_u32 v195, s102, v33, 2
	v_add_lshl_u32 v196, s7, v33, 2
	v_add_lshl_u32 v197, s10, v33, 2
	v_add_lshl_u32 v198, s11, v33, 2
	v_add_lshl_u32 v201, s95, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s96, s6, s87
	s_add_i32 s97, s6, s88
	s_add_i32 s98, s6, s89
	s_add_i32 s99, s6, s90
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v51
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v34, 1, v33
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s22, s6, s30
	s_add_i32 s23, s6, s31
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v146, s22, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s22, s6, s44
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v147, s23, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s23, s6, s45
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v159, s22, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s22, s6, s57
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v160, s23, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s23, s6, s58
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v172, s22, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s22, s6, s70
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v173, s23, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s23, s6, s72
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v185, s22, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s22, s6, s84
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v186, s23, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s23, s6, s85
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v199, s22, v33, 2
	v_add_lshl_u32 v200, s23, v33, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s6, s6, s91
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_cmp_lt_i32 s2, s26
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	ds_store_b32 v85, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v86
	ds_load_b128 v[38:41], v86 offset:16
	ds_load_b128 v[42:45], v86 offset:512
	ds_load_b128 v[46:49], v86 offset:528
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v141, v39, v51 :: v_dual_lshlrev_b32 v52, 16, v52
	v_mul_f32_e32 v59, v39, v50
	v_dual_mul_f32 v124, v42, v50 :: v_dual_lshlrev_b32 v53, 16, v53
	v_mul_f32_e32 v54, v34, v50
	v_mul_f32_e32 v60, v40, v50
	v_dual_mul_f32 v61, v41, v50 :: v_dual_mul_f32 v134, v34, v51
	v_dual_mul_f32 v131, v48, v50 :: v_dual_mul_f32 v202, v42, v51
	v_dual_mul_f32 v203, v43, v51 :: v_dual_mul_f32 v210, v34, v52
	v_dual_mul_f32 v208, v48, v51 :: v_dual_mul_f32 v211, v35, v52
	v_dual_mul_f32 v209, v49, v51 :: v_dual_mul_f32 v214, v38, v52
	v_dual_mul_f32 v213, v37, v52 :: v_dual_mul_f32 v226, v34, v53
	v_dual_mul_f32 v137, v36, v51 :: v_dual_add_nc_u32 v62, 0, v74
	v_dual_mul_f32 v58, v38, v50 :: v_dual_add_nc_u32 v63, 0, v75
	v_dual_mul_f32 v56, v36, v50 :: v_dual_mul_f32 v207, v47, v51
	v_mul_f32_e32 v212, v36, v52
	v_dual_mul_f32 v215, v39, v52 :: v_dual_mul_f32 v228, v36, v53
	v_dual_mul_f32 v139, v38, v51 :: v_dual_mul_f32 v216, v40, v52
	v_mul_f32_e32 v227, v35, v53
	v_dual_mul_f32 v217, v41, v52 :: v_dual_mul_f32 v230, v38, v53
	v_mul_f32_e32 v55, v35, v50
	v_dual_mul_f32 v127, v45, v50 :: v_dual_mul_f32 v142, v40, v51
	v_dual_mul_f32 v218, v42, v52 :: v_dual_mul_f32 v229, v37, v53
	v_dual_mul_f32 v219, v43, v52 :: v_dual_mul_f32 v232, v40, v53
	v_mul_f32_e32 v57, v37, v50
	v_dual_mul_f32 v125, v43, v50 :: v_dual_mul_f32 v138, v37, v51
	v_dual_mul_f32 v130, v47, v50 :: v_dual_mul_f32 v205, v45, v51
	v_dual_mul_f32 v135, v35, v51 :: v_dual_mul_f32 v220, v44, v52
	v_mul_f32_e32 v231, v39, v53
	v_dual_mul_f32 v221, v45, v52 :: v_dual_mul_f32 v234, v42, v53
	v_dual_mul_f32 v126, v44, v50 :: v_dual_mul_f32 v143, v41, v51
	v_dual_mul_f32 v129, v46, v50 :: v_dual_mul_f32 v204, v44, v51
	v_dual_mul_f32 v133, v49, v50 :: v_dual_mul_f32 v206, v46, v51
	v_dual_mul_f32 v222, v46, v52 :: v_dual_mul_f32 v233, v41, v53
	v_dual_mul_f32 v223, v47, v52 :: v_dual_mul_f32 v236, v44, v53
	v_dual_mul_f32 v224, v48, v52 :: v_dual_mul_f32 v235, v43, v53
	v_dual_mul_f32 v225, v49, v52 :: v_dual_mul_f32 v238, v46, v53
	v_dual_mul_f32 v237, v45, v53 :: v_dual_mul_f32 v34, v54, v123
	v_dual_mul_f32 v239, v47, v53 :: v_dual_mul_f32 v46, v57, v120
	v_dual_mul_f32 v240, v48, v53 :: v_dual_mul_f32 v35, v134, v107
	v_dual_mul_f32 v241, v49, v53 :: v_dual_mul_f32 v38, v55, v122
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v140, v131, v109 :: v_dual_mul_f32 v109, v209, v66
	v_mul_f32_e32 v36, v210, v32
	v_dual_mul_f32 v40, v211, v31 :: v_dual_mul_f32 v37, v226, v16
	v_dual_mul_f32 v42, v56, v121 :: v_dual_mul_f32 v39, v135, v106
	v_dual_mul_f32 v50, v58, v119 :: v_dual_mul_f32 v43, v137, v105
	v_dual_mul_f32 v137, v207, v68 :: v_dual_mul_f32 v44, v212, v30
	v_dual_mul_f32 v52, v214, v28 :: v_dual_mul_f32 v45, v228, v14
	v_dual_mul_f32 v58, v60, v117 :: v_dual_mul_f32 v51, v139, v103
	v_dual_mul_f32 v60, v216, v26 :: v_dual_mul_f32 v53, v230, v12
	v_dual_mul_f32 v54, v59, v118 :: v_dual_mul_f32 v47, v138, v104
	v_dual_mul_f32 v116, v61, v116 :: v_dual_mul_f32 v59, v142, v101
	v_dual_mul_f32 v122, v218, v24 :: v_dual_mul_f32 v61, v232, v10
	v_dual_mul_f32 v120, v124, v115 :: v_dual_mul_f32 v55, v141, v102
	v_dual_mul_f32 v112, v127, v112 :: v_dual_mul_f32 v121, v202, v99
	v_mul_f32_e32 v136, v130, v110
	v_dual_mul_f32 v48, v213, v29 :: v_dual_mul_f32 v41, v227, v15
	v_dual_mul_f32 v56, v215, v27 :: v_dual_mul_f32 v49, v229, v13
	v_dual_mul_f32 v118, v217, v25 :: v_dual_mul_f32 v57, v231, v11
	v_dual_mul_f32 v130, v220, v22 :: v_dual_mul_f32 v123, v234, v8
	v_dual_mul_f32 v124, v125, v114 :: v_dual_mul_f32 v117, v143, v100
	v_dual_mul_f32 v128, v126, v113 :: v_dual_mul_f32 v125, v203, v98
	v_dual_mul_f32 v132, v129, v111 :: v_dual_mul_f32 v129, v204, v97
	v_dual_mul_f32 v108, v133, v108 :: v_dual_mul_f32 v141, v208, v67
	v_mul_f32_e32 v113, v205, v96
	v_mul_f32_e32 v133, v206, v95
	v_dual_mul_f32 v126, v219, v23 :: v_dual_mul_f32 v119, v233, v9
	v_dual_mul_f32 v114, v221, v21 :: v_dual_mul_f32 v127, v235, v7
	v_dual_mul_f32 v134, v222, v20 :: v_dual_mul_f32 v131, v236, v6
	v_dual_mul_f32 v138, v223, v19 :: v_dual_mul_f32 v115, v237, v5
	v_dual_mul_f32 v142, v224, v18 :: v_dual_mul_f32 v135, v238, v4
	v_dual_mul_f32 v110, v225, v17 :: v_dual_mul_f32 v139, v239, v3
	v_mul_f32_e32 v143, v240, v2
	v_mul_f32_e32 v111, v241, v1
	ds_store_b128 v62, v[34:37]
	ds_store_b128 v62, v[42:45] offset:256
	ds_store_b128 v62, v[50:53] offset:512
	ds_store_b128 v62, v[58:61] offset:768
	ds_store_b128 v62, v[120:123] offset:4096
	ds_store_b128 v62, v[128:131] offset:4352
	ds_store_b128 v62, v[132:135] offset:4608
	ds_store_b128 v62, v[140:143] offset:4864
	ds_store_b128 v87, v[38:41]
	ds_store_b128 v87, v[46:49] offset:256
	ds_store_b128 v87, v[54:57] offset:512
	ds_store_b128 v87, v[116:119] offset:768
	ds_store_b128 v87, v[124:127] offset:4096
	ds_store_b128 v87, v[112:115] offset:4352
	ds_store_b128 v87, v[136:139] offset:4608
	ds_store_b128 v87, v[108:111] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v63
	ds_load_b128 v[5:8], v88
	ds_load_b128 v[9:12], v89
	ds_load_b128 v[13:16], v90
	ds_load_b128 v[17:20], v91
	ds_load_b128 v[21:24], v92
	ds_load_b128 v[25:28], v93
	ds_load_b128 v[29:32], v94
	ds_load_b128 v[34:37], v63 offset:128
	ds_load_b128 v[38:41], v88 offset:128
	ds_load_b128 v[42:45], v89 offset:128
	ds_load_b128 v[46:49], v90 offset:128
	ds_load_b128 v[50:53], v91 offset:128
	ds_load_b128 v[54:57], v92 offset:128
	ds_load_b128 v[58:61], v93 offset:128
	ds_load_b128 v[95:98], v94 offset:128
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v192, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v5, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v9, v144, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v13, v145, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v17, v146, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v21, v147, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v25, v148, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v29, v149, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v34, v150, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v38, v151, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v42, v152, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v46, v153, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v50, v154, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v54, v155, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v58, v156, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x1f
	buffer_atomic_add_f32 v95, v157, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v158, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v159, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v160, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v161, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v162, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v163, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v164, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v165, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v166, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v167, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v168, s[12:15], 0 offen
	buffer_atomic_add_f32 v47, v169, s[12:15], 0 offen
	buffer_atomic_add_f32 v51, v170, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v171, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v172, s[12:15], 0 offen
	buffer_atomic_add_f32 v96, v173, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v174, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v175, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v176, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v177, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v178, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v179, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v180, s[12:15], 0 offen
	buffer_atomic_add_f32 v31, v181, s[12:15], 0 offen
	buffer_atomic_add_f32 v36, v182, s[12:15], 0 offen
	buffer_atomic_add_f32 v40, v183, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v184, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v185, s[12:15], 0 offen
	buffer_atomic_add_f32 v52, v186, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v187, s[12:15], 0 offen
	buffer_atomic_add_f32 v60, v188, s[12:15], 0 offen
	s_clause 0xb
	buffer_atomic_add_f32 v97, v189, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v190, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v191, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v193, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v194, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v195, s[12:15], 0 offen
	buffer_atomic_add_f32 v24, v196, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v197, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v198, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v199, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v200, s[12:15], 0 offen
	buffer_atomic_add_f32 v45, v201, s[12:15], 0 offen
	v_add_lshl_u32 v62, s96, v33, 2
	v_add_lshl_u32 v63, s97, v33, 2
	v_add_lshl_u32 v66, s98, v33, 2
	v_add_lshl_u32 v67, s99, v33, 2
	v_add_lshl_u32 v1, s6, v33, 2
	s_clause 0x4
	buffer_atomic_add_f32 v49, v62, s[12:15], 0 offen
	buffer_atomic_add_f32 v53, v63, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v66, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v67, s[12:15], 0 offen
	buffer_atomic_add_f32 v98, v1, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s10, s6, s94
	s_xor_b32 s7, s7, s93
	s_mul_i32 s11, s10, s71
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s10, 1
	s_sub_i32 s14, s6, s71
	s_cmp_ge_u32 s6, s71
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s6, s14, s6
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s6, s71
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s6, s11, s10
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s11, s6, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s6, s6, s1
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s7, s24, s11
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s22, s2, s6
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s7, s14
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v22, s10
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s10, v22
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v32, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	s_mul_i32 s15, s15, s10
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	s_mul_hi_u32 s6, s10, s15
	s_abs_i32 s15, s22
	s_add_i32 s10, s10, s6
	s_xor_b32 s6, s22, s14
	s_mul_hi_u32 s10, s15, s10
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s23, s10, s7
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	s_sub_i32 s15, s15, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s95, s15, s7
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s15, s95, s15
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	s_cselect_b32 s7, s23, s10
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	s_xor_b32 s7, s7, s6
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	s_sub_i32 s10, s7, s6
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s14, s10, s14
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	s_sub_i32 s14, s22, s14
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s14, s14, s11
	.loc	1 281 13 is_stmt 1              ; generate_amdgcn.py:281:13
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 276 18                        ; generate_amdgcn.py:276:18
	s_lshl_b32 s14, s14, 6
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v2, s7, 8, v0
	s_lshl_b32 s6, s6, 8
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s14, v69
	s_mov_b32 s11, s92
	v_subrev_nc_u32_e32 v4, s6, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v2, v1
	v_mad_u64_u32 v[66:67], null, s3, v3, v[65:66]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[67:68], null, s3, v4, s[0:1]
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	buffer_load_b128 v[95:98], v67, s[4:7], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_b32 v68, v66, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v66, 32, v66
	v_add_nc_u32_e32 v67, 32, v67
	s_add_i32 s11, s11, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s11, 0
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v115, 24, v95
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v76, v68
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	v_lshrrev_b32_e32 v68, 8, v95
	v_lshrrev_b32_e32 v116, 8, v96
	v_lshrrev_b32_e32 v117, 24, v96
	v_lshrrev_b32_e32 v118, 8, v97
	v_lshrrev_b32_e32 v119, 24, v97
	v_lshrrev_b32_e32 v120, 8, v98
	v_lshrrev_b32_e32 v121, 24, v98
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[99:102], v77 offset1:32
	ds_load_2addr_b64 v[103:106], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[107:110], v78 offset1:32
	ds_load_2addr_b64 v[111:114], v78 offset0:64 offset1:96
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v79, v97 offset:2560
	ds_store_b8 v79, v98 offset:3072
	ds_store_b8 v79, v95
	ds_store_b8 v79, v68 offset:256
	ds_store_b8_d16_hi v79, v95 offset:512
	ds_store_b8 v79, v96 offset:1024
	ds_store_b8 v79, v116 offset:1280
	ds_store_b8_d16_hi v79, v96 offset:1536
	ds_store_b8 v79, v97 offset:2048
	ds_store_b8 v79, v118 offset:2304
	ds_store_b8 v79, v120 offset:3328
	ds_store_b8 v80, v115
	ds_store_b8 v81, v117
	ds_store_b8 v82, v119
	ds_store_b8_d16_hi v79, v98 offset:3584
	ds_store_b8 v83, v121
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v68, v84 offset:3328
	ds_load_u8 v95, v84 offset:3072
	ds_load_u8 v96, v84 offset:3840
	ds_load_u8 v97, v84 offset:3584
	ds_load_u8 v98, v84 offset:2304
	ds_load_u8 v115, v84 offset:2048
	ds_load_u8 v116, v84 offset:2816
	ds_load_u8 v117, v84 offset:2560
	ds_load_u8 v118, v84 offset:1280
	ds_load_u8 v119, v84 offset:1024
	ds_load_u8 v120, v84 offset:1792
	ds_load_u8 v121, v84 offset:1536
	ds_load_u8 v122, v84 offset:1920
	ds_load_u8 v123, v84 offset:1664
	ds_load_u8 v124, v84 offset:1408
	ds_load_u8 v125, v84 offset:1152
	ds_load_u8 v126, v84 offset:256
	ds_load_u8 v127, v84
	ds_load_u8 v128, v84 offset:768
	ds_load_u8 v129, v84 offset:512
	ds_load_u8 v130, v84 offset:896
	ds_load_u8 v131, v84 offset:640
	ds_load_u8 v132, v84 offset:384
	ds_load_u8 v133, v84 offset:128
	ds_load_u8 v134, v84 offset:3968
	ds_load_u8 v135, v84 offset:3712
	ds_load_u8 v136, v84 offset:3456
	ds_load_u8 v137, v84 offset:3200
	ds_load_u8 v138, v84 offset:2944
	ds_load_u8 v139, v84 offset:2688
	ds_load_u8 v140, v84 offset:2432
	ds_load_u8 v141, v84 offset:2176
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	v_perm_b32 v117, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v116, v123, v122, 0xc0c0004
	v_perm_b32 v68, v95, v68, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v120, v127, v126, 0xc0c0004
	v_perm_b32 v126, v115, v98, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v121, v129, v128, 0xc0c0004
	v_perm_b32 v115, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v123, v131, v130, 0xc0c0004
	v_perm_b32 v97, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v122, v133, v132, 0xc0c0004
	v_lshl_or_b32 v96, v119, 16, v118
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v125, v135, v134, 0xc0c0004
	v_lshl_or_b32 v95, v121, 16, v120
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v124, v137, v136, 0xc0c0004
	v_lshl_or_b32 v116, v116, 16, v115
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v128, v139, v138, 0xc0c0004
	v_lshl_or_b32 v115, v123, 16, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v141, v140, 0xc0c0004
	v_lshl_or_b32 v98, v97, 16, v68
	v_lshl_or_b32 v97, v117, 16, v126
	v_lshl_or_b32 v118, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[99:100], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v117, v128, 16, v127
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[99:100], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[101:102], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[101:102], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[103:104], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[103:104], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[95:96], v[105:106], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[105:106], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[107:108], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[97:98], v[109:110], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[109:110], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[97:98], v[111:112], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[111:112], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[97:98], v[113:114], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[117:118], v[113:114], v[57:64] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 296 19                        ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v123, v1
	v_cvt_f32_i32_e32 v122, v2
	v_cvt_f32_i32_e32 v121, v3
	v_cvt_f32_i32_e32 v120, v4
	v_cvt_f32_i32_e32 v119, v5
	v_cvt_f32_i32_e32 v118, v6
	v_cvt_f32_i32_e32 v117, v7
	v_cvt_f32_i32_e32 v116, v8
	v_cvt_f32_i32_e32 v115, v9
	v_cvt_f32_i32_e32 v114, v10
	v_cvt_f32_i32_e32 v113, v11
	v_cvt_f32_i32_e32 v112, v12
	v_cvt_f32_i32_e32 v111, v13
	v_cvt_f32_i32_e32 v110, v14
	v_cvt_f32_i32_e32 v109, v15
	v_cvt_f32_i32_e32 v108, v16
	v_cvt_f32_i32_e32 v107, v17
	v_cvt_f32_i32_e32 v106, v18
	v_cvt_f32_i32_e32 v105, v19
	v_cvt_f32_i32_e32 v104, v20
	v_cvt_f32_i32_e32 v103, v21
	v_cvt_f32_i32_e32 v102, v22
	v_cvt_f32_i32_e32 v101, v23
	v_cvt_f32_i32_e32 v100, v24
	v_cvt_f32_i32_e32 v99, v25
	v_cvt_f32_i32_e32 v98, v26
	v_cvt_f32_i32_e32 v97, v27
	v_cvt_f32_i32_e32 v96, v28
	v_cvt_f32_i32_e32 v95, v29
	v_cvt_f32_i32_e32 v68, v30
	v_cvt_f32_i32_e32 v67, v31
	v_cvt_f32_i32_e32 v66, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge67
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
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
		.amdhsa_next_free_vgpr 242
		.amdhsa_next_free_sgpr 103
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_vgpr, 242
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5320
; TotalNumSgprs: 105
; NumVgprs: 242
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 105
; NumVGPRsForWavesPerEU: 242
; Occupancy: 5
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	261                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	281                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     242
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
