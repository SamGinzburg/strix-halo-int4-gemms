	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
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
; %bb.1:                                ; %.lr.ph5
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 228 27 is_stmt 1              ; generate_amdgcn.py:228:27
	s_lshl_b32 s19, s3, 4
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s0, s18, 2
	v_lshlrev_b32_e32 v6, 4, v0
	v_lshlrev_b32_e32 v10, 1, v0
	v_and_b32_e32 v11, 16, v0
	v_lshlrev_b32_e32 v12, 5, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
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
	v_and_b32_e32 v9, 0x70, v6
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s1, s13, 31
	v_lshlrev_b32_e32 v17, 13, v0
	s_add_i32 s1, s13, s1
	v_xor_b32_e32 v13, v14, v13
	s_ashr_i32 s1, s1, 1
	v_lshlrev_b32_e32 v14, 4, v1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s3, s1, 31
	v_lshlrev_b32_e32 v11, 2, v11
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s12, s3, 31
	v_and_or_b32 v15, 0x300, v15, v16
	s_lshr_b32 s12, s12, 27
.Ltmp12:
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	v_or_b32_e32 v3, s19, v3
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s3, s3, s12
	s_mov_b32 s12, s4
	s_ashr_i32 s89, s3, 5
	s_cmp_gt_i32 s13, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s3, -1, 0
	s_abs_i32 s69, s0
.Ltmp14:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v71, 15, v0
	s_cvt_f32_u32 s6, s69
	v_and_b32_e32 v4, 0x37c, v4
	v_and_b32_e32 v5, 0x88, v5
	v_and_or_b32 v7, 0x88, v7, v9
	v_rcp_iflag_f32_e32 v20, s6
	v_lshrrev_b32_e32 v9, 1, v0
	v_lshlrev_b32_e32 v16, 2, v2
	v_and_b32_e32 v12, 32, v12
	v_and_or_b32 v75, 0xe000, v17, v13
	v_or3_b32 v76, v15, v14, v11
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v3, s21, v3
	v_add_nc_u32_e32 v8, 0, v71
	v_xor_b32_e32 v4, v5, v4
	v_xor_b32_e32 v5, 8, v7
	v_readfirstlane_b32 s6, v20
	v_and_b32_e32 v9, 0x70, v9
	v_and_b32_e32 v10, 28, v10
	v_add3_u32 v11, 0, v16, v12
	v_lshlrev_b32_e32 v2, 1, v2
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v12, 32, v75
	v_xor_b32_e32 v13, 0x2010, v76
	v_xor_b32_e32 v14, 0x4020, v76
	v_xor_b32_e32 v15, 0x6030, v76
	v_xor_b32_e32 v16, 0x8040, v76
	v_xor_b32_e32 v17, 0xa050, v76
	v_xor_b32_e32 v18, 0xc060, v76
	v_xor_b32_e32 v19, 0xe070, v76
	s_cvt_u32_f32 s6, s6
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s69
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v70, 2, v0
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v72, 16, v71
	v_or_b32_e32 v73, 32, v71
	v_or_b32_e32 v74, 48, v71
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_lshl_add_u32 v77, v71, 4, v3
	v_lshl_or_b32 v65, v1, 2, s19
	v_add_nc_u32_e32 v78, 0, v4
	v_add_nc_u32_e32 v79, 0, v7
	v_add_nc_u32_e32 v80, 0, v5
	v_add_nc_u32_e32 v81, 0, v6
	v_add_nc_u32_e32 v82, v8, v9
	v_add_nc_u32_e32 v83, v11, v10
	v_add_nc_u32_e32 v84, 0, v2
	v_add_nc_u32_e32 v85, 0, v12
	v_add_nc_u32_e32 v86, 0, v13
	v_add_nc_u32_e32 v87, 0, v14
	v_add_nc_u32_e32 v88, 0, v15
	v_add_nc_u32_e32 v89, 0, v16
	v_add_nc_u32_e32 v90, 0, v17
	v_add_nc_u32_e32 v91, 0, v18
	v_add_nc_u32_e32 v92, 0, v19
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	s_lshl_b32 s25, s21, 1
	s_mul_i32 s26, s21, 3
	s_lshl_b32 s27, s21, 2
	s_mul_i32 s28, s21, 5
	s_mul_i32 s29, s21, 6
	s_mul_i32 s30, s21, 7
	s_lshl_b32 s31, s21, 3
	s_mul_i32 s33, s21, 9
	s_mul_i32 s34, s21, 10
	s_mul_i32 s35, s21, 11
	s_mul_i32 s36, s21, 12
	s_mul_i32 s37, s21, 13
	s_mul_i32 s38, s21, 14
	s_mul_i32 s39, s21, 15
	s_lshl_b32 s40, s21, 4
	s_mul_i32 s41, s21, 17
	s_mul_i32 s42, s21, 18
	s_mul_i32 s43, s21, 19
	s_mul_i32 s44, s21, 20
	s_mul_i32 s45, s21, 21
	s_mul_i32 s46, s21, 22
	s_mul_i32 s47, s21, 23
	s_mul_i32 s48, s21, 24
	s_mul_i32 s49, s21, 25
	s_mul_i32 s50, s21, 26
	s_mul_i32 s51, s21, 27
	s_mul_i32 s52, s21, 28
	s_mul_i32 s53, s21, 29
	s_mul_i32 s54, s21, 30
	s_mul_i32 s55, s21, 31
	s_lshl_b32 s56, s21, 5
	s_mul_i32 s57, s21, 33
	s_mul_i32 s58, s21, 34
	s_mul_i32 s59, s21, 35
	s_mul_i32 s60, s21, 36
	s_mul_i32 s61, s21, 37
	s_mul_i32 s62, s21, 38
	s_mul_i32 s63, s21, 39
	s_mul_i32 s64, s21, 40
	s_mul_i32 s65, s21, 41
	s_mul_i32 s66, s21, 42
	s_mul_i32 s67, s21, 43
	s_mul_i32 s68, s21, 44
	s_mul_i32 s70, s21, 45
	s_mul_i32 s71, s21, 46
	s_mul_i32 s72, s21, 47
	s_mul_i32 s73, s21, 48
	s_mul_i32 s74, s21, 49
	s_mul_i32 s75, s21, 50
	s_mul_i32 s76, s21, 51
	s_mul_i32 s77, s21, 52
	s_mul_i32 s78, s21, 53
	s_mul_i32 s79, s21, 54
	s_mul_i32 s80, s21, 55
	s_mul_i32 s81, s21, 56
	s_mul_i32 s82, s21, 57
	s_mul_i32 s83, s21, 58
	s_mul_i32 s84, s21, 59
	s_mul_i32 s85, s21, 60
	s_mul_i32 s86, s21, 61
	s_mul_i32 s87, s21, 62
	s_mul_i32 s88, s21, 63
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s89, s89, 1
	s_bfe_i32 s90, s18, 0x1001d
	s_add_i32 s91, s6, s7
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
	s_mul_hi_u32 s10, s6, s91
	s_xor_b32 s7, s7, s90
	s_mul_i32 s11, s10, s69
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s10, 1
	s_sub_i32 s18, s6, s69
	s_cmp_ge_u32 s6, s69
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s6, s18, s6
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s6, s69
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
	s_mul_i32 s6, s6, s0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s20, s11
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s92, s2, s6
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
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	s_mul_i32 s19, s19, s10
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	s_mul_hi_u32 s6, s10, s19
	s_abs_i32 s19, s92
	s_add_i32 s10, s10, s6
	s_xor_b32 s6, s92, s18
	s_mul_hi_u32 s10, s19, s10
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s93, s10, s7
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	s_sub_i32 s19, s19, s93
	s_add_i32 s93, s10, 1
	s_sub_i32 s94, s19, s7
	s_cmp_ge_u32 s19, s7
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	s_cselect_b32 s10, s93, s10
	s_cselect_b32 s19, s94, s19
	s_add_i32 s93, s10, 1
	s_cmp_ge_u32 s19, s7
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	s_cselect_b32 s7, s93, s10
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	s_xor_b32 s7, s7, s6
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	s_sub_i32 s10, s7, s6
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s18, s10, s18
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	s_sub_i32 s18, s92, s18
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s18, s18, s11
	.loc	1 226 13 is_stmt 1              ; generate_amdgcn.py:226:13
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s92, s18, 6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_add_u32 v2, s7, 8, v77
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s92, v70
	s_lshl_b32 s6, s6, 8
	s_mov_b32 s11, s89
	v_subrev_nc_u32_e32 v68, s6, v2
	v_mov_b32_e32 v2, v1
	v_mad_u64_u32 v[66:67], null, s1, v3, v[65:66]
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
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_b32 v67, v66, s[12:15], 0 offen
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b128 v[93:96], v68, s[4:7], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v66, 32, v66
	v_add_nc_u32_e32 v68, s56, v68
	s_add_i32 s11, s11, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s11, 0
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v78, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[97:100], v79 offset1:32
	ds_load_2addr_b64 v[101:104], v79 offset0:64 offset1:96
	ds_load_2addr_b64 v[105:108], v80 offset1:32
	ds_load_2addr_b64 v[109:112], v80 offset0:64 offset1:96
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v81, v[93:96]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v67, v82 offset:3328
	ds_load_u8 v69, v82 offset:3072
	ds_load_u8 v93, v82 offset:3840
	ds_load_u8 v94, v82 offset:3584
	ds_load_u8 v95, v82 offset:2304
	ds_load_u8 v96, v82 offset:2048
	ds_load_u8 v113, v82 offset:2816
	ds_load_u8 v114, v82 offset:2560
	ds_load_u8 v115, v82 offset:1280
	ds_load_u8 v116, v82 offset:1024
	ds_load_u8 v117, v82 offset:1792
	ds_load_u8 v118, v82 offset:1536
	ds_load_u8 v119, v82 offset:1920
	ds_load_u8 v120, v82 offset:1664
	ds_load_u8 v121, v82 offset:1408
	ds_load_u8 v122, v82 offset:1152
	ds_load_u8 v123, v82 offset:256
	ds_load_u8 v124, v82
	ds_load_u8 v125, v82 offset:768
	ds_load_u8 v126, v82 offset:512
	ds_load_u8 v127, v82 offset:896
	ds_load_u8 v128, v82 offset:640
	ds_load_u8 v129, v82 offset:384
	ds_load_u8 v130, v82 offset:128
	ds_load_u8 v131, v82 offset:3968
	ds_load_u8 v132, v82 offset:3712
	ds_load_u8 v133, v82 offset:3456
	ds_load_u8 v134, v82 offset:3200
	ds_load_u8 v135, v82 offset:2944
	ds_load_u8 v136, v82 offset:2688
	ds_load_u8 v137, v82 offset:2432
	ds_load_u8 v138, v82 offset:2176
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v116, v118, v117, 0xc0c0004
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_perm_b32 v69, v94, v93, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v117, v124, v123, 0xc0c0004
	v_perm_b32 v123, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v118, v126, v125, 0xc0c0004
	v_perm_b32 v113, v122, v121, 0xc0c0004
	v_perm_b32 v114, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v120, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v119, v130, v129, 0xc0c0004
	v_lshl_or_b32 v94, v116, 16, v115
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v122, v132, v131, 0xc0c0004
	v_lshl_or_b32 v93, v118, 16, v117
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v134, v133, 0xc0c0004
	v_lshl_or_b32 v114, v114, 16, v113
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v125, v136, v135, 0xc0c0004
	v_lshl_or_b32 v113, v120, 16, v119
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v138, v137, 0xc0c0004
	v_lshl_or_b32 v96, v69, 16, v67
	v_lshl_or_b32 v95, v123, 16, v95
	v_lshl_or_b32 v116, v122, 16, v121
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[9:16], v[113:114], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[93:94], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[113:114], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[93:94], v[101:102], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[113:114], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[113:114], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[105:106], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[105:106], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[107:108], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[107:108], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[95:96], v[109:110], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[109:110], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[95:96], v[111:112], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[111:112], v[57:64] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
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
	v_cvt_f32_i32_e32 v94, v30
	v_cvt_f32_i32_e32 v69, v31
	v_cvt_f32_i32_e32 v68, v32
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
	v_or_b32_e32 v34, s92, v71
	v_or_b32_e32 v35, s92, v72
	v_or_b32_e32 v36, s92, v73
	v_or_b32_e32 v37, s92, v74
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	v_lshl_or_b32 v93, s10, 8, v0
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
	s_mul_i32 s6, s92, s21
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_mov_b32 s18, s14
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add_nc_u32_e32 v41, s6, v93
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_mov_b32 s19, s15
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v42, 31, v41
	v_lshlrev_b64 v[49:50], 2, v[41:42]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v49
	v_add_co_ci_u32_e64 v67, null, s23, v50, vcc_lo
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v52
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v93
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	ds_store_b32 v83, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v84
	ds_load_b128 v[37:40], v84 offset:16
	ds_load_b128 v[41:44], v84 offset:512
	ds_load_b128 v[45:48], v84 offset:528
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v49, 16, v51
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v138, v39, v50
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v59, v39, v49 :: v_dual_lshlrev_b32 v52, 16, v54
	v_mul_f32_e32 v57, v37, v49
	v_dual_mul_f32 v140, v40, v50 :: v_dual_lshlrev_b32 v51, 16, v53
	v_mul_f32_e32 v53, v33, v49
	v_mul_f32_e32 v55, v35, v49
	v_dual_mul_f32 v58, v38, v49 :: v_dual_mul_f32 v133, v35, v50
	v_mul_f32_e32 v130, v33, v50
	v_mul_f32_e32 v136, v37, v50
	v_dual_mul_f32 v148, v47, v50 :: v_dual_mul_f32 v153, v36, v51
	v_dual_mul_f32 v150, v33, v51 :: v_dual_mul_f32 v167, v34, v52
	v_dual_mul_f32 v152, v35, v51 :: v_dual_mul_f32 v169, v36, v52
	v_dual_mul_f32 v155, v38, v51 :: v_dual_mul_f32 v166, v33, v52
	v_dual_mul_f32 v56, v36, v49 :: v_dual_add_nc_u32 v143, 0, v75
	v_dual_mul_f32 v154, v37, v51 :: v_dual_mul_f32 v171, v38, v52
	v_dual_mul_f32 v157, v40, v51 :: v_dual_mul_f32 v168, v35, v52
	v_dual_mul_f32 v156, v39, v51 :: v_dual_mul_f32 v173, v40, v52
	v_dual_mul_f32 v159, v42, v51 :: v_dual_mul_f32 v170, v37, v52
	v_dual_mul_f32 v60, v40, v49 :: v_dual_mul_f32 v137, v38, v50
	v_dual_mul_f32 v63, v42, v49 :: v_dual_mul_f32 v144, v43, v50
	v_dual_mul_f32 v158, v41, v51 :: v_dual_mul_f32 v175, v42, v52
	v_dual_mul_f32 v161, v44, v51 :: v_dual_mul_f32 v172, v39, v52
	v_dual_mul_f32 v62, v41, v49 :: v_dual_mul_f32 v145, v44, v50
	v_dual_mul_f32 v64, v43, v49 :: v_dual_mul_f32 v141, v41, v50
	v_dual_mul_f32 v125, v45, v49 :: v_dual_mul_f32 v142, v42, v50
	v_dual_mul_f32 v160, v43, v51 :: v_dual_mul_f32 v177, v44, v52
	v_dual_mul_f32 v163, v46, v51 :: v_dual_mul_f32 v174, v41, v52
	v_mul_f32_e32 v54, v34, v49
	v_dual_mul_f32 v124, v44, v49 :: v_dual_mul_f32 v147, v46, v50
	v_dual_mul_f32 v126, v46, v49 :: v_dual_mul_f32 v149, v48, v50
	v_dual_mul_f32 v128, v47, v49 :: v_dual_mul_f32 v151, v34, v51
	v_dual_mul_f32 v129, v48, v49 :: v_dual_mul_f32 v146, v45, v50
	v_mul_f32_e32 v132, v34, v50
	v_mul_f32_e32 v134, v36, v50
	v_dual_mul_f32 v162, v45, v51 :: v_dual_mul_f32 v179, v46, v52
	v_dual_mul_f32 v164, v47, v51 :: v_dual_mul_f32 v181, v48, v52
	v_dual_mul_f32 v165, v48, v51 :: v_dual_mul_f32 v176, v43, v52
	v_dual_mul_f32 v178, v45, v52 :: v_dual_mul_f32 v37, v54, v122
	v_dual_mul_f32 v180, v47, v52 :: v_dual_mul_f32 v33, v53, v123
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v41, v55, v121 :: v_dual_mul_f32 v34, v130, v107
	v_dual_mul_f32 v53, v58, v118 :: v_dual_mul_f32 v50, v136, v103
	v_dual_mul_f32 v136, v148, v69 :: v_dual_mul_f32 v35, v150, v32
	v_dual_mul_f32 v43, v152, v30 :: v_dual_mul_f32 v36, v166, v16
	v_dual_mul_f32 v45, v56, v120 :: v_dual_mul_f32 v42, v133, v105
	v_dual_mul_f32 v51, v154, v28 :: v_dual_mul_f32 v44, v168, v14
	v_dual_mul_f32 v49, v57, v119 :: v_dual_mul_f32 v38, v132, v106
	v_dual_mul_f32 v57, v59, v117 :: v_dual_mul_f32 v46, v134, v104
	v_dual_mul_f32 v59, v156, v26 :: v_dual_mul_f32 v52, v170, v12
	v_dual_mul_f32 v61, v60, v116 :: v_dual_mul_f32 v54, v137, v102
	v_dual_mul_f32 v119, v63, v114 :: v_dual_mul_f32 v58, v138, v101
	v_dual_mul_f32 v117, v158, v24 :: v_dual_mul_f32 v60, v172, v10
	v_dual_mul_f32 v115, v62, v115 :: v_dual_mul_f32 v62, v140, v100
	v_dual_mul_f32 v123, v64, v113 :: v_dual_mul_f32 v116, v141, v99
	v_mul_f32_e32 v111, v125, v111
	v_dual_mul_f32 v125, v160, v22 :: v_dual_mul_f32 v118, v174, v8
	v_dual_mul_f32 v127, v124, v112 :: v_dual_mul_f32 v120, v142, v98
	v_mul_f32_e32 v131, v126, v110
	v_dual_mul_f32 v135, v128, v109 :: v_dual_mul_f32 v112, v146, v95
	v_dual_mul_f32 v139, v129, v108 :: v_dual_mul_f32 v132, v147, v94
	v_mul_f32_e32 v124, v144, v97
	v_mul_f32_e32 v128, v145, v96
	v_dual_mul_f32 v140, v149, v68 :: v_dual_mul_f32 v39, v151, v31
	v_dual_mul_f32 v47, v153, v29 :: v_dual_mul_f32 v40, v167, v15
	v_dual_mul_f32 v55, v155, v27 :: v_dual_mul_f32 v48, v169, v13
	v_dual_mul_f32 v63, v157, v25 :: v_dual_mul_f32 v56, v171, v11
	v_dual_mul_f32 v121, v159, v23 :: v_dual_mul_f32 v64, v173, v9
	v_dual_mul_f32 v129, v161, v21 :: v_dual_mul_f32 v122, v175, v7
	v_dual_mul_f32 v113, v162, v20 :: v_dual_mul_f32 v126, v176, v6
	v_dual_mul_f32 v133, v163, v19 :: v_dual_mul_f32 v130, v177, v5
	v_dual_mul_f32 v137, v164, v18 :: v_dual_mul_f32 v114, v178, v4
	v_dual_mul_f32 v141, v165, v17 :: v_dual_mul_f32 v134, v179, v3
	v_mul_f32_e32 v138, v180, v2
	v_dual_mul_f32 v142, v181, v1 :: v_dual_add_nc_u32 v1, 0, v76
	ds_store_b128 v143, v[33:36]
	ds_store_b128 v143, v[41:44] offset:256
	ds_store_b128 v143, v[49:52] offset:512
	ds_store_b128 v143, v[57:60] offset:768
	ds_store_b128 v143, v[115:118] offset:4096
	ds_store_b128 v143, v[123:126] offset:4352
	ds_store_b128 v143, v[111:114] offset:4608
	ds_store_b128 v143, v[135:138] offset:4864
	ds_store_b128 v85, v[37:40]
	ds_store_b128 v85, v[45:48] offset:256
	ds_store_b128 v85, v[53:56] offset:512
	ds_store_b128 v85, v[61:64] offset:768
	ds_store_b128 v85, v[119:122] offset:4096
	ds_store_b128 v85, v[127:130] offset:4352
	ds_store_b128 v85, v[131:134] offset:4608
	ds_store_b128 v85, v[139:142] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	global_load_b32 v69, v[66:67], off
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	ds_load_b128 v[61:64], v1
	ds_load_b128 v[29:32], v1 offset:128
	ds_load_b128 v[57:60], v86
	ds_load_b128 v[25:28], v86 offset:128
	ds_load_b128 v[53:56], v87
	ds_load_b128 v[21:24], v87 offset:128
	ds_load_b128 v[49:52], v88
	ds_load_b128 v[17:20], v88 offset:128
	ds_load_b128 v[45:48], v89
	ds_load_b128 v[13:16], v89 offset:128
	ds_load_b128 v[41:44], v90
	ds_load_b128 v[9:12], v90 offset:128
	ds_load_b128 v[37:40], v91
	ds_load_b128 v[5:8], v91 offset:128
	ds_load_b128 v[33:36], v92
	ds_load_b128 v[1:4], v92 offset:128
.LBB0_7:                                ; %atomicrmw.start374
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v68, v69, v61
	global_atomic_cmpswap_b32 v68, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v68, v69
	v_mov_b32_e32 v69, v68
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end373
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s21, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_9:                                ; %atomicrmw.start368
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v68, v69, v57
	global_atomic_cmpswap_b32 v61, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v61, v69
	v_mov_b32_e32 v69, v61
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end367
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s25, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_11:                               ; %atomicrmw.start362
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v68, v69, v53
	global_atomic_cmpswap_b32 v57, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v57, v69
	v_mov_b32_e32 v69, v57
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end361
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s26, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_13:                               ; %atomicrmw.start356
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v68, v69, v49
	global_atomic_cmpswap_b32 v53, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v53, v69
	v_mov_b32_e32 v69, v53
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end355
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s27, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_15:                               ; %atomicrmw.start350
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v68, v69, v45
	global_atomic_cmpswap_b32 v49, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v49, v69
	v_mov_b32_e32 v69, v49
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end349
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s28, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_17:                               ; %atomicrmw.start344
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v68, v69, v41
	global_atomic_cmpswap_b32 v45, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v45, v69
	v_mov_b32_e32 v69, v45
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end343
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s29, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_19:                               ; %atomicrmw.start338
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v68, v69, v37
	global_atomic_cmpswap_b32 v41, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v41, v69
	v_mov_b32_e32 v69, v41
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end337
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s30, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_21:                               ; %atomicrmw.start332
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v68, v69, v33
	global_atomic_cmpswap_b32 v37, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v37, v69
	v_mov_b32_e32 v69, v37
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end331
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s31, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_23:                               ; %atomicrmw.start326
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v29
	global_atomic_cmpswap_b32 v33, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v33, v69
	v_mov_b32_e32 v69, v33
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end325
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s33, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_25:                               ; %atomicrmw.start320
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v25
	global_atomic_cmpswap_b32 v29, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v29, v69
	v_mov_b32_e32 v69, v29
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end319
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s34, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_27:                               ; %atomicrmw.start314
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v21
	global_atomic_cmpswap_b32 v25, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v25, v69
	v_mov_b32_e32 v69, v25
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end313
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s35, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_29:                               ; %atomicrmw.start308
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v17
	global_atomic_cmpswap_b32 v21, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v21, v69
	v_mov_b32_e32 v69, v21
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end307
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s36, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_31:                               ; %atomicrmw.start302
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v13
	global_atomic_cmpswap_b32 v17, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v17, v69
	v_mov_b32_e32 v69, v17
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end301
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s37, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_33:                               ; %atomicrmw.start296
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v9
	global_atomic_cmpswap_b32 v13, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v13, v69
	v_mov_b32_e32 v69, v13
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end295
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s38, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_35:                               ; %atomicrmw.start290
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v5
	global_atomic_cmpswap_b32 v9, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v9, v69
	v_mov_b32_e32 v69, v9
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end289
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s39, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_37:                               ; %atomicrmw.start284
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v68, v69, v1
	global_atomic_cmpswap_b32 v5, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v69
	v_mov_b32_e32 v69, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end283
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v66, s6, s40, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v67, 31, v66
	v_lshlrev_b64 v[66:67], 2, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v66, vcc_lo, s22, v66
	v_add_co_ci_u32_e64 v67, null, s23, v67, vcc_lo
	global_load_b32 v69, v[66:67], off
.LBB0_39:                               ; %atomicrmw.start278
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v68, v69, v62
	global_atomic_cmpswap_b32 v1, v[66:67], v[68:69], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v69
	v_mov_b32_e32 v69, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end277
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v61, s6, s41, v93
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v62, 31, v61
	v_lshlrev_b64 v[61:62], 2, v[61:62]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v61, vcc_lo, s22, v61
	v_add_co_ci_u32_e64 v62, null, s23, v62, vcc_lo
	global_load_b32 v67, v[61:62], off
.LBB0_41:                               ; %atomicrmw.start272
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v67, v58
	global_atomic_cmpswap_b32 v1, v[61:62], v[66:67], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v67
	v_mov_b32_e32 v67, v1
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end271
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	v_add3_u32 v57, s6, s42, v93
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
	v_add3_u32 v53, s6, s43, v93
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
	v_add3_u32 v49, s6, s44, v93
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
	v_add3_u32 v45, s6, s45, v93
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
	v_add3_u32 v41, s6, s46, v93
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
	v_add3_u32 v37, s6, s47, v93
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
	v_add3_u32 v33, s6, s48, v93
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
	v_add3_u32 v29, s6, s49, v93
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
	v_add3_u32 v25, s6, s50, v93
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
	v_add3_u32 v21, s6, s51, v93
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
	v_add3_u32 v17, s6, s52, v93
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
	v_add3_u32 v13, s6, s53, v93
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
	v_add3_u32 v9, s6, s54, v93
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
	v_add3_u32 v5, s6, s55, v93
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
	v_add3_u32 v1, s6, s56, v93
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
	v_add3_u32 v1, s6, s57, v93
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
	v_add3_u32 v1, s6, s58, v93
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
	v_add3_u32 v1, s6, s59, v93
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
	v_add3_u32 v1, s6, s60, v93
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
	v_add3_u32 v1, s6, s61, v93
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
	v_add3_u32 v1, s6, s62, v93
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
	v_add3_u32 v1, s6, s63, v93
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
	v_add3_u32 v1, s6, s64, v93
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
	v_add3_u32 v1, s6, s65, v93
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
	v_add3_u32 v1, s6, s66, v93
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
	v_add3_u32 v1, s6, s67, v93
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
	v_add3_u32 v1, s6, s68, v93
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
	v_add3_u32 v1, s6, s70, v93
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
	v_add3_u32 v1, s6, s71, v93
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
	v_add3_u32 v1, s6, s72, v93
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
	v_add3_u32 v1, s6, s73, v93
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
	v_add3_u32 v1, s6, s74, v93
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
	v_add3_u32 v1, s6, s75, v93
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
	v_add3_u32 v1, s6, s76, v93
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
	v_add3_u32 v1, s6, s77, v93
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
	v_add3_u32 v1, s6, s78, v93
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
	v_add3_u32 v1, s6, s79, v93
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
	v_add3_u32 v1, s6, s80, v93
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
	v_add3_u32 v1, s6, s81, v93
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
	v_add3_u32 v1, s6, s82, v93
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
	v_add3_u32 v1, s6, s83, v93
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
	v_add3_u32 v1, s6, s84, v93
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
	v_add3_u32 v1, s6, s85, v93
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
	v_add3_u32 v1, s6, s86, v93
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
	v_add3_u32 v1, s6, s87, v93
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
	v_add3_u32 v1, s6, s88, v93
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
.LBB0_135:                              ; %._crit_edge6
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 95
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_vgpr, 182
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.numbered_sgpr, 95
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10400
; TotalNumSgprs: 97
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 97
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     97
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn256_bk32_gm4_w8_s1_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
