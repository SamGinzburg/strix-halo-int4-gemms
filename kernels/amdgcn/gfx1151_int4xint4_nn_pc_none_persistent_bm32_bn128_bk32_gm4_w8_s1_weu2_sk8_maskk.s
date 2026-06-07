	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk
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
	s_add_i32 s4, s20, 31
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
	s_lshr_b32 s6, s6, 27
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
	s_ashr_i32 s20, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s16, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s24, s16, s20
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s24
	s_cbranch_scc1 .LBB0_39
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 228 27 is_stmt 1              ; generate_amdgcn.py:228:27
	s_lshl_b32 s1, s3, 4
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v2, 7, v0
	v_lshlrev_b32_e32 v7, 1, v0
	v_bfe_i32 v8, v0, 6, 1
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s0, s16, 2
	v_bfe_i32 v9, v0, 3, 1
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v16, 1, v2
	v_lshlrev_b32_e32 v2, 4, v2
	v_and_b32_e32 v7, 0x17e, v7
	v_and_b32_e32 v8, 0x88, v8
	v_lshlrev_b32_e32 v10, 2, v0
	v_bfe_i32 v11, v0, 0, 1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_bfe_i32 v5, v0, 7, 1
	v_and_or_b32 v2, 0x88, v9, v2
	v_xor_b32_e32 v7, v8, v7
	v_and_b32_e32 v8, 0x3f8, v10
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s3, s13, 31
	v_and_b32_e32 v9, 0x440, v11
	s_add_i32 s3, s13, s3
	v_and_b32_e32 v11, 1, v0
	s_ashr_i32 s3, s3, 1
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshrrev_b32_e32 v3, 4, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s14, s3, 0x7f
.Ltmp12:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 0x70, v1
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s12, s14, 31
.Ltmp14:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v24, 3, v0
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_lshr_b32 s15, s12, 25
	s_mov_b32 s12, s4
	s_add_i32 s14, s14, s15
	s_mov_b32 s4, s6
	s_ashr_i32 s17, s14, 7
	s_cmp_gt_i32 s13, 1
.Ltmp16:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v25, 15, v0
	s_cselect_b32 s25, -1, 0
	s_abs_i32 s26, s0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	s_cvt_f32_u32 s6, s26
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v6, 7, v0
	v_lshlrev_b32_e32 v12, 3, v0
	v_and_b32_e32 v0, 14, v0
	v_rcp_iflag_f32_e32 v17, s6
	v_xor_b32_e32 v8, v9, v8
	v_lshlrev_b32_e32 v9, 6, v11
	v_and_b32_e32 v5, 0x440, v5
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_or_b32 v26, v3, 1, v4
	v_sub_nc_u32_e32 v36, s3, v3
	v_lshl_or_b32 v37, v0, 10, v8
	v_and_b32_e32 v8, 0x380, v12
	v_lshlrev_b32_e32 v0, 2, v0
	v_xor_b32_e32 v5, v5, v9
	v_readfirstlane_b32 s6, v17
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v3, s1, v3
	v_xor_b32_e32 v10, 8, v2
	v_add_nc_u32_e32 v4, 0, v4
	v_or3_b32 v38, v8, v0, v5
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_mul_lo_u32 v3, s21, v3
	v_xor_b32_e32 v9, 8, v37
	v_xor_b32_e32 v11, 16, v37
	v_xor_b32_e32 v13, 24, v37
	v_xor_b32_e32 v0, 32, v37
	v_xor_b32_e32 v5, 40, v37
	v_xor_b32_e32 v8, 48, v37
	v_xor_b32_e32 v14, 56, v37
	v_xor_b32_e32 v15, 0x808, v38
	v_xor_b32_e32 v19, 0x1010, v38
	v_xor_b32_e32 v20, 0x1818, v38
	v_xor_b32_e32 v21, 0x2020, v38
	v_xor_b32_e32 v22, 0x2828, v38
	v_xor_b32_e32 v23, 0x3030, v38
	v_xor_b32_e32 v58, 0x3838, v38
	s_cvt_u32_f32 s6, s6
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s26
	v_mad_u64_u32 v[17:18], null, s21, v6, v[1:2]
	s_mul_i32 s7, s7, s6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v27, 16, v25
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v28, 2, v26
	v_or_b32_e32 v29, 4, v26
	v_or_b32_e32 v30, 6, v26
	v_or_b32_e32 v31, 8, v26
	v_or_b32_e32 v32, 10, v26
	v_or_b32_e32 v33, 12, v26
	v_or_b32_e32 v34, 14, v26
	v_sub_nc_u32_e32 v35, s3, v16
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_lshl_add_u32 v39, v25, 3, v3
	v_add_nc_u32_e32 v40, 0, v7
	v_add_nc_u32_e32 v41, 0, v2
	v_add_nc_u32_e32 v42, 0, v10
	v_add_nc_u32_e32 v43, 0, v12
	v_add_nc_u32_e32 v44, v4, v25
	v_add_nc_u32_e32 v45, 0, v9
	v_add_nc_u32_e32 v46, 0, v11
	v_add_nc_u32_e32 v47, 0, v13
	v_add_nc_u32_e32 v48, 0, v0
	v_add_nc_u32_e32 v49, 0, v5
	v_add_nc_u32_e32 v50, 0, v8
	v_add_nc_u32_e32 v51, 0, v14
	v_add_nc_u32_e32 v52, 0, v15
	v_add_nc_u32_e32 v53, 0, v19
	v_add_nc_u32_e32 v54, 0, v20
	v_add_nc_u32_e32 v55, 0, v21
	v_add_nc_u32_e32 v56, 0, v22
	v_add_nc_u32_e32 v57, 0, v23
	v_add_nc_u32_e32 v58, 0, v58
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mul_hi_u32 s7, s6, s7
	s_lshl_b32 s27, s21, 1
	s_lshl_b32 s28, s21, 2
	s_mul_i32 s29, s21, 6
	s_lshl_b32 s30, s21, 3
	s_mul_i32 s31, s21, 10
	s_mul_i32 s33, s21, 12
	s_mul_i32 s34, s21, 14
	s_lshl_b32 s35, s21, 4
	s_mul_i32 s36, s21, 18
	s_mul_i32 s37, s21, 20
	s_mul_i32 s38, s21, 22
	s_mul_i32 s39, s21, 24
	s_mul_i32 s40, s21, 26
	s_mul_i32 s41, s21, 28
	s_mul_i32 s42, s21, 30
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s43, s17, 1
	s_bfe_i32 s44, s16, 0x1001d
	s_add_i32 s45, s6, s7
	s_lshl_b32 s46, s21, 7
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
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s47, s2, 31
	s_mul_hi_u32 s7, s6, s45
	s_xor_b32 s47, s47, s44
	s_mul_i32 s48, s7, s26
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_sub_i32 s6, s6, s48
	s_add_i32 s48, s7, 1
	s_sub_i32 s49, s6, s26
	s_cmp_ge_u32 s6, s26
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s7, s48, s7
	s_cselect_b32 s6, s49, s6
	s_add_i32 s48, s7, 1
	s_cmp_ge_u32 s6, s26
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_cselect_b32 s6, s48, s7
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v19, 0
	s_xor_b32 s6, s6, s47
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	s_sub_i32 s6, s6, s47
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v59, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s47, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s20, s47
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s51, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s49, s7, 4
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s49
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_cvt_f32_u32 s48, s7
	s_sub_i32 s50, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s48
	v_readfirstlane_b32 s48, v0
	s_mul_f32 s48, s48, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s48, s48
	s_mul_i32 s50, s50, s48
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s48, s50
	s_abs_i32 s50, s51
	s_add_i32 s48, s48, s6
	s_xor_b32 s6, s51, s49
	s_mul_hi_u32 s48, s50, s48
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s52, s48, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s50, s50, s52
	s_add_i32 s52, s48, 1
	s_sub_i32 s53, s50, s7
	s_cmp_ge_u32 s50, s7
	s_cselect_b32 s48, s52, s48
	s_cselect_b32 s50, s53, s50
	s_add_i32 s52, s48, 1
	s_cmp_ge_u32 s50, s7
	s_cselect_b32 s7, s52, s48
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_not1_b32 vcc_lo, exec_lo, s25
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s48, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s49, s48, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s49, s51, s49
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s49, s49, s47
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s47, s49, 5
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_add_u32 v1, s7, 7, v39
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s47, v24
	s_lshl_b32 s6, s6, 7
	s_mov_b32 s49, s1
	v_subrev_nc_u32_e32 v20, s6, v1
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[18:19], null, s3, v2, v[16:17]
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
	s_mov_b32 s50, s43
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 230 27                        ; generate_amdgcn.py:230:27
	v_cmp_lt_i32_e32 vcc_lo, s49, v36
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v19, s49, v18
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s50, s50, -1
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	v_cndmask_b32_e32 v21, 0x80000000, v20, vcc_lo
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s49, v35
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v20, s46, v20
	s_addk_i32 s49, 0x80
	s_cmp_lg_u32 s50, 0
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b64 v[21:22], v21, s[4:7], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b16 v40, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[59:62], v41 offset1:32
	ds_load_2addr_b64 v[63:66], v42 offset1:32
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v43, v[21:22]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v19, v44 offset:640
	ds_load_u8 v21, v44 offset:896
	ds_load_u8 v22, v44 offset:768
	ds_load_u8 v23, v44 offset:512
	ds_load_u8 v67, v44 offset:128
	ds_load_u8 v68, v44 offset:384
	ds_load_u8 v69, v44 offset:256
	ds_load_u8 v70, v44
	ds_load_u8 v71, v44 offset:1664
	ds_load_u8 v72, v44 offset:1920
	ds_load_u8 v73, v44 offset:1792
	ds_load_u8 v74, v44 offset:1536
	ds_load_u8 v75, v44 offset:1152
	ds_load_u8 v76, v44 offset:1280
	ds_load_u8 v77, v44 offset:1024
	ds_load_u8 v78, v44 offset:1408
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v19, v23, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v23, v70, v67, 0xc0c0004
	v_perm_b32 v67, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v22, v21, 16, v19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v69, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v74, v71, 0xc0c0004
	v_lshl_or_b32 v21, v67, 16, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v77, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v76, v78, 0xc0c0004
	v_lshl_or_b32 v68, v69, 16, v68
	v_wmma_i32_16x16x16_iu4 v[0:7], v[21:22], v[59:60], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[21:22], v[61:62], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v71, 16, v70
	v_wmma_i32_16x16x16_iu4 v[0:7], v[67:68], v[63:64], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[67:68], v[65:66], v[8:15] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v63, v0
	v_cvt_f32_i32_e32 v62, v1
	v_cvt_f32_i32_e32 v61, v2
	v_cvt_f32_i32_e32 v60, v3
	v_cvt_f32_i32_e32 v59, v4
	v_cvt_f32_i32_e32 v23, v5
	v_cvt_f32_i32_e32 v22, v6
	v_cvt_f32_i32_e32 v19, v7
	v_cvt_f32_i32_e32 v18, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v7, v10
	v_cvt_f32_i32_e32 v6, v11
	v_cvt_f32_i32_e32 v5, v12
	v_cvt_f32_i32_e32 v4, v13
	v_cvt_f32_i32_e32 v3, v14
	v_cvt_f32_i32_e32 v2, v15
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v0, s47, v25
	v_or_b32_e32 v1, s47, v27
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s48, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s47, s47, s21
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v9, s6, v26
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v0, 1, v0
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v10, s6, v28
	v_or_b32_e32 v11, s6, v29
	v_or_b32_e32 v12, s6, v30
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_clause 0x1
	buffer_load_u16 v13, v0, s[16:19], 0 offen
	buffer_load_u16 v14, v1, s[16:19], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v0, s6, v31
	v_or_b32_e32 v15, s6, v33
	v_or_b32_e32 v1, s6, v32
	v_or_b32_e32 v20, s6, v34
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v0, 1, v0
	v_lshlrev_b32_e32 v15, 1, v15
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshlrev_b32_e32 v20, 1, v20
	s_clause 0x7
	buffer_load_u16 v64, v9, s[8:11], 0 offen
	buffer_load_u16 v65, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v66, v0, s[8:11], 0 offen
	buffer_load_u16 v67, v1, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v68, v20, s[8:11], 0 offen
	v_add3_u32 v0, s47, s6, v17
	.loc	1 244 13 is_stmt 1              ; generate_amdgcn.py:244:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[9:10], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v9
	v_add_co_ci_u32_e64 v21, null, s23, v10, vcc_lo
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v9, 16, v14
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v66
	v_lshlrev_b32_e32 v10, 16, v64
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v64, 16, v67
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v1, 16, v13
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v78, v9, v64 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v71, v1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v73, v1, v15
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v13, 16, v65
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v22, v73, v22 :: v_dual_lshlrev_b32 v65, 16, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v67, v1, v13 :: v_dual_lshlrev_b32 v12, 16, v12
	v_mul_f32_e32 v70, v1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v60, v70, v60 :: v_dual_lshlrev_b32 v11, 16, v11
	v_add_nc_u32_e32 v69, 0, v37
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v15, v9, v15
	v_mul_f32_e32 v76, v9, v12
	v_mul_f32_e32 v68, v1, v11
	v_mul_f32_e32 v75, v9, v11
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v11, v67, v62 :: v_dual_mul_f32 v72, v1, v64
	v_mul_f32_e32 v62, v71, v59
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v74, v9, v13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v64, v72, v23 :: v_dual_mul_f32 v79, v9, v65
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v77, v9, v14
	v_mul_f32_e32 v66, v1, v10
	v_mul_f32_e32 v10, v9, v10
	v_mul_f32_e32 v1, v1, v65
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v13, v68, v61 :: v_dual_mul_f32 v12, v74, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v9, v66, v63 :: v_dual_mul_f32 v2, v79, v2
	v_dual_mul_f32 v10, v10, v18 :: v_dual_mul_f32 v1, v1, v19
	v_dual_mul_f32 v14, v75, v7 :: v_dual_mul_f32 v61, v76, v6
	v_mul_f32_e32 v63, v77, v5
	v_mul_f32_e32 v23, v15, v3
	v_mul_f32_e32 v65, v78, v4
	ds_store_b64 v69, v[9:10]
	ds_store_b64 v45, v[11:12]
	ds_store_b64 v46, v[13:14]
	ds_store_b64 v47, v[60:61]
	ds_store_b64 v48, v[62:63]
	ds_store_b64 v49, v[64:65]
	ds_store_b64 v50, v[22:23]
	ds_store_b64 v51, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 279 13 is_stmt 1              ; generate_amdgcn.py:279:13
	global_load_b32 v23, v[20:21], off
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_add_nc_u32_e32 v1, 0, v38
	ds_load_b64 v[18:19], v1
	ds_load_b64 v[13:14], v52
	ds_load_b64 v[11:12], v53
	ds_load_b64 v[9:10], v54
	ds_load_b64 v[7:8], v55
	ds_load_b64 v[5:6], v56
	ds_load_b64 v[3:4], v57
	ds_load_b64 v[1:2], v58
.LBB0_7:                                ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v22, v23, v18
	global_atomic_cmpswap_b32 v15, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v15, v23
	v_mov_b32_e32 v23, v15
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s27, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_9:                                ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v22, v23, v13
	global_atomic_cmpswap_b32 v15, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v15, v23
	v_mov_b32_e32 v23, v15
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s28, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_11:                               ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v22, v23, v11
	global_atomic_cmpswap_b32 v13, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v13, v23
	v_mov_b32_e32 v23, v13
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s29, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_13:                               ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v22, v23, v9
	global_atomic_cmpswap_b32 v11, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v11, v23
	v_mov_b32_e32 v23, v11
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s30, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_15:                               ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v22, v23, v7
	global_atomic_cmpswap_b32 v9, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v9, v23
	v_mov_b32_e32 v23, v9
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s31, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_17:                               ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v22, v23, v5
	global_atomic_cmpswap_b32 v7, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v7, v23
	v_mov_b32_e32 v23, v7
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s33, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_19:                               ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v22, v23, v3
	global_atomic_cmpswap_b32 v5, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v23
	v_mov_b32_e32 v23, v5
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s34, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_21:                               ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v22, v23, v1
	global_atomic_cmpswap_b32 v3, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v23
	v_mov_b32_e32 v23, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v20, s35, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v21, 31, v20
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v20, vcc_lo, s22, v20
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_23:                               ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v22, v23, v19
	global_atomic_cmpswap_b32 v1, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v23
	v_mov_b32_e32 v23, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v18, s36, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s22, v18
	v_add_co_ci_u32_e64 v19, null, s23, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_25:                               ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v1, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v21
	v_mov_b32_e32 v21, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v13, s37, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, vcc_lo, s22, v13
	v_add_co_ci_u32_e64 v14, null, s23, v14, vcc_lo
	global_load_b32 v19, v[13:14], off
.LBB0_27:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v12
	global_atomic_cmpswap_b32 v1, v[13:14], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v19
	v_mov_b32_e32 v19, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v11, s38, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v11, vcc_lo, s22, v11
	v_add_co_ci_u32_e64 v12, null, s23, v12, vcc_lo
	global_load_b32 v14, v[11:12], off
.LBB0_29:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v10
	global_atomic_cmpswap_b32 v1, v[11:12], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v14
	v_mov_b32_e32 v14, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v9, s39, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v9, vcc_lo, s22, v9
	v_add_co_ci_u32_e64 v10, null, s23, v10, vcc_lo
	global_load_b32 v12, v[9:10], off
.LBB0_31:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v11, v12, v8
	global_atomic_cmpswap_b32 v1, v[9:10], v[11:12], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v12
	v_mov_b32_e32 v12, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v7, s40, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v7, vcc_lo, s22, v7
	v_add_co_ci_u32_e64 v8, null, s23, v8, vcc_lo
	global_load_b32 v10, v[7:8], off
.LBB0_33:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v9, v10, v6
	global_atomic_cmpswap_b32 v1, v[7:8], v[9:10], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v10
	v_mov_b32_e32 v10, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v5, s41, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, vcc_lo, s22, v5
	v_add_co_ci_u32_e64 v6, null, s23, v6, vcc_lo
	global_load_b32 v8, v[5:6], off
.LBB0_35:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v7, v8, v4
	global_atomic_cmpswap_b32 v1, v[5:6], v[7:8], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v8
	v_mov_b32_e32 v8, v1
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s42, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s22, v0
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v4, v[0:1], off
.LBB0_37:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v3, v4, v2
	global_atomic_cmpswap_b32 v3, v[0:1], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s24
	s_cbranch_scc1 .LBB0_2
.LBB0_39:                               ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 54
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
		.amdhsa_inst_pref_size 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.num_vgpr, 80
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3912
; TotalNumSgprs: 56
; NumVgprs: 80
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 56
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w8_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     80
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
