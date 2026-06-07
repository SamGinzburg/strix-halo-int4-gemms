	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[20:21], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s21, 0xff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s20, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s18, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s24, s18, s20
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s24
	s_cbranch_scc1 .LBB0_135
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 228 27 is_stmt 1              ; generate_amdgcn.py:228:27
	s_lshl_b32 s19, s3, 4
	v_lshlrev_b32_e32 v5, 4, v0
	v_and_b32_e32 v8, 16, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s1, s18, 2
	v_bfe_i32 v6, v0, 3, 1
	v_lshlrev_b32_e32 v7, 3, v0
	v_and_b32_e32 v9, 0x70, v5
	v_lshrrev_b32_e32 v10, 2, v8
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v1, 3, v0
	v_and_b32_e32 v5, 0xcf0, v5
	v_lshlrev_b32_e32 v12, 6, v0
	v_and_or_b32 v6, 0x88, v6, v9
	v_and_or_b32 v77, 0x78, v7, v10
	v_lshlrev_b32_e32 v7, 1, v0
	v_lshlrev_b32_e32 v9, 5, v0
	v_and_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v3, 2, v0
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s12, 31
	v_and_or_b32 v10, v7, 64, v8
	s_add_i32 s0, s12, s0
	v_and_b32_e32 v9, 0x1c00, v9
	s_ashr_i32 s3, s0, 1
	v_bfe_i32 v4, v0, 5, 1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s3, 0x7f
	v_and_b32_e32 v11, 0xf0, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s13, s0, 31
	v_lshlrev_b32_e32 v13, 13, v0
	s_lshr_b32 s13, s13, 25
	v_xor_b32_e32 v5, v10, v5
	s_add_i32 s0, s0, s13
	v_lshlrev_b32_e32 v10, 4, v1
	s_ashr_i32 s90, s0, 7
	s_cmp_gt_i32 s12, 1
	s_mov_b32 s12, s4
	s_cselect_b32 s25, -1, 0
	s_abs_i32 s68, s1
	s_mov_b32 s4, s6
	s_cvt_f32_u32 s6, s68
	v_cmp_eq_u32_e64 s0, 0, v8
	v_lshlrev_b32_e32 v8, 2, v8
	v_and_or_b32 v9, 0x300, v12, v9
	v_rcp_iflag_f32_e32 v17, s6
	v_and_b32_e32 v3, 0x37c, v3
	v_and_b32_e32 v4, 0x88, v4
	v_lshlrev_b32_e32 v12, 2, v11
	v_lshlrev_b32_e32 v14, 5, v2
	v_and_or_b32 v79, 0xe000, v13, v5
	v_or3_b32 v80, v9, v10, v8
.Ltmp12:
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v72, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v73, 1, v0
	v_xor_b32_e32 v3, v4, v3
	v_readfirstlane_b32 s6, v17
	v_xor_b32_e32 v4, 8, v6
	v_and_b32_e32 v5, 28, v7
	v_add3_u32 v7, 0, v12, v14
	v_lshlrev_b32_e32 v8, 1, v11
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v9, 32, v79
	v_xor_b32_e32 v10, 0x2010, v80
	v_xor_b32_e32 v11, 0x4020, v80
	v_xor_b32_e32 v12, 0x6030, v80
	v_xor_b32_e32 v13, 0x8040, v80
	v_xor_b32_e32 v14, 0xa050, v80
	v_xor_b32_e32 v15, 0xc060, v80
	v_xor_b32_e32 v16, 0xe070, v80
	s_cvt_u32_f32 s6, s6
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s68
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v71, 2, v0
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v74, 16, v72
	v_or_b32_e32 v75, 32, v72
	v_or_b32_e32 v76, 48, v72
	v_xor_b32_e32 v78, 4, v77
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_lshl_or_b32 v65, v1, 2, s19
	v_lshl_or_b32 v66, v2, 3, s19
	v_or_b32_e32 v81, 0x80, v73
	v_add_nc_u32_e32 v82, 0, v3
	v_add_nc_u32_e32 v83, 0, v6
	v_add_nc_u32_e32 v84, 0, v4
	v_add_nc_u32_e32 v85, v7, v5
	v_add_nc_u32_e32 v86, 0, v8
	v_add_nc_u32_e32 v87, 0, v9
	v_add_nc_u32_e32 v88, 0, v10
	v_add_nc_u32_e32 v89, 0, v11
	v_add_nc_u32_e32 v90, 0, v12
	v_add_nc_u32_e32 v91, 0, v13
	v_add_nc_u32_e32 v92, 0, v14
	v_add_nc_u32_e32 v93, 0, v15
	v_add_nc_u32_e32 v94, 0, v16
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	s_lshl_b32 s26, s21, 1
	s_mul_i32 s27, s21, 3
	s_lshl_b32 s28, s21, 2
	s_mul_i32 s29, s21, 5
	s_mul_i32 s30, s21, 6
	s_mul_i32 s31, s21, 7
	s_lshl_b32 s33, s21, 3
	s_mul_i32 s34, s21, 9
	s_mul_i32 s35, s21, 10
	s_mul_i32 s36, s21, 11
	s_mul_i32 s37, s21, 12
	s_mul_i32 s38, s21, 13
	s_mul_i32 s39, s21, 14
	s_mul_i32 s40, s21, 15
	s_lshl_b32 s41, s21, 4
	s_mul_i32 s42, s21, 17
	s_mul_i32 s43, s21, 18
	s_mul_i32 s44, s21, 19
	s_mul_i32 s45, s21, 20
	s_mul_i32 s46, s21, 21
	s_mul_i32 s47, s21, 22
	s_mul_i32 s48, s21, 23
	s_mul_i32 s49, s21, 24
	s_mul_i32 s50, s21, 25
	s_mul_i32 s51, s21, 26
	s_mul_i32 s52, s21, 27
	s_mul_i32 s53, s21, 28
	s_mul_i32 s54, s21, 29
	s_mul_i32 s55, s21, 30
	s_mul_i32 s56, s21, 31
	s_lshl_b32 s57, s21, 5
	s_mul_i32 s58, s21, 33
	s_mul_i32 s59, s21, 34
	s_mul_i32 s60, s21, 35
	s_mul_i32 s61, s21, 36
	s_mul_i32 s62, s21, 37
	s_mul_i32 s63, s21, 38
	s_mul_i32 s64, s21, 39
	s_mul_i32 s65, s21, 40
	s_mul_i32 s66, s21, 41
	s_mul_i32 s67, s21, 42
	s_mul_i32 s69, s21, 43
	s_mul_i32 s70, s21, 44
	s_mul_i32 s71, s21, 45
	s_mul_i32 s72, s21, 46
	s_mul_i32 s73, s21, 47
	s_mul_i32 s74, s21, 48
	s_mul_i32 s75, s21, 49
	s_mul_i32 s76, s21, 50
	s_mul_i32 s77, s21, 51
	s_mul_i32 s78, s21, 52
	s_mul_i32 s79, s21, 53
	s_mul_i32 s80, s21, 54
	s_mul_i32 s81, s21, 55
	s_mul_i32 s82, s21, 56
	s_mul_i32 s83, s21, 57
	s_mul_i32 s84, s21, 58
	s_mul_i32 s85, s21, 59
	s_mul_i32 s86, s21, 60
	s_mul_i32 s87, s21, 61
	s_mul_i32 s88, s21, 62
	s_mul_i32 s89, s21, 63
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s90, s90, 1
	s_bfe_i32 s91, s18, 0x1001d
	s_add_i32 s92, s6, s7
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
                                        ;     Child Loop BB0_21 Depth 2
                                        ;     Child Loop BB0_23 Depth 2
                                        ;     Child Loop BB0_25 Depth 2
                                        ;     Child Loop BB0_27 Depth 2
                                        ;     Child Loop BB0_29 Depth 2
                                        ;     Child Loop BB0_31 Depth 2
                                        ;     Child Loop BB0_33 Depth 2
                                        ;     Child Loop BB0_35 Depth 2
                                        ;     Child Loop BB0_37 Depth 2
                                        ;     Child Loop BB0_39 Depth 2
                                        ;     Child Loop BB0_41 Depth 2
                                        ;     Child Loop BB0_43 Depth 2
                                        ;     Child Loop BB0_45 Depth 2
                                        ;     Child Loop BB0_47 Depth 2
                                        ;     Child Loop BB0_49 Depth 2
                                        ;     Child Loop BB0_51 Depth 2
                                        ;     Child Loop BB0_53 Depth 2
                                        ;     Child Loop BB0_55 Depth 2
                                        ;     Child Loop BB0_57 Depth 2
                                        ;     Child Loop BB0_59 Depth 2
                                        ;     Child Loop BB0_61 Depth 2
                                        ;     Child Loop BB0_63 Depth 2
                                        ;     Child Loop BB0_65 Depth 2
                                        ;     Child Loop BB0_67 Depth 2
                                        ;     Child Loop BB0_69 Depth 2
                                        ;     Child Loop BB0_71 Depth 2
                                        ;     Child Loop BB0_73 Depth 2
                                        ;     Child Loop BB0_75 Depth 2
                                        ;     Child Loop BB0_77 Depth 2
                                        ;     Child Loop BB0_79 Depth 2
                                        ;     Child Loop BB0_81 Depth 2
                                        ;     Child Loop BB0_83 Depth 2
                                        ;     Child Loop BB0_85 Depth 2
                                        ;     Child Loop BB0_87 Depth 2
                                        ;     Child Loop BB0_89 Depth 2
                                        ;     Child Loop BB0_91 Depth 2
                                        ;     Child Loop BB0_93 Depth 2
                                        ;     Child Loop BB0_95 Depth 2
                                        ;     Child Loop BB0_97 Depth 2
                                        ;     Child Loop BB0_99 Depth 2
                                        ;     Child Loop BB0_101 Depth 2
                                        ;     Child Loop BB0_103 Depth 2
                                        ;     Child Loop BB0_105 Depth 2
                                        ;     Child Loop BB0_107 Depth 2
                                        ;     Child Loop BB0_109 Depth 2
                                        ;     Child Loop BB0_111 Depth 2
                                        ;     Child Loop BB0_113 Depth 2
                                        ;     Child Loop BB0_115 Depth 2
                                        ;     Child Loop BB0_117 Depth 2
                                        ;     Child Loop BB0_119 Depth 2
                                        ;     Child Loop BB0_121 Depth 2
                                        ;     Child Loop BB0_123 Depth 2
                                        ;     Child Loop BB0_125 Depth 2
                                        ;     Child Loop BB0_127 Depth 2
                                        ;     Child Loop BB0_129 Depth 2
                                        ;     Child Loop BB0_131 Depth 2
                                        ;     Child Loop BB0_133 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s10, s6, s92
	s_xor_b32 s7, s7, s91
	s_mul_i32 s11, s10, s68
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s10, 1
	s_sub_i32 s18, s6, s68
	s_cmp_ge_u32 s6, s68
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s6, s18, s6
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s6, s68
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s6, s11, s10
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s11, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s1
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s20, s11
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s93, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s18, s7, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s18
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s19, 0, s7
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
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	s_mul_i32 s19, s19, s10
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	s_mul_hi_u32 s6, s10, s19
	s_abs_i32 s19, s93
	s_add_i32 s10, s10, s6
	s_xor_b32 s6, s93, s18
	s_mul_hi_u32 s10, s19, s10
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s94, s10, s7
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	s_sub_i32 s19, s19, s94
	s_add_i32 s94, s10, 1
	s_sub_i32 s95, s19, s7
	s_cmp_ge_u32 s19, s7
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	s_cselect_b32 s10, s94, s10
	s_cselect_b32 s19, s95, s19
	s_add_i32 s94, s10, 1
	s_cmp_ge_u32 s19, s7
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	s_cselect_b32 s7, s94, s10
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	s_xor_b32 s7, s7, s6
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	s_sub_i32 s10, s7, s6
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s18, s10, s18
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	s_sub_i32 s18, s93, s18
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s18, s18, s11
	.loc	1 226 13 is_stmt 1              ; generate_amdgcn.py:226:13
	s_and_not1_b32 vcc_lo, exec_lo, s25
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s93, s18, 6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v4, s93, v71
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_lshl_b32 s7, s7, 8
	s_lshl_b32 s6, s6, 8
	v_or_b32_e32 v2, s7, v81
	v_or_b32_e32 v3, s7, v73
	v_mad_u64_u32 v[67:68], null, s3, v4, v[65:66]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s6, v2
	v_subrev_nc_u32_e32 v3, s6, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[68:69], null, s3, v2, v[66:67]
	v_mad_u64_u32 v[69:70], null, s3, v3, v[66:67]
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
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
	s_mov_b32 s11, s90
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 237 26 is_stmt 1              ; generate_amdgcn.py:237:26
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	s_clause 0x1
	buffer_load_b64 v[99:100], v69, s[4:7], 0 offen
	buffer_load_b64 v[101:102], v68, s[4:7], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_b32 v70, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v67, 0x80, v67
	v_add_nc_u32_e32 v68, 0x80, v68
	v_add_nc_u32_e32 v69, 0x80, v69
	s_add_i32 s11, s11, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s11, 0
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v114, v77, v100
	ds_bpermute_b32 v112, v78, v99
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v82, v70
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	ds_bpermute_b32 v70, v77, v99
	ds_bpermute_b32 v117, v78, v100
	ds_bpermute_b32 v118, v77, v101
	ds_bpermute_b32 v119, v77, v102
	ds_bpermute_b32 v120, v78, v101
	ds_bpermute_b32 v121, v78, v102
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[95:98], v83 offset1:32
	ds_load_2addr_b64 v[99:102], v83 offset0:64 offset1:96
	ds_load_2addr_b64 v[103:106], v84 offset1:32
	ds_load_2addr_b64 v[107:110], v84 offset0:64 offset1:96
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e64 v111, v112, v70, s0
	v_cndmask_b32_e64 v113, v70, v112, s0
	v_cndmask_b32_e64 v112, v117, v114, s0
	v_cndmask_b32_e64 v114, v114, v117, s0
	v_cndmask_b32_e64 v115, v120, v118, s0
	v_cndmask_b32_e64 v116, v121, v119, s0
	v_cndmask_b32_e64 v117, v118, v120, s0
	v_cndmask_b32_e64 v118, v119, v121, s0
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[111:112], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[97:98], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[97:98], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[111:112], v[99:100], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[99:100], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[111:112], v[101:102], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[101:102], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[103:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[103:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[105:106], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[105:106], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[107:108], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[109:110], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[117:118], v[109:110], v[57:64] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v125, v1
	v_cvt_f32_i32_e32 v124, v2
	v_cvt_f32_i32_e32 v123, v3
	v_cvt_f32_i32_e32 v122, v4
	v_cvt_f32_i32_e32 v121, v5
	v_cvt_f32_i32_e32 v120, v6
	v_cvt_f32_i32_e32 v119, v7
	v_cvt_f32_i32_e32 v118, v8
	v_cvt_f32_i32_e32 v117, v9
	v_cvt_f32_i32_e32 v116, v10
	v_cvt_f32_i32_e32 v115, v11
	v_cvt_f32_i32_e32 v114, v12
	v_cvt_f32_i32_e32 v113, v13
	v_cvt_f32_i32_e32 v112, v14
	v_cvt_f32_i32_e32 v111, v15
	v_cvt_f32_i32_e32 v110, v16
	v_cvt_f32_i32_e32 v109, v17
	v_cvt_f32_i32_e32 v108, v18
	v_cvt_f32_i32_e32 v107, v19
	v_cvt_f32_i32_e32 v106, v20
	v_cvt_f32_i32_e32 v105, v21
	v_cvt_f32_i32_e32 v104, v22
	v_cvt_f32_i32_e32 v103, v23
	v_cvt_f32_i32_e32 v102, v24
	v_cvt_f32_i32_e32 v101, v25
	v_cvt_f32_i32_e32 v100, v26
	v_cvt_f32_i32_e32 v99, v27
	v_cvt_f32_i32_e32 v98, v28
	v_cvt_f32_i32_e32 v97, v29
	v_cvt_f32_i32_e32 v96, v30
	v_cvt_f32_i32_e32 v70, v31
	v_cvt_f32_i32_e32 v69, v32
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
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v34, s93, v72
	v_or_b32_e32 v35, s93, v74
	v_or_b32_e32 v36, s93, v75
	v_or_b32_e32 v37, s93, v76
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	v_lshl_or_b32 v95, s10, 8, v0
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v34, 1, v34
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v36, 1, v36
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	v_lshlrev_b32_e32 v37, 1, v37
	s_clause 0x3
	buffer_load_u16 v51, v34, s[8:11], 0 offen
	buffer_load_u16 v52, v35, s[8:11], 0 offen
	buffer_load_u16 v53, v36, s[8:11], 0 offen
	buffer_load_u16 v54, v37, s[8:11], 0 offen
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s6, s93, s21
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_mov_b32 s18, s14
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add_nc_u32_e32 v41, s6, v95
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_mov_b32 s19, s15
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v42, 31, v41
	v_lshlrev_b64 v[49:50], 2, v[41:42]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v49
	v_add_co_ci_u32_e64 v68, null, s23, v50, vcc_lo
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v52
	v_lshlrev_b32_e32 v49, 16, v51
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v95
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	ds_store_b32 v85, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v86
	ds_load_b128 v[37:40], v86 offset:16
	ds_load_b128 v[41:44], v86 offset:512
	ds_load_b128 v[45:48], v86 offset:528
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v136, v36, v50
	v_dual_mul_f32 v59, v39, v49 :: v_dual_lshlrev_b32 v52, 16, v54
	v_mul_f32_e32 v57, v37, v49
	v_dual_mul_f32 v138, v37, v50 :: v_dual_lshlrev_b32 v51, 16, v53
	v_mul_f32_e32 v53, v33, v49
	v_mul_f32_e32 v54, v34, v49
	v_mul_f32_e32 v132, v33, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v150, v47, v50 :: v_dual_mul_f32 v157, v38, v51
	v_dual_mul_f32 v151, v48, v50 :: v_dual_mul_f32 v152, v33, v51
	v_dual_mul_f32 v154, v35, v51 :: v_dual_mul_f32 v169, v34, v52
	v_dual_mul_f32 v159, v40, v51 :: v_dual_mul_f32 v168, v33, v52
	v_mul_f32_e32 v55, v35, v49
	v_dual_mul_f32 v62, v41, v49 :: v_dual_mul_f32 v135, v35, v50
	v_dual_mul_f32 v156, v37, v51 :: v_dual_mul_f32 v171, v36, v52
	v_dual_mul_f32 v161, v42, v51 :: v_dual_mul_f32 v170, v35, v52
	v_dual_mul_f32 v158, v39, v51 :: v_dual_mul_f32 v173, v38, v52
	v_dual_mul_f32 v163, v44, v51 :: v_dual_mul_f32 v172, v37, v52
	v_dual_mul_f32 v60, v40, v49 :: v_dual_add_nc_u32 v145, 0, v79
	v_mul_f32_e32 v58, v38, v49
	v_dual_mul_f32 v63, v42, v49 :: v_dual_mul_f32 v140, v39, v50
	v_dual_mul_f32 v160, v41, v51 :: v_dual_mul_f32 v175, v40, v52
	v_dual_mul_f32 v165, v46, v51 :: v_dual_mul_f32 v174, v39, v52
	v_dual_mul_f32 v64, v43, v49 :: v_dual_mul_f32 v139, v38, v50
	v_dual_mul_f32 v126, v44, v49 :: v_dual_mul_f32 v143, v41, v50
	v_dual_mul_f32 v127, v45, v49 :: v_dual_mul_f32 v142, v40, v50
	v_dual_mul_f32 v162, v43, v51 :: v_dual_mul_f32 v177, v42, v52
	v_dual_mul_f32 v167, v48, v51 :: v_dual_mul_f32 v176, v41, v52
	v_mul_f32_e32 v56, v36, v49
	v_dual_mul_f32 v128, v46, v49 :: v_dual_mul_f32 v147, v44, v50
	v_dual_mul_f32 v130, v47, v49 :: v_dual_mul_f32 v149, v46, v50
	v_dual_mul_f32 v131, v48, v49 :: v_dual_mul_f32 v144, v42, v50
	v_mul_f32_e32 v134, v34, v50
	v_dual_mul_f32 v146, v43, v50 :: v_dual_mul_f32 v153, v34, v51
	v_dual_mul_f32 v148, v45, v50 :: v_dual_mul_f32 v155, v36, v51
	v_dual_mul_f32 v164, v45, v51 :: v_dual_mul_f32 v179, v44, v52
	v_dual_mul_f32 v166, v47, v51 :: v_dual_mul_f32 v181, v46, v52
	v_dual_mul_f32 v178, v43, v52 :: v_dual_mul_f32 v33, v53, v125
	v_dual_mul_f32 v180, v45, v52 :: v_dual_mul_f32 v41, v55, v123
	v_dual_mul_f32 v182, v47, v52 :: v_dual_mul_f32 v45, v56, v122
	v_dual_mul_f32 v183, v48, v52 :: v_dual_mul_f32 v42, v135, v107
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v37, v54, v124 :: v_dual_mul_f32 v34, v132, v109
	v_dual_mul_f32 v49, v57, v121 :: v_dual_mul_f32 v38, v134, v108
	v_dual_mul_f32 v57, v59, v119 :: v_dual_mul_f32 v50, v138, v105
	v_dual_mul_f32 v138, v150, v70 :: v_dual_mul_f32 v35, v152, v32
	v_dual_mul_f32 v43, v154, v30 :: v_dual_mul_f32 v36, v168, v16
	v_dual_mul_f32 v51, v156, v28 :: v_dual_mul_f32 v44, v170, v14
	v_dual_mul_f32 v59, v158, v26 :: v_dual_mul_f32 v52, v172, v12
	v_dual_mul_f32 v53, v58, v120 :: v_dual_mul_f32 v46, v136, v106
	v_dual_mul_f32 v61, v60, v118 :: v_dual_mul_f32 v54, v139, v104
	v_dual_mul_f32 v117, v62, v117 :: v_dual_mul_f32 v58, v140, v103
	v_dual_mul_f32 v119, v160, v24 :: v_dual_mul_f32 v60, v174, v10
	v_dual_mul_f32 v125, v64, v115 :: v_dual_mul_f32 v118, v143, v101
	v_mul_f32_e32 v113, v127, v113
	v_dual_mul_f32 v127, v162, v22 :: v_dual_mul_f32 v120, v176, v8
	v_dual_mul_f32 v121, v63, v116 :: v_dual_mul_f32 v62, v142, v102
	v_dual_mul_f32 v129, v126, v114 :: v_dual_mul_f32 v122, v144, v100
	v_mul_f32_e32 v133, v128, v112
	v_dual_mul_f32 v137, v130, v111 :: v_dual_mul_f32 v114, v148, v97
	v_dual_mul_f32 v141, v131, v110 :: v_dual_mul_f32 v134, v149, v96
	v_mul_f32_e32 v126, v146, v99
	v_mul_f32_e32 v130, v147, v98
	v_dual_mul_f32 v142, v151, v69 :: v_dual_mul_f32 v39, v153, v31
	v_dual_mul_f32 v47, v155, v29 :: v_dual_mul_f32 v40, v169, v15
	v_dual_mul_f32 v55, v157, v27 :: v_dual_mul_f32 v48, v171, v13
	v_dual_mul_f32 v63, v159, v25 :: v_dual_mul_f32 v56, v173, v11
	v_dual_mul_f32 v123, v161, v23 :: v_dual_mul_f32 v64, v175, v9
	v_dual_mul_f32 v131, v163, v21 :: v_dual_mul_f32 v124, v177, v7
	v_dual_mul_f32 v115, v164, v20 :: v_dual_mul_f32 v128, v178, v6
	v_dual_mul_f32 v135, v165, v19 :: v_dual_mul_f32 v132, v179, v5
	v_dual_mul_f32 v139, v166, v18 :: v_dual_mul_f32 v116, v180, v4
	v_dual_mul_f32 v143, v167, v17 :: v_dual_mul_f32 v136, v181, v3
	v_mul_f32_e32 v140, v182, v2
	v_dual_mul_f32 v144, v183, v1 :: v_dual_add_nc_u32 v1, 0, v80
	ds_store_b128 v145, v[33:36]
	ds_store_b128 v145, v[41:44] offset:256
	ds_store_b128 v145, v[49:52] offset:512
	ds_store_b128 v145, v[57:60] offset:768
	ds_store_b128 v145, v[117:120] offset:4096
	ds_store_b128 v145, v[125:128] offset:4352
	ds_store_b128 v145, v[113:116] offset:4608
	ds_store_b128 v145, v[137:140] offset:4864
	ds_store_b128 v87, v[37:40]
	ds_store_b128 v87, v[45:48] offset:256
	ds_store_b128 v87, v[53:56] offset:512
	ds_store_b128 v87, v[61:64] offset:768
	ds_store_b128 v87, v[121:124] offset:4096
	ds_store_b128 v87, v[129:132] offset:4352
	ds_store_b128 v87, v[133:136] offset:4608
	ds_store_b128 v87, v[141:144] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	global_load_b32 v70, v[67:68], off
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	ds_load_b128 v[61:64], v1
	ds_load_b128 v[29:32], v1 offset:128
	ds_load_b128 v[57:60], v88
	ds_load_b128 v[25:28], v88 offset:128
	ds_load_b128 v[53:56], v89
	ds_load_b128 v[21:24], v89 offset:128
	ds_load_b128 v[49:52], v90
	ds_load_b128 v[17:20], v90 offset:128
	ds_load_b128 v[45:48], v91
	ds_load_b128 v[13:16], v91 offset:128
	ds_load_b128 v[41:44], v92
	ds_load_b128 v[9:12], v92 offset:128
	ds_load_b128 v[37:40], v93
	ds_load_b128 v[5:8], v93 offset:128
	ds_load_b128 v[33:36], v94
	ds_load_b128 v[1:4], v94 offset:128
.LBB0_7:                                ; %atomicrmw.start374
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v69, v70, v61
	global_atomic_cmpswap_b32 v69, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v69, v70
	v_mov_b32_e32 v70, v69
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end373
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s21, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_9:                                ; %atomicrmw.start368
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v69, v70, v57
	global_atomic_cmpswap_b32 v61, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v61, v70
	v_mov_b32_e32 v70, v61
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end367
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s26, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_11:                               ; %atomicrmw.start362
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v69, v70, v53
	global_atomic_cmpswap_b32 v57, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v57, v70
	v_mov_b32_e32 v70, v57
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end361
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s27, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_13:                               ; %atomicrmw.start356
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v69, v70, v49
	global_atomic_cmpswap_b32 v53, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v53, v70
	v_mov_b32_e32 v70, v53
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end355
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s28, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_15:                               ; %atomicrmw.start350
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v69, v70, v45
	global_atomic_cmpswap_b32 v49, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v49, v70
	v_mov_b32_e32 v70, v49
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end349
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s29, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_17:                               ; %atomicrmw.start344
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v69, v70, v41
	global_atomic_cmpswap_b32 v45, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v45, v70
	v_mov_b32_e32 v70, v45
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end343
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s30, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_19:                               ; %atomicrmw.start338
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v69, v70, v37
	global_atomic_cmpswap_b32 v41, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v41, v70
	v_mov_b32_e32 v70, v41
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end337
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s31, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_21:                               ; %atomicrmw.start332
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v69, v70, v33
	global_atomic_cmpswap_b32 v37, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v37, v70
	v_mov_b32_e32 v70, v37
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end331
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s33, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_23:                               ; %atomicrmw.start326
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v29
	global_atomic_cmpswap_b32 v33, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v33, v70
	v_mov_b32_e32 v70, v33
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end325
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s34, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_25:                               ; %atomicrmw.start320
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v25
	global_atomic_cmpswap_b32 v29, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v29, v70
	v_mov_b32_e32 v70, v29
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end319
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s35, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_27:                               ; %atomicrmw.start314
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v21
	global_atomic_cmpswap_b32 v25, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v25, v70
	v_mov_b32_e32 v70, v25
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end313
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s36, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_29:                               ; %atomicrmw.start308
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v17
	global_atomic_cmpswap_b32 v21, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v21, v70
	v_mov_b32_e32 v70, v21
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end307
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s37, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_31:                               ; %atomicrmw.start302
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v13
	global_atomic_cmpswap_b32 v17, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v17, v70
	v_mov_b32_e32 v70, v17
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end301
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s38, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_33:                               ; %atomicrmw.start296
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v9
	global_atomic_cmpswap_b32 v13, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v13, v70
	v_mov_b32_e32 v70, v13
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end295
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s39, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_35:                               ; %atomicrmw.start290
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v5
	global_atomic_cmpswap_b32 v9, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v9, v70
	v_mov_b32_e32 v70, v9
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end289
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s40, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_37:                               ; %atomicrmw.start284
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v69, v70, v1
	global_atomic_cmpswap_b32 v5, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v70
	v_mov_b32_e32 v70, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end283
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v67, s6, s41, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v68, 31, v67
	v_lshlrev_b64 v[67:68], 2, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v67, vcc_lo, s22, v67
	v_add_co_ci_u32_e64 v68, null, s23, v68, vcc_lo
	global_load_b32 v70, v[67:68], off
.LBB0_39:                               ; %atomicrmw.start278
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v69, v70, v62
	global_atomic_cmpswap_b32 v1, v[67:68], v[69:70], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v70
	v_mov_b32_e32 v70, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end277
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v61, s6, s42, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v62, 31, v61
	v_lshlrev_b64 v[61:62], 2, v[61:62]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v61, vcc_lo, s22, v61
	v_add_co_ci_u32_e64 v62, null, s23, v62, vcc_lo
	global_load_b32 v68, v[61:62], off
.LBB0_41:                               ; %atomicrmw.start272
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v67, v68, v58
	global_atomic_cmpswap_b32 v1, v[61:62], v[67:68], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v68
	v_mov_b32_e32 v68, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end271
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v57, s6, s43, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v58, 31, v57
	v_lshlrev_b64 v[57:58], 2, v[57:58]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v57, vcc_lo, s22, v57
	v_add_co_ci_u32_e64 v58, null, s23, v58, vcc_lo
	global_load_b32 v62, v[57:58], off
.LBB0_43:                               ; %atomicrmw.start266
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v61, v62, v54
	global_atomic_cmpswap_b32 v1, v[57:58], v[61:62], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v62
	v_mov_b32_e32 v62, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end265
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v53, s6, s44, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v54, 31, v53
	v_lshlrev_b64 v[53:54], 2, v[53:54]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v53, vcc_lo, s22, v53
	v_add_co_ci_u32_e64 v54, null, s23, v54, vcc_lo
	global_load_b32 v58, v[53:54], off
.LBB0_45:                               ; %atomicrmw.start260
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v57, v58, v50
	global_atomic_cmpswap_b32 v1, v[53:54], v[57:58], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v58
	v_mov_b32_e32 v58, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end259
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v49, s6, s45, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v50, 31, v49
	v_lshlrev_b64 v[49:50], 2, v[49:50]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v49, vcc_lo, s22, v49
	v_add_co_ci_u32_e64 v50, null, s23, v50, vcc_lo
	global_load_b32 v54, v[49:50], off
.LBB0_47:                               ; %atomicrmw.start254
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v53, v54, v46
	global_atomic_cmpswap_b32 v1, v[49:50], v[53:54], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v54
	v_mov_b32_e32 v54, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end253
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v45, s6, s46, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v46, 31, v45
	v_lshlrev_b64 v[45:46], 2, v[45:46]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v45, vcc_lo, s22, v45
	v_add_co_ci_u32_e64 v46, null, s23, v46, vcc_lo
	global_load_b32 v50, v[45:46], off
.LBB0_49:                               ; %atomicrmw.start248
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v49, v50, v42
	global_atomic_cmpswap_b32 v1, v[45:46], v[49:50], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v50
	v_mov_b32_e32 v50, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end247
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v41, s6, s47, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v42, 31, v41
	v_lshlrev_b64 v[41:42], 2, v[41:42]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v41, vcc_lo, s22, v41
	v_add_co_ci_u32_e64 v42, null, s23, v42, vcc_lo
	global_load_b32 v46, v[41:42], off
.LBB0_51:                               ; %atomicrmw.start242
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v45, v46, v38
	global_atomic_cmpswap_b32 v1, v[41:42], v[45:46], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v46
	v_mov_b32_e32 v46, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end241
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v37, s6, s48, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v38, 31, v37
	v_lshlrev_b64 v[37:38], 2, v[37:38]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v37, vcc_lo, s22, v37
	v_add_co_ci_u32_e64 v38, null, s23, v38, vcc_lo
	global_load_b32 v42, v[37:38], off
.LBB0_53:                               ; %atomicrmw.start236
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v41, v42, v34
	global_atomic_cmpswap_b32 v1, v[37:38], v[41:42], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v42
	v_mov_b32_e32 v42, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end235
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v33, s6, s49, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s22, v33
	v_add_co_ci_u32_e64 v34, null, s23, v34, vcc_lo
	global_load_b32 v38, v[33:34], off
.LBB0_55:                               ; %atomicrmw.start230
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v37, v38, v30
	global_atomic_cmpswap_b32 v1, v[33:34], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v38
	v_mov_b32_e32 v38, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end229
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v29, s6, s50, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v30, 31, v29
	v_lshlrev_b64 v[29:30], 2, v[29:30]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v29, vcc_lo, s22, v29
	v_add_co_ci_u32_e64 v30, null, s23, v30, vcc_lo
	global_load_b32 v34, v[29:30], off
.LBB0_57:                               ; %atomicrmw.start224
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v26
	global_atomic_cmpswap_b32 v1, v[29:30], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v34
	v_mov_b32_e32 v34, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end223
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v25, s6, s51, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v26, 31, v25
	v_lshlrev_b64 v[25:26], 2, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v25, vcc_lo, s22, v25
	v_add_co_ci_u32_e64 v26, null, s23, v26, vcc_lo
	global_load_b32 v30, v[25:26], off
.LBB0_59:                               ; %atomicrmw.start218
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v29, v30, v22
	global_atomic_cmpswap_b32 v1, v[25:26], v[29:30], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v30
	v_mov_b32_e32 v30, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end217
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v21, s6, s52, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v22, 31, v21
	v_lshlrev_b64 v[21:22], 2, v[21:22]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v21, vcc_lo, s22, v21
	v_add_co_ci_u32_e64 v22, null, s23, v22, vcc_lo
	global_load_b32 v26, v[21:22], off
.LBB0_61:                               ; %atomicrmw.start212
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v25, v26, v18
	global_atomic_cmpswap_b32 v1, v[21:22], v[25:26], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v26
	v_mov_b32_e32 v26, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end211
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v17, s6, s53, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s22, v17
	v_add_co_ci_u32_e64 v18, null, s23, v18, vcc_lo
	global_load_b32 v22, v[17:18], off
.LBB0_63:                               ; %atomicrmw.start206
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v21, v22, v14
	global_atomic_cmpswap_b32 v1, v[17:18], v[21:22], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v22
	v_mov_b32_e32 v22, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end205
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v13, s6, s54, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, vcc_lo, s22, v13
	v_add_co_ci_u32_e64 v14, null, s23, v14, vcc_lo
	global_load_b32 v18, v[13:14], off
.LBB0_65:                               ; %atomicrmw.start200
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v17, v18, v10
	global_atomic_cmpswap_b32 v1, v[13:14], v[17:18], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v18
	v_mov_b32_e32 v18, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end199
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v9, s6, s55, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v9, vcc_lo, s22, v9
	v_add_co_ci_u32_e64 v10, null, s23, v10, vcc_lo
	global_load_b32 v14, v[9:10], off
.LBB0_67:                               ; %atomicrmw.start194
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v6
	global_atomic_cmpswap_b32 v1, v[9:10], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v14
	v_mov_b32_e32 v14, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end193
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v5, s6, s56, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, vcc_lo, s22, v5
	v_add_co_ci_u32_e64 v6, null, s23, v6, vcc_lo
	global_load_b32 v10, v[5:6], off
.LBB0_69:                               ; %atomicrmw.start188
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v9, v10, v2
	global_atomic_cmpswap_b32 v1, v[5:6], v[9:10], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v10
	v_mov_b32_e32 v10, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end187
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s57, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_71:                               ; %atomicrmw.start182
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v63
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end181
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s58, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_73:                               ; %atomicrmw.start176
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v59
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end175
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s59, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_75:                               ; %atomicrmw.start170
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v55
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_75
; %bb.76:                               ; %atomicrmw.end169
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s60, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_77:                               ; %atomicrmw.start164
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v51
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_77
; %bb.78:                               ; %atomicrmw.end163
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s61, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_79:                               ; %atomicrmw.start158
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v47
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_79
; %bb.80:                               ; %atomicrmw.end157
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s62, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_81:                               ; %atomicrmw.start152
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v43
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_81
; %bb.82:                               ; %atomicrmw.end151
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s63, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_83:                               ; %atomicrmw.start146
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v39
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_83
; %bb.84:                               ; %atomicrmw.end145
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s64, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_85:                               ; %atomicrmw.start140
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v35
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_85
; %bb.86:                               ; %atomicrmw.end139
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s65, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_87:                               ; %atomicrmw.start134
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v31
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_87
; %bb.88:                               ; %atomicrmw.end133
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s66, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_89:                               ; %atomicrmw.start128
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v27
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_89
; %bb.90:                               ; %atomicrmw.end127
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s67, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_91:                               ; %atomicrmw.start122
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v23
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_91
; %bb.92:                               ; %atomicrmw.end121
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s69, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_93:                               ; %atomicrmw.start116
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v19
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_93
; %bb.94:                               ; %atomicrmw.end115
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s70, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_95:                               ; %atomicrmw.start110
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v15
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_95
; %bb.96:                               ; %atomicrmw.end109
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s71, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_97:                               ; %atomicrmw.start104
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v11
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_97
; %bb.98:                               ; %atomicrmw.end103
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s72, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_99:                               ; %atomicrmw.start98
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v7
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_99
; %bb.100:                              ; %atomicrmw.end97
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s73, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_101:                              ; %atomicrmw.start92
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v3
	global_atomic_cmpswap_b32 v5, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_101
; %bb.102:                              ; %atomicrmw.end91
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s74, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_103:                              ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v64
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_103
; %bb.104:                              ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s75, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_105:                              ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v60
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_105
; %bb.106:                              ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s76, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_107:                              ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v56
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_107
; %bb.108:                              ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s77, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_109:                              ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v52
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_109
; %bb.110:                              ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s78, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_111:                              ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v48
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_111
; %bb.112:                              ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s79, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_113:                              ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v44
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_113
; %bb.114:                              ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s80, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_115:                              ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v40
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_115
; %bb.116:                              ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s81, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_117:                              ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v36
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_117
; %bb.118:                              ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s82, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_119:                              ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v32
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_119
; %bb.120:                              ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s83, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_121:                              ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v28
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_121
; %bb.122:                              ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s84, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_123:                              ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v24
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_123
; %bb.124:                              ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s85, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_125:                              ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v20
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_125
; %bb.126:                              ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s86, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_127:                              ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v16
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_127
; %bb.128:                              ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s87, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_129:                              ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v12
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_129
; %bb.130:                              ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s88, v95
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_131:                              ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v8
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_131
; %bb.132:                              ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v1, s6, s89, v95
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v6, v[1:2], off
.LBB0_133:                              ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v4
	global_atomic_cmpswap_b32 v3, v[1:2], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v6
	v_mov_b32_e32 v6, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_133
; %bb.134:                              ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s24
	s_cbranch_scc1 .LBB0_2
.LBB0_135:                              ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
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
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_vgpr, 184
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10036
; TotalNumSgprs: 98
; NumVgprs: 184
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 98
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     184
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
