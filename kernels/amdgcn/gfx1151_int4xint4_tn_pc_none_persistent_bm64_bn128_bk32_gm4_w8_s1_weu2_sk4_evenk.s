	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
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
	s_ashr_i32 s24, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s16, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s25, s16, s24
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s25
	s_cbranch_scc1 .LBB0_71
; %bb.1:                                ; %.lr.ph5
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v2, 0x80, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s0, s16, 2
	v_bfe_i32 v10, v0, 0, 1
	v_and_b32_e32 v11, 0x78, v9
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v5, 15, v0
	v_lshrrev_b32_e32 v1, 3, v2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v6, 1, v3
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_bfe_i32 v7, v0, 7, 1
	v_and_b32_e32 v12, 14, v0
	v_and_b32_e32 v10, 0x840, v10
	v_lshl_or_b32 v3, v3, 3, v11
	v_and_b32_e32 v11, 1, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v38, v1, v5
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s1, s12, 31
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v8, 7, v0
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s1, s12, s1
	v_lshlrev_b32_e32 v14, 11, v12
	s_ashr_i32 s1, s1, 1
	v_xor_b32_e32 v3, v3, v10
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s1, s1, 63
	v_lshlrev_b32_e32 v0, 4, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s13, s1, 31
	v_lshlrev_b32_e32 v10, 6, v11
	s_lshr_b32 s13, s13, 26
	v_and_b32_e32 v7, 0x840, v7
	s_add_i32 s1, s1, s13
	v_or3_b32 v57, v3, v14, v2
	s_ashr_i32 s17, s1, 6
	s_cmp_gt_i32 s12, 1
	s_mov_b32 s12, s4
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s40, s0
	s_mov_b32 s4, s6
	s_cvt_f32_u32 s6, s40
	v_and_b32_e32 v0, 0x700, v0
	v_lshlrev_b32_e32 v2, 2, v12
	v_xor_b32_e32 v3, v7, v10
	v_rcp_iflag_f32_e32 v21, s6
.Ltmp12:
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_or_b32 v39, v4, 1, v6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshl_or_b32 v4, s3, 4, v4
	v_add_nc_u32_e32 v56, 0, v9
	v_or3_b32 v58, v0, v2, v3
	v_xor_b32_e32 v2, 40, v57
	v_add_nc_u32_e32 v13, 0, v5
	v_xor_b32_e32 v7, 8, v57
	v_xor_b32_e32 v10, 16, v57
	v_xor_b32_e32 v11, 24, v57
	v_readfirstlane_b32 s6, v21
	v_mad_u64_u32 v[32:33], null, s21, v8, v[1:2]
	v_mul_lo_u32 v1, s21, v4
	v_mul_lo_u32 v4, s20, v4
	s_delay_alu instid0(VALU_DEP_4)
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v0, 32, v57
	v_xor_b32_e32 v3, 48, v57
	v_xor_b32_e32 v12, 56, v57
	v_xor_b32_e32 v14, 0x1008, v58
	v_xor_b32_e32 v15, 0x2010, v58
	v_xor_b32_e32 v16, 0x3018, v58
	v_xor_b32_e32 v17, 0x4020, v58
	v_xor_b32_e32 v18, 0x5028, v58
	v_xor_b32_e32 v19, 0x6030, v58
	v_xor_b32_e32 v20, 0x7038, v58
	s_cvt_u32_f32 s6, s6
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s40
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v40, 32, v38
	s_mul_i32 s7, s7, s6
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v41, 2, v39
	v_or_b32_e32 v42, 4, v39
	v_or_b32_e32 v43, 6, v39
	v_or_b32_e32 v44, 8, v39
	v_or_b32_e32 v45, 10, v39
	v_or_b32_e32 v46, 12, v39
	v_or_b32_e32 v47, 14, v39
	v_or_b32_e32 v48, 64, v39
	v_or_b32_e32 v49, 0x42, v39
	v_or_b32_e32 v50, 0x44, v39
	v_or_b32_e32 v51, 0x46, v39
	v_or_b32_e32 v52, 0x48, v39
	v_or_b32_e32 v53, 0x4a, v39
	v_or_b32_e32 v54, 0x4c, v39
	v_or_b32_e32 v55, 0x4e, v39
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_lshl_add_u32 v59, v5, 3, v1
	v_lshl_add_u32 v60, v5, 2, v4
	v_add_nc_u32_e32 v61, 0, v38
	v_add_nc_u32_e32 v62, v56, v9
	v_add_nc_u32_e32 v63, v13, v6
	v_add_nc_u32_e32 v64, 0, v7
	v_add_nc_u32_e32 v65, 0, v10
	v_add_nc_u32_e32 v66, 0, v11
	v_add_nc_u32_e32 v67, 0, v0
	v_add_nc_u32_e32 v68, 0, v2
	v_add_nc_u32_e32 v69, 0, v3
	v_add_nc_u32_e32 v70, 0, v12
	v_add_nc_u32_e32 v71, 0, v14
	v_add_nc_u32_e32 v72, 0, v15
	v_add_nc_u32_e32 v73, 0, v16
	v_add_nc_u32_e32 v74, 0, v17
	v_add_nc_u32_e32 v75, 0, v18
	v_add_nc_u32_e32 v76, 0, v19
	v_add_nc_u32_e32 v77, 0, v20
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mul_hi_u32 s7, s6, s7
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
	s_mul_i32 s38, s21, 24
	s_mul_i32 s39, s21, 26
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
	s_mul_i32 s3, s21, 62
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s58, s17, 1
	s_bfe_i32 s59, s16, 0x1001d
	s_add_i32 s60, s6, s7
	s_lshl_b32 s61, s21, 6
	s_lshl_b32 s20, s20, 6
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
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
	s_ashr_i32 s62, s2, 31
	s_mul_hi_u32 s7, s6, s60
	s_xor_b32 s62, s62, s59
	s_mul_i32 s63, s7, s40
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_sub_i32 s6, s6, s63
	s_add_i32 s63, s7, 1
	s_sub_i32 s64, s6, s40
	s_cmp_ge_u32 s6, s40
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_cselect_b32 s7, s63, s7
	s_cselect_b32 s6, s64, s6
	s_add_i32 s63, s7, 1
	s_cmp_ge_u32 s6, s40
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s6, s63, s7
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_xor_b32 s6, s6, s62
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	s_sub_i32 s6, s6, s62
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s62, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s24, s62
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s66, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s64, s7, 4
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s64
	v_mov_b32_e32 v14, 0
	s_cvt_f32_u32 s63, s7
	s_sub_i32 s65, 0, s7
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v15, s63
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s63, v15
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	s_mul_f32 s63, s63, 0x4f7ffffe
	s_cvt_u32_f32 s63, s63
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s65, s65, s63
	s_mul_hi_u32 s6, s63, s65
	s_abs_i32 s65, s66
	s_add_i32 s63, s63, s6
	s_xor_b32 s6, s66, s64
	s_mul_hi_u32 s63, s65, s63
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s67, s63, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s65, s65, s67
	s_add_i32 s67, s63, 1
	s_sub_i32 s68, s65, s7
	s_cmp_ge_u32 s65, s7
	s_cselect_b32 s63, s67, s63
	s_cselect_b32 s65, s68, s65
	s_add_i32 s67, s63, 1
	s_cmp_ge_u32 s65, s7
	s_cselect_b32 s7, s67, s63
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_not1_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s63, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s64, s63, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s64, s66, s64
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s64, s64, s62
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s62, s64, 6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_add_u32 v1, s7, 7, v59
	v_dual_mov_b32 v0, 0 :: v_dual_add_nc_u32 v33, s62, v60
	s_lshl_b32 s6, s6, 7
	s_mov_b32 s64, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v34, s6, v1
	v_mov_b32_e32 v1, v0
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
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	buffer_load_b32 v37, v33, s[12:15], 0 offen
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v33, s20, v33
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b64 v[35:36], v34, s[4:7], 0 offen
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v34, s61, v34
	s_add_i32 s64, s64, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s64, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v56, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v37, v61 offset:448
	ds_load_u8 v78, v61 offset:384
	ds_load_u8 v79, v61 offset:320
	ds_load_u8 v80, v61 offset:256
	ds_load_u8 v81, v61 offset:480
	ds_load_u8 v82, v61 offset:416
	ds_load_u8 v83, v61 offset:352
	ds_load_u8 v84, v61 offset:288
	ds_load_u8 v85, v61 offset:192
	ds_load_u8 v86, v61 offset:128
	ds_load_u8 v87, v61 offset:64
	ds_load_u8 v88, v61 offset:224
	ds_load_u8 v89, v61 offset:160
	ds_load_u8 v90, v61 offset:96
	ds_load_u8 v91, v61
	ds_load_u8 v92, v61 offset:32
	ds_load_u8 v93, v61 offset:704
	ds_load_u8 v94, v61 offset:640
	ds_load_u8 v95, v61 offset:576
	ds_load_u8 v96, v61 offset:512
	ds_load_u8 v97, v61 offset:736
	ds_load_u8 v98, v61 offset:672
	ds_load_u8 v99, v61 offset:608
	ds_load_u8 v100, v61 offset:544
	ds_load_u8 v101, v61 offset:960
	ds_load_u8 v102, v61 offset:896
	ds_load_u8 v103, v61 offset:832
	ds_load_u8 v104, v61 offset:768
	ds_load_u8 v105, v61 offset:992
	ds_load_u8 v106, v61 offset:928
	ds_load_u8 v107, v61 offset:864
	ds_load_u8 v108, v61 offset:800
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v62, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v35, v63 offset:640
	ds_load_u8 v36, v63 offset:512
	ds_load_u8 v109, v63 offset:896
	ds_load_u8 v110, v63 offset:768
	ds_load_u8 v111, v63 offset:960
	ds_load_u8 v112, v63 offset:832
	ds_load_u8 v113, v63 offset:704
	ds_load_u8 v114, v63 offset:576
	ds_load_u8 v115, v63 offset:128
	ds_load_u8 v116, v63
	ds_load_u8 v117, v63 offset:384
	ds_load_u8 v118, v63 offset:256
	ds_load_u8 v119, v63 offset:448
	ds_load_u8 v120, v63 offset:320
	ds_load_u8 v121, v63 offset:192
	ds_load_u8 v122, v63 offset:64
	ds_load_u8 v123, v63 offset:1664
	ds_load_u8 v124, v63 offset:1536
	ds_load_u8 v125, v63 offset:1920
	ds_load_u8 v126, v63 offset:1792
	ds_load_u8 v127, v63 offset:1984
	ds_load_u8 v128, v63 offset:1856
	ds_load_u8 v129, v63 offset:1728
	ds_load_u8 v130, v63 offset:1600
	ds_load_u8 v131, v63 offset:1152
	ds_load_u8 v132, v63 offset:1024
	ds_load_u8 v133, v63 offset:1408
	ds_load_u8 v134, v63 offset:1280
	ds_load_u8 v135, v63 offset:1472
	ds_load_u8 v136, v63 offset:1344
	ds_load_u8 v137, v63 offset:1216
	ds_load_u8 v138, v63 offset:1088
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v37, v78, v37, 0xc0c0004
	v_perm_b32 v78, v91, v87, 0xc0c0004
	v_perm_b32 v80, v86, v85, 0xc0c0004
	v_perm_b32 v87, v96, v95, 0xc0c0004
	v_perm_b32 v91, v94, v93, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v86, v102, v101, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_perm_b32 v85, v104, v103, 0xc0c0004
	v_perm_b32 v82, v92, v90, 0xc0c0004
	v_perm_b32 v84, v89, v88, 0xc0c0004
	v_perm_b32 v89, v106, v105, 0xc0c0004
	v_perm_b32 v88, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v93, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v94, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v95, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v96, v118, v117, 0xc0c0004
	v_perm_b32 v101, v114, v113, 0xc0c0004
	v_perm_b32 v102, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v122, v121, 0xc0c0004
	v_perm_b32 v104, v120, v119, 0xc0c0004
	v_perm_b32 v90, v100, v99, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v97, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v134, v133, 0xc0c0004
	v_perm_b32 v105, v130, v129, 0xc0c0004
	v_perm_b32 v106, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v138, v137, 0xc0c0004
	v_perm_b32 v108, v136, v135, 0xc0c0004
	v_lshl_or_b32 v36, v37, 16, v79
	v_lshl_or_b32 v35, v80, 16, v78
	v_lshl_or_b32 v79, v86, 16, v85
	v_lshl_or_b32 v81, v81, 16, v83
	v_lshl_or_b32 v80, v84, 16, v82
	v_lshl_or_b32 v83, v89, 16, v88
	v_lshl_or_b32 v85, v94, 16, v93
	v_lshl_or_b32 v84, v96, 16, v95
	v_lshl_or_b32 v89, v102, 16, v101
	v_lshl_or_b32 v88, v104, 16, v103
	v_lshl_or_b32 v78, v91, 16, v87
	v_lshl_or_b32 v82, v92, 16, v90
	v_lshl_or_b32 v87, v98, 16, v97
	v_lshl_or_b32 v86, v100, 16, v99
	v_lshl_or_b32 v91, v106, 16, v105
	v_lshl_or_b32 v90, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[0:7], v[84:85], v[35:36], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[88:89], v[35:36], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[84:85], v[80:81], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[88:89], v[80:81], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[86:87], v[78:79], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[90:91], v[78:79], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[86:87], v[82:83], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[90:91], v[82:83], v[24:31] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v91, v0
	v_cvt_f32_i32_e32 v90, v1
	v_cvt_f32_i32_e32 v89, v2
	v_cvt_f32_i32_e32 v88, v3
	v_cvt_f32_i32_e32 v87, v4
	v_cvt_f32_i32_e32 v86, v5
	v_cvt_f32_i32_e32 v85, v6
	v_cvt_f32_i32_e32 v84, v7
	v_cvt_f32_i32_e32 v83, v8
	v_cvt_f32_i32_e32 v82, v9
	v_cvt_f32_i32_e32 v81, v10
	v_cvt_f32_i32_e32 v80, v11
	v_cvt_f32_i32_e32 v79, v12
	v_cvt_f32_i32_e32 v78, v13
	v_cvt_f32_i32_e32 v37, v14
	v_cvt_f32_i32_e32 v36, v15
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
	v_or_b32_e32 v16, s62, v38
	v_or_b32_e32 v17, s62, v40
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s63, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s62, s62, s21
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v18, s6, v39
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v19, s6, v41
	v_or_b32_e32 v20, s6, v42
	v_or_b32_e32 v21, s6, v43
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_clause 0x1
	buffer_load_u16 v22, v16, s[16:19], 0 offen
	buffer_load_u16 v23, v17, s[16:19], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v16, s6, v44
	v_or_b32_e32 v24, s6, v46
	v_or_b32_e32 v25, s6, v47
	v_or_b32_e32 v17, s6, v45
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	v_lshlrev_b32_e32 v20, 1, v20
	v_lshlrev_b32_e32 v21, 1, v21
	v_lshlrev_b32_e32 v16, 1, v16
	v_lshlrev_b32_e32 v24, 1, v24
	v_lshlrev_b32_e32 v25, 1, v25
	v_lshlrev_b32_e32 v17, 1, v17
	s_clause 0x7
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v92, v16, s[8:11], 0 offen
	buffer_load_u16 v93, v17, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v26, s6, v48
	v_or_b32_e32 v27, s6, v49
	v_or_b32_e32 v28, s6, v50
	v_or_b32_e32 v29, s6, v51
	v_or_b32_e32 v30, s6, v52
	v_or_b32_e32 v31, s6, v53
	v_or_b32_e32 v33, s6, v54
	v_or_b32_e32 v34, s6, v55
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v21, 16, v21
	v_lshlrev_b32_e32 v16, 1, v26
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	v_lshlrev_b32_e32 v17, 1, v27
	v_lshlrev_b32_e32 v26, 1, v28
	v_lshlrev_b32_e32 v20, 16, v20
	v_lshlrev_b32_e32 v27, 1, v29
	v_lshlrev_b32_e32 v28, 1, v30
	v_lshlrev_b32_e32 v29, 1, v31
	v_lshlrev_b32_e32 v30, 1, v33
	v_lshlrev_b32_e32 v31, 1, v34
	s_clause 0x7
	buffer_load_u16 v94, v16, s[8:11], 0 offen
	buffer_load_u16 v95, v17, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	v_add3_u32 v33, s62, s6, v32
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[16:17], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v16
	v_add_co_ci_u32_e64 v35, null, s23, v17, vcc_lo
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v17, 16, v23
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v23, 16, v93
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v115, v17, v23 :: v_dual_lshlrev_b32 v16, 16, v22
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v28, 16, v28
	v_lshlrev_b32_e32 v93, 16, v95
	v_lshlrev_b32_e32 v22, 16, v92
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v107, v16, v28 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v95, v16, v19 :: v_dual_lshlrev_b32 v92, 16, v94
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v94, v16, v18 :: v_dual_lshlrev_b32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v111, v17, v18 :: v_dual_mul_f32 v108, v16, v29
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v18, v95, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v123, v17, v31 :: v_dual_lshlrev_b32 v26, 16, v26
	v_mul_f32_e32 v121, v17, v29
	v_dual_mul_f32 v103, v16, v92 :: v_dual_add_nc_u32 v96, 0, v57
	v_mul_f32_e32 v105, v16, v26
	v_mul_f32_e32 v118, v17, v26
	v_mul_f32_e32 v117, v17, v25
	v_dual_mul_f32 v97, v16, v20 :: v_dual_lshlrev_b32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v81, v105, v81
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v102, v16, v25 :: v_dual_lshlrev_b32 v27, 16, v27
	v_mul_f32_e32 v112, v17, v20
	v_mul_f32_e32 v92, v17, v92
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v20, v97, v89
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v110, v16, v31
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v83, v103, v83 :: v_dual_mul_f32 v120, v17, v28
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v104, v16, v93
	v_mul_f32_e32 v93, v17, v93
	v_mul_f32_e32 v114, v17, v22
	v_mul_f32_e32 v19, v17, v19
	v_mul_f32_e32 v100, v16, v23
	v_mul_f32_e32 v122, v17, v30
	v_mul_f32_e32 v119, v17, v27
	v_mul_f32_e32 v101, v16, v24
	v_mul_f32_e32 v116, v17, v24
	v_mul_f32_e32 v98, v16, v21
	v_mul_f32_e32 v113, v17, v21
	v_mul_f32_e32 v99, v16, v22
	v_mul_f32_e32 v106, v16, v27
	v_dual_mul_f32 v109, v16, v30 :: v_dual_mul_f32 v16, v94, v91
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v30, v102, v84
	v_dual_mul_f32 v36, v110, v36 :: v_dual_mul_f32 v17, v111, v15
	v_dual_mul_f32 v19, v19, v14 :: v_dual_mul_f32 v84, v92, v7
	v_mul_f32_e32 v22, v98, v88
	v_dual_mul_f32 v26, v100, v86 :: v_dual_mul_f32 v79, v107, v79
	v_dual_mul_f32 v28, v101, v85 :: v_dual_mul_f32 v89, v108, v78
	v_mul_f32_e32 v85, v104, v82
	v_dual_mul_f32 v21, v112, v13 :: v_dual_mul_f32 v86, v93, v6
	v_dual_mul_f32 v23, v113, v12 :: v_dual_mul_f32 v82, v118, v5
	v_dual_mul_f32 v24, v99, v87 :: v_dual_mul_f32 v87, v106, v80
	v_dual_mul_f32 v25, v114, v11 :: v_dual_mul_f32 v88, v119, v4
	v_mul_f32_e32 v91, v109, v37
	v_dual_mul_f32 v27, v115, v10 :: v_dual_mul_f32 v80, v120, v3
	v_dual_mul_f32 v37, v123, v0 :: v_dual_add_nc_u32 v0, 0, v58
	v_dual_mul_f32 v29, v116, v9 :: v_dual_mul_f32 v90, v121, v2
	v_dual_mul_f32 v31, v117, v8 :: v_dual_mul_f32 v92, v122, v1
	ds_store_2addr_stride64_b64 v96, v[16:17], v[83:84] offset1:2
	ds_store_2addr_stride64_b64 v64, v[18:19], v[85:86] offset1:2
	ds_store_2addr_stride64_b64 v65, v[20:21], v[81:82] offset1:2
	ds_store_2addr_stride64_b64 v66, v[22:23], v[87:88] offset1:2
	ds_store_2addr_stride64_b64 v67, v[24:25], v[79:80] offset1:2
	ds_store_2addr_stride64_b64 v68, v[26:27], v[89:90] offset1:2
	ds_store_2addr_stride64_b64 v69, v[28:29], v[91:92] offset1:2
	ds_store_2addr_stride64_b64 v70, v[30:31], v[36:37] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	global_load_b32 v37, v[34:35], off
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	ds_load_2addr_b64 v[28:31], v0 offset1:16
	ds_load_2addr_b64 v[24:27], v71 offset1:16
	ds_load_2addr_b64 v[20:23], v72 offset1:16
	ds_load_2addr_b64 v[16:19], v73 offset1:16
	ds_load_2addr_b64 v[12:15], v74 offset1:16
	ds_load_2addr_b64 v[8:11], v75 offset1:16
	ds_load_2addr_b64 v[4:7], v76 offset1:16
	ds_load_2addr_b64 v[0:3], v77 offset1:16
.LBB0_7:                                ; %atomicrmw.start182
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v36, v37, v28
	global_atomic_cmpswap_b32 v36, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v36, v37
	v_mov_b32_e32 v37, v36
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end181
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s26, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_9:                                ; %atomicrmw.start176
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v36, v37, v24
	global_atomic_cmpswap_b32 v28, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v37
	v_mov_b32_e32 v37, v28
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end175
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s27, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_11:                               ; %atomicrmw.start170
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v36, v37, v20
	global_atomic_cmpswap_b32 v24, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v37
	v_mov_b32_e32 v37, v24
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end169
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s28, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_13:                               ; %atomicrmw.start164
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v36, v37, v16
	global_atomic_cmpswap_b32 v20, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v37
	v_mov_b32_e32 v37, v20
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end163
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s29, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_15:                               ; %atomicrmw.start158
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v36, v37, v12
	global_atomic_cmpswap_b32 v16, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v37
	v_mov_b32_e32 v37, v16
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end157
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s30, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_17:                               ; %atomicrmw.start152
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v36, v37, v8
	global_atomic_cmpswap_b32 v12, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v37
	v_mov_b32_e32 v37, v12
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end151
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s31, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_19:                               ; %atomicrmw.start146
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v36, v37, v4
	global_atomic_cmpswap_b32 v8, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v37
	v_mov_b32_e32 v37, v8
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end145
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s33, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_21:                               ; %atomicrmw.start140
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v36, v37, v0
	global_atomic_cmpswap_b32 v4, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v37
	v_mov_b32_e32 v37, v4
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end139
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s34, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_23:                               ; %atomicrmw.start134
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v30
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end133
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s35, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_25:                               ; %atomicrmw.start128
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v26
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end127
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s36, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_27:                               ; %atomicrmw.start122
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v22
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end121
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s37, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_29:                               ; %atomicrmw.start116
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v18
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end115
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s38, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_31:                               ; %atomicrmw.start110
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v14
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end109
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s39, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_33:                               ; %atomicrmw.start104
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v10
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end103
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s41, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_35:                               ; %atomicrmw.start98
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v6
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end97
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s42, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_37:                               ; %atomicrmw.start92
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v2
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end91
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v34, s43, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_39:                               ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v29
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v28, s44, v33
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v29, 31, v28
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v28, vcc_lo, s22, v28
	v_add_co_ci_u32_e64 v29, null, s23, v29, vcc_lo
	global_load_b32 v35, v[28:29], off
.LBB0_41:                               ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v24, s45, v33
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
	v_add_nc_u32_e32 v20, s46, v33
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
	v_add_nc_u32_e32 v16, s47, v33
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
	v_add_nc_u32_e32 v12, s48, v33
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
	v_add_nc_u32_e32 v8, s49, v33
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
	v_add_nc_u32_e32 v4, s50, v33
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
	v_add_nc_u32_e32 v0, s51, v33
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
	v_add_nc_u32_e32 v0, s52, v33
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
	v_add_nc_u32_e32 v0, s53, v33
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
	v_add_nc_u32_e32 v0, s54, v33
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
	v_add_nc_u32_e32 v0, s55, v33
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
	v_add_nc_u32_e32 v0, s56, v33
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
	v_add_nc_u32_e32 v0, s57, v33
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
	v_add_nc_u32_e32 v0, s3, v33
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
	s_cmp_lt_i32 s2, s25
	s_cbranch_scc1 .LBB0_2
.LBB0_71:                               ; %._crit_edge6
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 69
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
		.amdhsa_inst_pref_size 54
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_vgpr, 139
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6840
; TotalNumSgprs: 71
; NumVgprs: 139
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 71
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn128_bk32_gm4_w8_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     139
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
