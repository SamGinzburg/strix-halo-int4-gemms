	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
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
	s_add_i32 s5, s21, 0x7f
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
	s_lshr_b32 s7, s7, 25
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
	s_ashr_i32 s18, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s24, s18, s20
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s24
	s_cbranch_scc1 .LBB0_71
; %bb.1:                                ; %.lr.ph3
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v6, 0x60, v0
	v_lshrrev_b32_e32 v8, 4, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v2, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 0x80, v0
	v_lshlrev_b32_e32 v11, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v9, 1, v6
	v_bfe_i32 v12, v0, 3, 1
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s0, s18, 2
	.loc	1 228 27                        ; generate_amdgcn.py:228:27
	s_lshl_b32 s3, s3, 4
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_bfe_i32 v5, v0, 0, 1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_or_b32 v43, v8, 1, v9
	v_bfe_i32 v9, v0, 5, 1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v1, 3, v4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_bfe_i32 v10, v0, 4, 1
	v_and_b32_e32 v13, 0x37c, v2
	v_and_b32_e32 v14, 0x70, v11
	v_and_b32_e32 v9, 0x88, v9
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s1, s12, 31
	v_and_b32_e32 v12, 0x88, v12
	s_add_i32 s1, s12, s1
	v_lshlrev_b32_e32 v15, 1, v4
	s_ashr_i32 s1, s1, 1
	v_lshlrev_b32_e32 v16, 3, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s13, s1, 31
	v_lshlrev_b32_e32 v6, 3, v6
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s14, s13, 31
.Ltmp12:
	.loc	1 213 14 is_stmt 1              ; generate_amdgcn.py:213:14
	v_and_b32_e32 v3, 1, v0
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_lshr_b32 s14, s14, 27
.Ltmp14:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v40, 2, v0
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s13, s13, s14
.Ltmp16:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_bfe_i32 v7, v0, 7, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s19, s13, 5
	s_cmp_gt_i32 s12, 1
	s_mov_b32 s12, s4
	s_cselect_b32 s25, -1, 0
	s_abs_i32 s38, s0
	s_mov_b32 s4, s6
	s_cvt_f32_u32 s6, s38
.Ltmp18:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v41, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v42, v0, 15, v1
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v32, 12, v2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v8, 7, v0
	v_xor_b32_e32 v9, v9, v13
	v_or3_b32 v13, v12, v15, v14
	v_and_b32_e32 v15, 0x778, v16
	v_and_b32_e32 v10, 0x88, v10
	v_and_b32_e32 v0, 14, v0
	v_and_b32_e32 v5, 0x840, v5
	v_and_or_b32 v2, 0x78, v2, v6
	v_rcp_iflag_f32_e32 v22, s6
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v33, 3, v3
	v_xor_b32_e32 v10, v10, v15
	v_lshlrev_b32_e32 v15, 11, v0
	v_xor_b32_e32 v2, v2, v5
	v_lshlrev_b32_e32 v3, 6, v3
	v_and_b32_e32 v5, 0x840, v7
	v_lshlrev_b32_e32 v0, 2, v0
	v_or3_b32 v12, v14, v6, v12
	v_or3_b32 v61, v2, v15, v4
	v_and_b32_e32 v2, 0x700, v11
	v_xor_b32_e32 v3, v5, v3
	v_readfirstlane_b32 s6, v22
	v_xor_b32_e32 v6, 8, v13
	v_xor_b32_e32 v14, 8, v12
	v_xor_b32_e32 v4, 8, v61
	v_or3_b32 v62, v2, v0, v3
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v2, 40, v61
	v_xor_b32_e32 v5, 16, v61
	v_xor_b32_e32 v7, 24, v61
	v_xor_b32_e32 v0, 32, v61
	v_xor_b32_e32 v3, 48, v61
	v_xor_b32_e32 v11, 56, v61
	v_xor_b32_e32 v15, 0x1008, v62
	v_xor_b32_e32 v16, 0x2010, v62
	v_xor_b32_e32 v17, 0x3018, v62
	v_xor_b32_e32 v18, 0x4020, v62
	v_xor_b32_e32 v19, 0x5028, v62
	v_xor_b32_e32 v20, 0x6030, v62
	v_xor_b32_e32 v21, 0x7038, v62
	s_cvt_u32_f32 s6, s6
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[34:35], null, s21, v8, v[1:2]
	s_sub_i32 s7, 0, s38
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v44, 32, v42
	s_mul_i32 s7, s7, s6
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v45, 2, v43
	v_or_b32_e32 v46, 4, v43
	v_or_b32_e32 v47, 6, v43
	v_or_b32_e32 v48, 8, v43
	v_or_b32_e32 v49, 10, v43
	v_or_b32_e32 v50, 12, v43
	v_or_b32_e32 v51, 14, v43
	v_or_b32_e32 v52, 64, v43
	v_or_b32_e32 v53, 0x42, v43
	v_or_b32_e32 v54, 0x44, v43
	v_or_b32_e32 v55, 0x46, v43
	v_or_b32_e32 v56, 0x48, v43
	v_or_b32_e32 v57, 0x4a, v43
	v_or_b32_e32 v58, 0x4c, v43
	v_or_b32_e32 v59, 0x4e, v43
	v_sub_nc_u32_e32 v60, s1, v32
	v_add_nc_u32_e32 v63, 0, v9
	v_add_nc_u32_e32 v64, 0, v13
	v_add_nc_u32_e32 v65, 0, v6
	v_add_nc_u32_e32 v66, 0, v10
	v_add_nc_u32_e32 v67, 0, v12
	v_add_nc_u32_e32 v68, 0, v14
	v_add_nc_u32_e32 v69, 0, v4
	v_add_nc_u32_e32 v70, 0, v5
	v_add_nc_u32_e32 v71, 0, v7
	v_add_nc_u32_e32 v72, 0, v0
	v_add_nc_u32_e32 v73, 0, v2
	v_add_nc_u32_e32 v74, 0, v3
	v_add_nc_u32_e32 v75, 0, v11
	v_add_nc_u32_e32 v76, 0, v15
	v_add_nc_u32_e32 v77, 0, v16
	v_add_nc_u32_e32 v78, 0, v17
	v_add_nc_u32_e32 v79, 0, v18
	v_add_nc_u32_e32 v80, 0, v19
	v_add_nc_u32_e32 v81, 0, v20
	v_add_nc_u32_e32 v82, 0, v21
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mul_hi_u32 s7, s6, s7
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	s_lshl_b32 s26, s21, 1
	s_lshl_b32 s27, s21, 2
	s_mul_i32 s28, s21, 6
	s_lshl_b32 s29, s21, 3
	s_mul_i32 s30, s21, 10
	s_mul_i32 s31, s21, 12
	s_mul_i32 s33, s21, 14
	s_lshl_b32 s34, s21, 4
	s_mul_i32 s35, s21, 18
	s_mul_i32 s36, s21, 20
	s_mul_i32 s37, s21, 22
	s_mul_i32 s39, s21, 24
	s_mul_i32 s40, s21, 26
	s_mul_i32 s41, s21, 28
	s_mul_i32 s42, s21, 30
	s_lshl_b32 s43, s21, 5
	s_mul_i32 s44, s21, 34
	s_mul_i32 s45, s21, 36
	s_mul_i32 s46, s21, 38
	s_mul_i32 s47, s21, 40
	s_mul_i32 s48, s21, 42
	s_mul_i32 s49, s21, 44
	s_mul_i32 s50, s21, 46
	s_mul_i32 s51, s21, 48
	s_mul_i32 s52, s21, 50
	s_mul_i32 s53, s21, 52
	s_mul_i32 s54, s21, 54
	s_mul_i32 s55, s21, 56
	s_mul_i32 s56, s21, 58
	s_mul_i32 s57, s21, 60
	s_mul_i32 s58, s21, 62
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s59, s19, 1
	s_bfe_i32 s60, s18, 0x1001d
	s_add_i32 s61, s6, s7
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
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
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s18, s2, 31
	s_mul_hi_u32 s7, s6, s61
	s_xor_b32 s18, s18, s60
	s_mul_i32 s19, s7, s38
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_sub_i32 s6, s6, s19
	s_add_i32 s19, s7, 1
	s_sub_i32 s62, s6, s38
	s_cmp_ge_u32 s6, s38
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_cselect_b32 s7, s19, s7
	s_cselect_b32 s6, s62, s6
	s_add_i32 s19, s7, 1
	s_cmp_ge_u32 s6, s38
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s6, s19, s7
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_xor_b32 s6, s6, s18
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	s_sub_i32 s6, s6, s18
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s19, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s20, s19
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s64, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s62, s7, 4
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s62
	v_mov_b32_e32 v14, 0
	s_cvt_f32_u32 s18, s7
	s_sub_i32 s63, 0, s7
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v15, s18
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s18, v15
	v_mov_b32_e32 v15, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s63, s63, s18
	s_mul_hi_u32 s6, s18, s63
	s_abs_i32 s63, s64
	s_add_i32 s18, s18, s6
	s_xor_b32 s6, s64, s62
	s_mul_hi_u32 s18, s63, s18
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s65, s18, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s63, s63, s65
	s_add_i32 s65, s18, 1
	s_sub_i32 s66, s63, s7
	s_cmp_ge_u32 s63, s7
	s_cselect_b32 s18, s65, s18
	s_cselect_b32 s63, s66, s63
	s_add_i32 s65, s18, 1
	s_cmp_ge_u32 s63, s7
	s_cselect_b32 s7, s65, s18
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_not1_b32 vcc_lo, exec_lo, s25
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s18, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s62, s18, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s62, s64, s62
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s62, s62, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s62, s62, 6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_or_b32 v1, s7, 7, v41
	s_lshl_b32 s6, s6, 7
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s62, v40
	s_mov_b32 s19, s3
	v_subrev_nc_u32_e32 v3, s6, v1
	s_mov_b32 s63, s59
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[35:36], null, s1, v2, v[32:33]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[36:37], null, s1, v3, v[33:34]
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
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_add_nc_u32_e32 v37, s19, v33
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v38, s19, v35
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s19, v60
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_add_nc_u32_e32 v39, s19, v36
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s63, s63, -1
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 230 27                        ; generate_amdgcn.py:230:27
	v_cmp_gt_i32_e32 vcc_lo, s1, v37
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s19, s19, 32
	s_cmp_lg_u32 s63, 0
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e32 v37, 0x80000000, v39, vcc_lo
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_b32 v39, v38, s[12:15], 0 offen
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	buffer_load_b64 v[37:38], v37, s[4:7], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v63, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[83:86], v64 offset1:1
	ds_load_2addr_stride64_b64 v[87:90], v65 offset1:1
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v66, v[37:38]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[91:94], v67 offset1:2
	ds_load_2addr_stride64_b64 v[95:98], v68 offset1:2
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[91:92], v[83:84], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[93:94], v[83:84], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[91:92], v[85:86], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[93:94], v[85:86], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[95:96], v[87:88], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[97:98], v[87:88], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[95:96], v[89:90], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[97:98], v[89:90], v[24:31] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v96, v0
	v_cvt_f32_i32_e32 v95, v1
	v_cvt_f32_i32_e32 v94, v2
	v_cvt_f32_i32_e32 v93, v3
	v_cvt_f32_i32_e32 v92, v4
	v_cvt_f32_i32_e32 v91, v5
	v_cvt_f32_i32_e32 v90, v6
	v_cvt_f32_i32_e32 v89, v7
	v_cvt_f32_i32_e32 v88, v8
	v_cvt_f32_i32_e32 v87, v9
	v_cvt_f32_i32_e32 v86, v10
	v_cvt_f32_i32_e32 v85, v11
	v_cvt_f32_i32_e32 v84, v12
	v_cvt_f32_i32_e32 v83, v13
	v_cvt_f32_i32_e32 v39, v14
	v_cvt_f32_i32_e32 v38, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v14, v17
	v_cvt_f32_i32_e32 v13, v18
	v_cvt_f32_i32_e32 v12, v19
	v_cvt_f32_i32_e32 v11, v20
	v_cvt_f32_i32_e32 v10, v21
	v_cvt_f32_i32_e32 v9, v22
	v_cvt_f32_i32_e32 v8, v23
	v_cvt_f32_i32_e32 v7, v24
	v_cvt_f32_i32_e32 v6, v25
	v_cvt_f32_i32_e32 v5, v26
	v_cvt_f32_i32_e32 v4, v27
	v_cvt_f32_i32_e32 v3, v28
	v_cvt_f32_i32_e32 v2, v29
	v_cvt_f32_i32_e32 v1, v30
	v_cvt_f32_i32_e32 v0, v31
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v16, s62, v42
	v_or_b32_e32 v17, s62, v44
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s18, 7
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_mov_b32 s18, s14
	.loc	1 243 26 is_stmt 0              ; generate_amdgcn.py:243:26
	v_or_b32_e32 v18, s6, v43
	.loc	1 242 18 is_stmt 1              ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v19, s6, v45
	v_or_b32_e32 v20, s6, v46
	v_or_b32_e32 v21, s6, v47
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_clause 0x1
	buffer_load_u16 v22, v16, s[8:11], 0 offen
	buffer_load_u16 v23, v17, s[8:11], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v16, s6, v48
	v_or_b32_e32 v24, s6, v50
	v_or_b32_e32 v25, s6, v51
	v_or_b32_e32 v17, s6, v49
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v20, 1, v20
	s_mov_b32 s19, s15
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v24, 1, v24
	v_lshlrev_b32_e32 v25, 1, v25
	v_lshlrev_b32_e32 v17, 1, v17
	s_clause 0x7
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v97, v16, s[16:19], 0 offen
	buffer_load_u16 v98, v17, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v26, s6, v52
	v_or_b32_e32 v27, s6, v53
	v_or_b32_e32 v28, s6, v54
	v_or_b32_e32 v29, s6, v55
	v_or_b32_e32 v30, s6, v56
	v_or_b32_e32 v31, s6, v57
	v_or_b32_e32 v35, s6, v58
	v_or_b32_e32 v36, s6, v59
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 1, v27
	v_lshlrev_b32_e32 v27, 1, v29
	v_lshlrev_b32_e32 v29, 1, v31
	.loc	1 279 27 is_stmt 1              ; generate_amdgcn.py:279:27
	s_mul_i32 s62, s62, s21
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v31, 1, v36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v20
	v_lshlrev_b32_e32 v16, 1, v26
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	v_lshlrev_b32_e32 v26, 1, v28
	v_lshlrev_b32_e32 v28, 1, v30
	v_lshlrev_b32_e32 v30, 1, v35
	s_clause 0x7
	buffer_load_u16 v99, v16, s[16:19], 0 offen
	buffer_load_u16 v100, v17, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v29, v29, s[16:19], 0 offen
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	buffer_load_u16 v31, v31, s[16:19], 0 offen
	v_add3_u32 v35, s62, s6, v34
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v36, 31, v35
	v_lshlrev_b64 v[16:17], 2, v[35:36]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v16
	v_add_co_ci_u32_e64 v37, null, s23, v17, vcc_lo
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v17, 16, v23
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v23, 16, v98
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v121, v17, v24 :: v_dual_lshlrev_b32 v16, 16, v22
	v_mul_f32_e32 v105, v16, v23
	v_mul_f32_e32 v106, v16, v24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v107, v16, v25 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v30, 16, v30
	v_lshlrev_b32_e32 v98, 16, v100
	v_lshlrev_b32_e32 v21, 16, v21
	v_lshlrev_b32_e32 v19, 16, v19
	v_lshlrev_b32_e32 v22, 16, v97
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v110, v16, v26
	v_mul_f32_e32 v109, v16, v98
	v_mul_f32_e32 v103, v16, v21
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	v_lshlrev_b32_e32 v29, 16, v29
	v_lshlrev_b32_e32 v97, 16, v99
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v100, v16, v19
	v_mul_f32_e32 v104, v16, v22
	v_mul_f32_e32 v115, v16, v31
	v_dual_mul_f32 v102, v16, v20 :: v_dual_lshlrev_b32 v27, 16, v27
	v_mul_f32_e32 v113, v16, v29
	v_mul_f32_e32 v99, v16, v18
	v_mul_f32_e32 v108, v16, v97
	v_mul_f32_e32 v112, v16, v28
	v_mul_f32_e32 v111, v16, v27
	v_mul_f32_e32 v114, v16, v30
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v16, v99, v96
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v116, v17, v18
	v_mul_f32_e32 v125, v17, v28
	v_mul_f32_e32 v123, v17, v26
	v_dual_mul_f32 v119, v17, v22 :: v_dual_mul_f32 v22, v103, v93
	v_mul_f32_e32 v128, v17, v31
	v_mul_f32_e32 v126, v17, v29
	v_mul_f32_e32 v97, v17, v97
	v_mul_f32_e32 v127, v17, v30
	v_mul_f32_e32 v98, v17, v98
	v_mul_f32_e32 v118, v17, v21
	v_mul_f32_e32 v19, v17, v19
	v_dual_mul_f32 v117, v17, v20 :: v_dual_mul_f32 v20, v102, v94
	v_mul_f32_e32 v124, v17, v27
	v_mul_f32_e32 v122, v17, v25
	v_dual_mul_f32 v120, v17, v23 :: v_dual_add_nc_u32 v101, 0, v61
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v30, v107, v89
	v_dual_mul_f32 v88, v108, v88 :: v_dual_mul_f32 v89, v97, v7
	v_mul_f32_e32 v17, v116, v15
	v_dual_mul_f32 v18, v100, v95 :: v_dual_mul_f32 v19, v19, v14
	v_dual_mul_f32 v24, v104, v92 :: v_dual_mul_f32 v25, v119, v11
	v_dual_mul_f32 v26, v105, v91 :: v_dual_mul_f32 v23, v118, v12
	v_dual_mul_f32 v28, v106, v90 :: v_dual_mul_f32 v29, v121, v9
	v_dual_mul_f32 v90, v109, v87 :: v_dual_mul_f32 v31, v122, v8
	v_dual_mul_f32 v92, v111, v85 :: v_dual_mul_f32 v91, v98, v6
	v_dual_mul_f32 v86, v110, v86 :: v_dual_mul_f32 v87, v123, v5
	v_mul_f32_e32 v21, v117, v13
	v_dual_mul_f32 v94, v113, v83 :: v_dual_mul_f32 v93, v124, v4
	v_dual_mul_f32 v84, v112, v84 :: v_dual_mul_f32 v85, v125, v3
	v_dual_mul_f32 v96, v114, v39 :: v_dual_mul_f32 v97, v127, v1
	v_dual_mul_f32 v38, v115, v38 :: v_dual_mul_f32 v39, v128, v0
	v_mul_f32_e32 v27, v120, v10
	v_mul_f32_e32 v95, v126, v2
	ds_store_2addr_stride64_b64 v101, v[16:17], v[88:89] offset1:2
	ds_store_2addr_stride64_b64 v69, v[18:19], v[90:91] offset1:2
	ds_store_2addr_stride64_b64 v70, v[20:21], v[86:87] offset1:2
	ds_store_2addr_stride64_b64 v71, v[22:23], v[92:93] offset1:2
	ds_store_2addr_stride64_b64 v72, v[24:25], v[84:85] offset1:2
	ds_store_2addr_stride64_b64 v73, v[26:27], v[94:95] offset1:2
	ds_store_2addr_stride64_b64 v74, v[28:29], v[96:97] offset1:2
	ds_store_2addr_stride64_b64 v75, v[30:31], v[38:39] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	global_load_b32 v39, v[36:37], off
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_add_nc_u32_e32 v0, 0, v62
	ds_load_2addr_b64 v[28:31], v0 offset1:16
	ds_load_2addr_b64 v[24:27], v76 offset1:16
	ds_load_2addr_b64 v[20:23], v77 offset1:16
	ds_load_2addr_b64 v[16:19], v78 offset1:16
	ds_load_2addr_b64 v[12:15], v79 offset1:16
	ds_load_2addr_b64 v[8:11], v80 offset1:16
	ds_load_2addr_b64 v[4:7], v81 offset1:16
	ds_load_2addr_b64 v[0:3], v82 offset1:16
.LBB0_7:                                ; %atomicrmw.start182
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v38, v39, v28
	global_atomic_cmpswap_b32 v38, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v38, v39
	v_mov_b32_e32 v39, v38
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end181
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s26, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_9:                                ; %atomicrmw.start176
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v38, v39, v24
	global_atomic_cmpswap_b32 v28, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v39
	v_mov_b32_e32 v39, v28
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end175
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s27, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_11:                               ; %atomicrmw.start170
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v38, v39, v20
	global_atomic_cmpswap_b32 v24, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v39
	v_mov_b32_e32 v39, v24
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end169
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s28, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_13:                               ; %atomicrmw.start164
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v38, v39, v16
	global_atomic_cmpswap_b32 v20, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v39
	v_mov_b32_e32 v39, v20
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end163
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s29, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_15:                               ; %atomicrmw.start158
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v38, v39, v12
	global_atomic_cmpswap_b32 v16, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v39
	v_mov_b32_e32 v39, v16
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end157
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s30, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_17:                               ; %atomicrmw.start152
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v38, v39, v8
	global_atomic_cmpswap_b32 v12, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v39
	v_mov_b32_e32 v39, v12
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end151
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s31, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_19:                               ; %atomicrmw.start146
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v38, v39, v4
	global_atomic_cmpswap_b32 v8, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v39
	v_mov_b32_e32 v39, v8
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end145
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s33, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_21:                               ; %atomicrmw.start140
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v38, v39, v0
	global_atomic_cmpswap_b32 v4, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v39
	v_mov_b32_e32 v39, v4
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end139
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s34, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_23:                               ; %atomicrmw.start134
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v30
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end133
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s35, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_25:                               ; %atomicrmw.start128
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v26
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end127
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s36, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_27:                               ; %atomicrmw.start122
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v22
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end121
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s37, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_29:                               ; %atomicrmw.start116
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v18
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end115
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s39, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_31:                               ; %atomicrmw.start110
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v14
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end109
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s40, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_33:                               ; %atomicrmw.start104
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v10
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end103
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s41, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_35:                               ; %atomicrmw.start98
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v6
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end97
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s42, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_37:                               ; %atomicrmw.start92
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v2
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end91
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v36, s43, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v37, 31, v36
	v_lshlrev_b64 v[36:37], 2, v[36:37]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v36, vcc_lo, s22, v36
	v_add_co_ci_u32_e64 v37, null, s23, v37, vcc_lo
	global_load_b32 v39, v[36:37], off
.LBB0_39:                               ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v38, v39, v29
	global_atomic_cmpswap_b32 v0, v[36:37], v[38:39], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v39
	v_mov_b32_e32 v39, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v28, s44, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v29, 31, v28
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v28, vcc_lo, s22, v28
	v_add_co_ci_u32_e64 v29, null, s23, v29, vcc_lo
	global_load_b32 v37, v[28:29], off
.LBB0_41:                               ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v24, s45, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v25, 31, v24
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v24, vcc_lo, s22, v24
	v_add_co_ci_u32_e64 v25, null, s23, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_43:                               ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s46, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_45:                               ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v16, s47, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v16, vcc_lo, s22, v16
	v_add_co_ci_u32_e64 v17, null, s23, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_47:                               ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v12, s48, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s22, v12
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_49:                               ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v8, s49, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v8, vcc_lo, s22, v8
	v_add_co_ci_u32_e64 v9, null, s23, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_51:                               ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v4, s50, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, s22, v4
	v_add_co_ci_u32_e64 v5, null, s23, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_53:                               ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s51, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_55:                               ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s52, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_57:                               ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s53, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_59:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s54, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_61:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s55, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_63:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s56, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_65:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s57, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_67:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s58, v35
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_69:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s24
	s_cbranch_scc1 .LBB0_2
.LBB0_71:                               ; %._crit_edge4
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 67
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
		.amdhsa_inst_pref_size 47
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.num_vgpr, 129
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5920
; TotalNumSgprs: 69
; NumVgprs: 129
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 69
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     129
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
