	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 222 0                         ; generate_amdgcn.py:222:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:231:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s25, 0xff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s24, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s14, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 233 17 is_stmt 1              ; generate_amdgcn.py:233:17
	s_mul_i32 s26, s14, s24
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_ge_i32 s2, s26
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph69
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 254 27 is_stmt 1              ; generate_amdgcn.py:254:27
	s_lshl_b32 s1, s3, 4
	.loc	1 234 24                        ; generate_amdgcn.py:234:24
	s_lshl_b32 s0, s14, 2
	v_lshlrev_b32_e32 v6, 4, v0
	v_lshlrev_b32_e32 v10, 1, v0
	v_and_b32_e32 v11, 16, v0
	v_lshlrev_b32_e32 v12, 5, v0
	.loc	1 239 14                        ; generate_amdgcn.py:239:14
	v_and_b32_e32 v1, 3, v0
	v_and_b32_e32 v13, 0xcf0, v6
	v_lshlrev_b32_e32 v15, 6, v0
	v_and_or_b32 v14, v10, 64, v11
	v_and_b32_e32 v16, 0x1c00, v12
	v_lshrrev_b32_e32 v3, 4, v0
	v_and_b32_e32 v2, 0xf0, v0
	v_lshlrev_b32_e32 v4, 2, v0
	v_bfe_i32 v5, v0, 5, 1
	v_bfe_i32 v7, v0, 3, 1
	v_lshlrev_b32_e32 v65, 2, v1
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s3, s15, 31
	v_and_b32_e32 v9, 0x70, v6
	s_add_i32 s3, s15, s3
	v_lshlrev_b32_e32 v17, 13, v0
	s_ashr_i32 s3, s3, 1
	v_xor_b32_e32 v13, v14, v13
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:252:36 ]
	s_add_i32 s17, s3, 31
	v_lshlrev_b32_e32 v1, 4, v1
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_ashr_i32 s16, s17, 31
	v_lshlrev_b32_e32 v11, 2, v11
	s_lshr_b32 s20, s16, 27
	s_mov_b32 s16, s4
	s_add_i32 s17, s17, s20
	s_mov_b32 s4, s6
	s_ashr_i32 s22, s17, 5
	s_cmp_gt_i32 s15, 1
	v_and_or_b32 v14, 0x300, v15, v16
	s_cselect_b32 s27, -1, 0
	s_abs_i32 s73, s0
	v_sub_nc_u32_e32 v74, s3, v3
	s_cvt_f32_u32 s6, s73
.Ltmp12:
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	v_or_b32_e32 v3, s1, v3
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_and_b32_e32 v69, 15, v0
	v_and_b32_e32 v4, 0x37c, v4
	v_rcp_iflag_f32_e32 v19, s6
	v_and_b32_e32 v5, 0x88, v5
	v_and_or_b32 v7, 0x88, v7, v9
	v_lshrrev_b32_e32 v9, 1, v0
	v_lshlrev_b32_e32 v15, 2, v2
	v_and_b32_e32 v12, 32, v12
	v_and_or_b32 v75, 0xe000, v17, v13
	v_or3_b32 v76, v14, v1, v11
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_mul_lo_u32 v3, s25, v3
	v_add_nc_u32_e32 v8, 0, v69
	v_readfirstlane_b32 s6, v19
	v_xor_b32_e32 v4, v5, v4
	v_xor_b32_e32 v5, 8, v7
	v_and_b32_e32 v9, 0x70, v9
	v_and_b32_e32 v1, 28, v10
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_add3_u32 v10, 0, v15, v12
	v_lshlrev_b32_e32 v2, 1, v2
	v_xor_b32_e32 v11, 32, v75
	v_xor_b32_e32 v12, 0x2010, v76
	v_xor_b32_e32 v13, 0x4020, v76
	v_xor_b32_e32 v14, 0x6030, v76
	v_xor_b32_e32 v15, 0x8040, v76
	v_xor_b32_e32 v16, 0xa050, v76
	v_xor_b32_e32 v17, 0xc060, v76
	v_xor_b32_e32 v18, 0xe070, v76
	s_cvt_u32_f32 s6, s6
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s73
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v68, 2, v0
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v70, 16, v69
	v_or_b32_e32 v71, 32, v69
	v_or_b32_e32 v72, 48, v69
	v_sub_nc_u32_e32 v73, s3, v65
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v77, v69, 4, v3
	v_add_nc_u32_e32 v78, 0, v4
	v_add_nc_u32_e32 v79, 0, v7
	v_add_nc_u32_e32 v80, 0, v5
	v_add_nc_u32_e32 v81, 0, v6
	v_add_nc_u32_e32 v82, v8, v9
	v_add_nc_u32_e32 v83, v10, v1
	v_add_nc_u32_e32 v84, 0, v2
	v_add_nc_u32_e32 v85, 0, v11
	v_add_nc_u32_e32 v86, 0, v12
	v_add_nc_u32_e32 v87, 0, v13
	v_add_nc_u32_e32 v88, 0, v14
	v_add_nc_u32_e32 v89, 0, v15
	v_add_nc_u32_e32 v90, 0, v16
	v_add_nc_u32_e32 v91, 0, v17
	v_add_nc_u32_e32 v92, 0, v18
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
	s_mul_i32 s71, s25, 44
	s_mul_i32 s72, s25, 45
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
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_max_i32 s92, s22, 1
	s_bfe_i32 s93, s14, 0x1001d
	s_add_i32 s94, s6, s7
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 268 26                        ; generate_amdgcn.py:268:26
	v_or_b32_e32 v35, s14, v69
	v_or_b32_e32 v36, s14, v70
	v_or_b32_e32 v37, s14, v71
	v_or_b32_e32 v38, s14, v72
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	v_lshl_or_b32 v33, s10, 8, v0
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
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
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s6, s14, s25
	.loc	1 305 13 is_stmt 0              ; generate_amdgcn.py:305:13
	s_mov_b32 s14, s18
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
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
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v64, s7, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s7, s6, s41
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v143, s10, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s10, s6, s42
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v144, s11, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s11, s6, s43
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v147, s95, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s95, s6, s46
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v148, s96, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s96, s6, s47
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v149, s97, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s97, s6, s48
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v150, s98, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s98, s6, s49
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v151, s99, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s99, s6, s50
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v152, s100, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s100, s6, s51
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v153, s101, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s101, s6, s52
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v154, s102, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s102, s6, s53
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v155, s7, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s7, s6, s54
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v156, s10, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s10, s6, s55
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v157, s11, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s11, s6, s56
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v160, s95, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s95, s6, s59
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v191, s6, v33, 2
	v_add_lshl_u32 v161, s96, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s96, s6, s60
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v162, s97, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s97, s6, s61
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v163, s98, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s98, s6, s62
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v164, s99, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s99, s6, s63
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v165, s100, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s100, s6, s64
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v166, s101, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s101, s6, s65
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v167, s102, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s102, s6, s66
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v168, s7, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s7, s6, s67
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v169, s10, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s10, s6, s68
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v170, s11, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s11, s6, s69
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v173, s95, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s95, s6, s72
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	s_mov_b32 s15, s19
	v_add_lshl_u32 v174, s96, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s96, s6, s74
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v175, s97, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s97, s6, s75
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v176, s98, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s98, s6, s76
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v177, s99, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s99, s6, s77
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v178, s100, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s100, s6, s78
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v179, s101, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s101, s6, s79
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v180, s102, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s102, s6, s80
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v181, s7, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s7, s6, s81
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v182, s10, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s10, s6, s82
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v183, s11, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s11, s6, s83
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v186, s95, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s95, s6, s86
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v187, s96, v33, 2
	v_add_lshl_u32 v188, s97, v33, 2
	v_add_lshl_u32 v189, s98, v33, 2
	v_add_lshl_u32 v190, s99, v33, 2
	v_add_lshl_u32 v192, s100, v33, 2
	v_add_lshl_u32 v193, s101, v33, 2
	v_add_lshl_u32 v194, s102, v33, 2
	v_add_lshl_u32 v195, s7, v33, 2
	v_add_lshl_u32 v196, s10, v33, 2
	v_add_lshl_u32 v197, s11, v33, 2
	v_add_lshl_u32 v200, s95, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s96, s6, s87
	s_add_i32 s97, s6, s88
	s_add_i32 s98, s6, s89
	s_add_i32 s99, s6, s90
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v51
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	v_lshlrev_b32_e32 v34, 1, v33
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s22, s6, s30
	s_add_i32 s23, s6, s31
	.loc	1 305 13 is_stmt 0              ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v145, s22, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s22, s6, s44
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v146, s23, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s23, s6, s45
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v158, s22, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s22, s6, s57
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v159, s23, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s23, s6, s58
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v171, s22, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s22, s6, s70
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v172, s23, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s23, s6, s71
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v184, s22, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s22, s6, s84
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v185, s23, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s23, s6, s85
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v198, s22, v33, 2
	v_add_lshl_u32 v199, s23, v33, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s6, s6, s91
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	s_cmp_lt_i32 s2, s26
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	ds_store_b32 v83, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v84
	ds_load_b128 v[38:41], v84 offset:16
	ds_load_b128 v[42:45], v84 offset:512
	ds_load_b128 v[46:49], v84 offset:528
	.loc	1 270 13 is_stmt 0              ; generate_amdgcn.py:270:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_dual_mul_f32 v141, v40, v51 :: v_dual_lshlrev_b32 v52, 16, v52
	v_mul_f32_e32 v61, v41, v50
	v_dual_mul_f32 v124, v43, v50 :: v_dual_lshlrev_b32 v53, 16, v53
	v_dual_mul_f32 v59, v39, v50 :: v_dual_add_nc_u32 v62, 0, v75
	v_mul_f32_e32 v54, v34, v50
	v_dual_mul_f32 v60, v40, v50 :: v_dual_mul_f32 v133, v34, v51
	v_dual_mul_f32 v140, v39, v51 :: v_dual_mul_f32 v209, v34, v52
	v_dual_mul_f32 v210, v35, v52 :: v_dual_mul_f32 v225, v34, v53
	v_dual_mul_f32 v212, v37, v52 :: v_dual_mul_f32 v227, v36, v53
	v_dual_mul_f32 v58, v38, v50 :: v_dual_add_nc_u32 v63, 0, v76
	v_mul_f32_e32 v56, v36, v50
	v_dual_mul_f32 v129, v47, v50 :: v_dual_mul_f32 v136, v36, v51
	v_dual_mul_f32 v142, v41, v51 :: v_dual_mul_f32 v211, v36, v52
	v_dual_mul_f32 v214, v39, v52 :: v_dual_mul_f32 v229, v38, v53
	v_mul_f32_e32 v57, v37, v50
	v_dual_mul_f32 v123, v42, v50 :: v_dual_mul_f32 v134, v35, v51
	v_dual_mul_f32 v125, v44, v50 :: v_dual_mul_f32 v138, v38, v51
	v_dual_mul_f32 v202, v43, v51 :: v_dual_mul_f32 v213, v38, v52
	v_dual_mul_f32 v204, v45, v51 :: v_dual_mul_f32 v215, v40, v52
	v_dual_mul_f32 v216, v41, v52 :: v_dual_mul_f32 v231, v40, v53
	v_mul_f32_e32 v55, v35, v50
	v_dual_mul_f32 v126, v45, v50 :: v_dual_mul_f32 v201, v42, v51
	v_mul_f32_e32 v137, v37, v51
	v_dual_mul_f32 v206, v47, v51 :: v_dual_mul_f32 v217, v42, v52
	v_dual_mul_f32 v218, v43, v52 :: v_dual_mul_f32 v233, v42, v53
	v_dual_mul_f32 v221, v46, v52 :: v_dual_mul_f32 v226, v35, v53
	v_dual_mul_f32 v223, v48, v52 :: v_dual_mul_f32 v228, v37, v53
	v_dual_mul_f32 v230, v39, v53 :: v_dual_mul_f32 v115, v61, v115
	v_dual_mul_f32 v128, v46, v50 :: v_dual_mul_f32 v203, v44, v51
	v_dual_mul_f32 v130, v48, v50 :: v_dual_mul_f32 v205, v46, v51
	v_dual_mul_f32 v132, v49, v50 :: v_dual_mul_f32 v207, v48, v51
	v_dual_mul_f32 v208, v49, v51 :: v_dual_mul_f32 v219, v44, v52
	v_dual_mul_f32 v220, v45, v52 :: v_dual_mul_f32 v235, v44, v53
	v_dual_mul_f32 v222, v47, v52 :: v_dual_mul_f32 v237, v46, v53
	v_dual_mul_f32 v224, v49, v52 :: v_dual_mul_f32 v239, v48, v53
	v_mul_f32_e32 v232, v41, v53
	v_dual_mul_f32 v234, v43, v53 :: v_dual_mul_f32 v127, v125, v112
	v_dual_mul_f32 v236, v45, v53 :: v_dual_mul_f32 v111, v126, v111
	v_dual_mul_f32 v238, v47, v53 :: v_dual_mul_f32 v131, v128, v110
	v_dual_mul_f32 v240, v49, v53 :: v_dual_mul_f32 v139, v130, v108
	.loc	1 270 13                        ; generate_amdgcn.py:270:13
	v_mul_f32_e32 v34, v54, v122
	v_dual_mul_f32 v54, v59, v117 :: v_dual_mul_f32 v35, v133, v106
	v_mul_f32_e32 v36, v209, v32
	v_dual_mul_f32 v48, v212, v29 :: v_dual_mul_f32 v37, v225, v16
	v_dual_mul_f32 v42, v56, v120 :: v_dual_mul_f32 v135, v129, v109
	v_dual_mul_f32 v50, v58, v118 :: v_dual_mul_f32 v43, v136, v104
	v_dual_mul_f32 v44, v211, v30 :: v_dual_mul_f32 v109, v224, v17
	v_dual_mul_f32 v56, v214, v27 :: v_dual_mul_f32 v45, v227, v14
	v_dual_mul_f32 v46, v57, v119 :: v_dual_mul_f32 v39, v134, v105
	v_mul_f32_e32 v119, v123, v114
	v_dual_mul_f32 v51, v138, v102 :: v_dual_mul_f32 v128, v203, v96
	v_dual_mul_f32 v52, v213, v28 :: v_dual_mul_f32 v41, v226, v15
	v_dual_mul_f32 v53, v229, v12 :: v_dual_mul_f32 v118, v232, v9
	v_dual_mul_f32 v58, v60, v116 :: v_dual_mul_f32 v47, v137, v103
	v_dual_mul_f32 v59, v141, v100 :: v_dual_mul_f32 v60, v215, v26
	v_mul_f32_e32 v49, v228, v13
	v_dual_mul_f32 v61, v231, v10 :: v_dual_mul_f32 v126, v234, v7
	v_dual_mul_f32 v38, v55, v121 :: v_dual_mul_f32 v107, v132, v107
	v_dual_mul_f32 v55, v140, v101 :: v_dual_mul_f32 v116, v142, v99
	v_dual_mul_f32 v120, v201, v98 :: v_dual_mul_f32 v117, v216, v25
	v_dual_mul_f32 v112, v204, v95 :: v_dual_mul_f32 v121, v217, v24
	v_dual_mul_f32 v40, v210, v31 :: v_dual_mul_f32 v141, v223, v18
	v_dual_mul_f32 v57, v230, v11 :: v_dual_mul_f32 v122, v233, v8
	v_mul_f32_e32 v123, v124, v113
	v_mul_f32_e32 v124, v202, v97
	v_dual_mul_f32 v132, v205, v94 :: v_dual_mul_f32 v125, v218, v23
	v_dual_mul_f32 v136, v206, v93 :: v_dual_mul_f32 v129, v219, v22
	v_dual_mul_f32 v140, v207, v67 :: v_dual_mul_f32 v113, v220, v21
	v_dual_mul_f32 v108, v208, v66 :: v_dual_mul_f32 v133, v221, v20
	v_dual_mul_f32 v137, v222, v19 :: v_dual_mul_f32 v130, v235, v6
	v_mul_f32_e32 v114, v236, v5
	v_mul_f32_e32 v134, v237, v4
	v_mul_f32_e32 v138, v238, v3
	v_mul_f32_e32 v142, v239, v2
	v_mul_f32_e32 v110, v240, v1
	ds_store_b128 v62, v[34:37]
	ds_store_b128 v62, v[42:45] offset:256
	ds_store_b128 v62, v[50:53] offset:512
	ds_store_b128 v62, v[58:61] offset:768
	ds_store_b128 v62, v[119:122] offset:4096
	ds_store_b128 v62, v[127:130] offset:4352
	ds_store_b128 v62, v[131:134] offset:4608
	ds_store_b128 v62, v[139:142] offset:4864
	ds_store_b128 v85, v[38:41]
	ds_store_b128 v85, v[46:49] offset:256
	ds_store_b128 v85, v[54:57] offset:512
	ds_store_b128 v85, v[115:118] offset:768
	ds_store_b128 v85, v[123:126] offset:4096
	ds_store_b128 v85, v[111:114] offset:4352
	ds_store_b128 v85, v[135:138] offset:4608
	ds_store_b128 v85, v[107:110] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v63
	ds_load_b128 v[5:8], v86
	ds_load_b128 v[9:12], v87
	ds_load_b128 v[13:16], v88
	ds_load_b128 v[17:20], v89
	ds_load_b128 v[21:24], v90
	ds_load_b128 v[25:28], v91
	ds_load_b128 v[29:32], v92
	ds_load_b128 v[34:37], v63 offset:128
	ds_load_b128 v[38:41], v86 offset:128
	ds_load_b128 v[42:45], v87 offset:128
	ds_load_b128 v[46:49], v88 offset:128
	ds_load_b128 v[50:53], v89 offset:128
	ds_load_b128 v[54:57], v90 offset:128
	ds_load_b128 v[58:61], v91 offset:128
	ds_load_b128 v[93:96], v92 offset:128
	.loc	1 305 13 is_stmt 1              ; generate_amdgcn.py:305:13
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v191, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v5, v64, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v9, v143, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v13, v144, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v17, v145, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v21, v146, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v25, v147, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v29, v148, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v34, v149, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v38, v150, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v42, v151, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v46, v152, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v50, v153, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v54, v154, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v58, v155, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x1f
	buffer_atomic_add_f32 v93, v156, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v157, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v158, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v159, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v160, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v161, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v162, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v163, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v164, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v165, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v166, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v167, s[12:15], 0 offen
	buffer_atomic_add_f32 v47, v168, s[12:15], 0 offen
	buffer_atomic_add_f32 v51, v169, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v170, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v171, s[12:15], 0 offen
	buffer_atomic_add_f32 v94, v172, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v173, s[12:15], 0 offen
	buffer_atomic_add_f32 v7, v174, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v175, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v176, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v177, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v178, s[12:15], 0 offen
	buffer_atomic_add_f32 v27, v179, s[12:15], 0 offen
	buffer_atomic_add_f32 v31, v180, s[12:15], 0 offen
	buffer_atomic_add_f32 v36, v181, s[12:15], 0 offen
	buffer_atomic_add_f32 v40, v182, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v183, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v184, s[12:15], 0 offen
	buffer_atomic_add_f32 v52, v185, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v186, s[12:15], 0 offen
	buffer_atomic_add_f32 v60, v187, s[12:15], 0 offen
	s_clause 0xb
	buffer_atomic_add_f32 v95, v188, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v189, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v190, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v192, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v193, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v194, s[12:15], 0 offen
	buffer_atomic_add_f32 v24, v195, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v196, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v197, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v198, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v199, s[12:15], 0 offen
	buffer_atomic_add_f32 v45, v200, s[12:15], 0 offen
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
	buffer_atomic_add_f32 v96, v1, s[12:15], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s10, s6, s94
	s_xor_b32 s7, s7, s93
	s_mul_i32 s11, s10, s73
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s10, 1
	s_sub_i32 s14, s6, s73
	s_cmp_ge_u32 s6, s73
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s6, s14, s6
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s6, s73
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s6, s11, s10
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 243 23                        ; generate_amdgcn.py:243:23
	s_lshl_b32 s11, s6, 2
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s6, s6, s0
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s7, s24, s11
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s22, s2, s6
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
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
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_mul_i32 s15, s15, s10
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	s_mul_hi_u32 s6, s10, s15
	s_abs_i32 s15, s22
	s_add_i32 s10, s10, s6
	s_xor_b32 s6, s22, s14
	s_mul_hi_u32 s10, s15, s10
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s23, s10, s7
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	s_sub_i32 s15, s15, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s95, s15, s7
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s15, s95, s15
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	s_cselect_b32 s7, s23, s10
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	s_xor_b32 s7, s7, s6
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	s_sub_i32 s10, s7, s6
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s14, s10, s14
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	s_sub_i32 s14, s22, s14
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s14, s14, s11
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s27
	.loc	1 247 18                        ; generate_amdgcn.py:247:18
	s_lshl_b32 s14, s14, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v2, s7, 8, v77
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s14, v68
	s_lshl_b32 s6, s6, 8
	s_mov_b32 s11, s1
	v_subrev_nc_u32_e32 v93, s6, v2
	v_mov_b32_e32 v2, v1
	v_mad_u64_u32 v[66:67], null, s3, v3, v[65:66]
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
	s_mov_b32 s15, s92
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 256 27                        ; generate_amdgcn.py:256:27
	v_cmp_lt_i32_e32 vcc_lo, s11, v74
	.loc	1 260 26                        ; generate_amdgcn.py:260:26
	v_add_nc_u32_e32 v67, s11, v66
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s15, s15, -1
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	v_cndmask_b32_e32 v94, 0x80000000, v93, vcc_lo
	.loc	1 255 27                        ; generate_amdgcn.py:255:27
	v_cmp_lt_i32_e32 vcc_lo, s11, v73
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v93, s59, v93
	s_add_i32 s11, s11, 32
	s_cmp_lg_u32 s15, 0
	.loc	1 260 26                        ; generate_amdgcn.py:260:26
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	buffer_load_b128 v[94:97], v94, s[4:7], 0 offen
	.loc	1 260 26                        ; generate_amdgcn.py:260:26
	buffer_load_b32 v67, v67, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v78, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[98:101], v79 offset1:32
	ds_load_2addr_b64 v[102:105], v79 offset0:64 offset1:96
	ds_load_2addr_b64 v[106:109], v80 offset1:32
	ds_load_2addr_b64 v[110:113], v80 offset0:64 offset1:96
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v81, v[94:97]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 27                        ; generate_amdgcn.py:266:27
	ds_load_u8 v67, v82 offset:3328
	ds_load_u8 v94, v82 offset:3072
	ds_load_u8 v95, v82 offset:3840
	ds_load_u8 v96, v82 offset:3584
	ds_load_u8 v97, v82 offset:2304
	ds_load_u8 v114, v82 offset:2048
	ds_load_u8 v115, v82 offset:2816
	ds_load_u8 v116, v82 offset:2560
	ds_load_u8 v117, v82 offset:1280
	ds_load_u8 v118, v82 offset:1024
	ds_load_u8 v119, v82 offset:1792
	ds_load_u8 v120, v82 offset:1536
	ds_load_u8 v121, v82 offset:1920
	ds_load_u8 v122, v82 offset:1664
	ds_load_u8 v123, v82 offset:1408
	ds_load_u8 v124, v82 offset:1152
	ds_load_u8 v125, v82 offset:256
	ds_load_u8 v126, v82
	ds_load_u8 v127, v82 offset:768
	ds_load_u8 v128, v82 offset:512
	ds_load_u8 v129, v82 offset:896
	ds_load_u8 v130, v82 offset:640
	ds_load_u8 v131, v82 offset:384
	ds_load_u8 v132, v82 offset:128
	ds_load_u8 v133, v82 offset:3968
	ds_load_u8 v134, v82 offset:3712
	ds_load_u8 v135, v82 offset:3456
	ds_load_u8 v136, v82 offset:3200
	ds_load_u8 v137, v82 offset:2944
	ds_load_u8 v138, v82 offset:2688
	ds_load_u8 v139, v82 offset:2432
	ds_load_u8 v140, v82 offset:2176
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v118, v120, v119, 0xc0c0004
	v_perm_b32 v116, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v115, v122, v121, 0xc0c0004
	v_perm_b32 v67, v94, v67, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v119, v126, v125, 0xc0c0004
	v_perm_b32 v125, v114, v97, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v120, v128, v127, 0xc0c0004
	v_perm_b32 v114, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v122, v130, v129, 0xc0c0004
	v_perm_b32 v96, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v121, v132, v131, 0xc0c0004
	v_lshl_or_b32 v95, v118, 16, v117
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v134, v133, 0xc0c0004
	v_lshl_or_b32 v94, v120, 16, v119
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v123, v136, v135, 0xc0c0004
	v_lshl_or_b32 v115, v115, 16, v114
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v127, v138, v137, 0xc0c0004
	v_lshl_or_b32 v114, v122, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v140, v139, 0xc0c0004
	v_lshl_or_b32 v97, v96, 16, v67
	v_lshl_or_b32 v96, v116, 16, v125
	v_lshl_or_b32 v117, v124, 16, v123
	v_wmma_i32_16x16x16_iu4 v[1:8], v[94:95], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v127, 16, v126
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[98:99], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[94:95], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[94:95], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[94:95], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[104:105], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[108:109], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[110:111], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[110:111], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[96:97], v[112:113], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[112:113], v[57:64] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 267 19                        ; generate_amdgcn.py:267:19
	v_cvt_f32_i32_e32 v122, v1
	v_cvt_f32_i32_e32 v121, v2
	v_cvt_f32_i32_e32 v120, v3
	v_cvt_f32_i32_e32 v119, v4
	v_cvt_f32_i32_e32 v118, v5
	v_cvt_f32_i32_e32 v117, v6
	v_cvt_f32_i32_e32 v116, v7
	v_cvt_f32_i32_e32 v115, v8
	v_cvt_f32_i32_e32 v114, v9
	v_cvt_f32_i32_e32 v113, v10
	v_cvt_f32_i32_e32 v112, v11
	v_cvt_f32_i32_e32 v111, v12
	v_cvt_f32_i32_e32 v110, v13
	v_cvt_f32_i32_e32 v109, v14
	v_cvt_f32_i32_e32 v108, v15
	v_cvt_f32_i32_e32 v107, v16
	v_cvt_f32_i32_e32 v106, v17
	v_cvt_f32_i32_e32 v105, v18
	v_cvt_f32_i32_e32 v104, v19
	v_cvt_f32_i32_e32 v103, v20
	v_cvt_f32_i32_e32 v102, v21
	v_cvt_f32_i32_e32 v101, v22
	v_cvt_f32_i32_e32 v100, v23
	v_cvt_f32_i32_e32 v99, v24
	v_cvt_f32_i32_e32 v98, v25
	v_cvt_f32_i32_e32 v97, v26
	v_cvt_f32_i32_e32 v96, v27
	v_cvt_f32_i32_e32 v95, v28
	v_cvt_f32_i32_e32 v94, v29
	v_cvt_f32_i32_e32 v93, v30
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
.LBB0_7:                                ; %._crit_edge70
	.loc	1 222 1                         ; generate_amdgcn.py:222:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 241
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.num_vgpr, 241
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5156
; TotalNumSgprs: 105
; NumVgprs: 241
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 105
; NumVGPRsForWavesPerEU: 241
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
	.byte	231                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	232                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	252                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     241
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
