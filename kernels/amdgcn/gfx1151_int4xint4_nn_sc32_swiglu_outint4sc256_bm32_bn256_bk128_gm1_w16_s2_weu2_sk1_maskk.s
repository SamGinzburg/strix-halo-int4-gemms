	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v9, 31, v0
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v11, 15, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v15, 3, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v8, 0x17f, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v10, 0x1e0, v0
	v_and_b32_e32 v45, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v66, 0, v15
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v47, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v46, v47, v11
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s6, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v1, 3, v9
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s5, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s18, s10, s18
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s16
	s_cmp_ge_u32 s18, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s19, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s19
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s20, 31
.Ltmp15:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s18, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s50, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s33, s7
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s48, s35, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s16, s3, 4
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s48, v3, v[1:2]
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v4, s16, v11
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_or_b32_e32 v12, s34, v2
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s16, v3
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s19, s48, s16
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s49, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s7, s20, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s50, v4
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v4
	.loc	1 220 34 is_stmt 1              ; generate_amdgcn.py:220:34
	v_add3_u32 v6, s49, s19, v5
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[4:5], null, v12, s50, v[4:5]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s50, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 16, v7
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s7, 5
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 31
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v5, s35, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s6, s4, s6
	s_and_b32 s19, s5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s19
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v4, v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v6, s[28:31], 0 offen
	buffer_load_b64 v[13:14], v5, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_bfe_i32 v5, v0, 7, 1
	s_mov_b32 s6, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v5, 0x88, v5
	v_xor_b32_e32 v8, v5, v8
	v_lshlrev_b32_e32 v5, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v65, 0, v8
	s_waitcnt vmcnt(2)
	ds_store_b8 v65, v4 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v66, v[6:7], v[13:14] offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v67, v47, v11
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v54, 0x70, v5
	v_and_b32_e32 v4, 8, v0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v49, 0x100, v67
	v_or_b32_e32 v50, 0x200, v67
	v_or_b32_e32 v51, 0x300, v67
	v_or_b32_e32 v52, 0x400, v67
	v_or_b32_e32 v53, 0x500, v67
	v_or_b32_e32 v55, 0x600, v67
	v_or_b32_e32 v56, 0x700, v67
	v_or_b32_e32 v57, 0x800, v67
	v_or_b32_e32 v58, 0x900, v67
	v_or_b32_e32 v59, 0xa00, v67
	v_or_b32_e32 v60, 0xb00, v67
	v_or_b32_e32 v61, 0xc00, v67
	v_or_b32_e32 v62, 0xd00, v67
	v_or_b32_e32 v63, 0xe00, v67
	v_or_b32_e32 v64, 0xf00, v67
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
.LBB0_3:                                ; %Flow294
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v48, v0, 4, 1
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v6, 1, v3
	v_sub_nc_u32_e32 v67, s50, v3
	v_lshl_or_b32 v8, s18, 9, v10
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v2, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, s3, 5, v6
	s_lshl_b32 s6, s17, 9
	v_add_nc_u32_e32 v13, s48, v8
	v_subrev_nc_u32_e32 v70, s6, v8
	s_add_i32 s52, s16, 16
	v_add_nc_u32_e32 v14, 33, v3
	v_add_nc_u32_e32 v3, 32, v3
	v_subrev_nc_u32_e32 v69, s6, v13
	s_lshl_b32 s6, s18, 8
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v54, 0x70, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v8, s35, v3
	v_mad_u64_u32 v[2:3], null, s50, v2, s[16:17]
	s_mov_b32 s16, 0
	v_bfe_i32 v4, v0, 3, 1
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v7, s34, v11
	v_and_or_b32 v4, 0x88, v4, v54
	v_mul_lo_u32 v13, s35, v14
	s_lshl_b32 s17, s17, 8
	v_add3_u32 v75, v2, v11, 16
	v_add_nc_u32_e32 v6, 16, v7
	v_xor_b32_e32 v5, 8, v4
	v_mul_lo_u32 v7, s7, v7
	v_or_b32_e32 v49, 0x100, v46
	v_or_b32_e32 v50, 0x200, v46
	v_mul_lo_u32 v6, s7, v6
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v14, 0, v5
	v_or_b32_e32 v51, 0x300, v46
	v_or_b32_e32 v52, 0x400, v46
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v72, 1, v7
	v_or_b32_e32 v53, 0x500, v46
	v_lshlrev_b32_e32 v71, 1, v6
	v_add3_u32 v6, v13, s6, v1
	v_add3_u32 v1, v8, s6, v1
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v13, 0, v4
	v_or_b32_e32 v55, 0x600, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v73, s17, v6
	v_subrev_nc_u32_e32 v74, s17, v1
	s_mov_b32 s17, s16
	v_dual_mov_b32 v1, s16 :: v_dual_lshlrev_b32 v68, 1, v48
	v_or_b32_e32 v56, 0x700, v46
	v_or_b32_e32 v57, 0x800, v46
	v_or_b32_e32 v58, 0x900, v46
	v_or_b32_e32 v59, 0xa00, v46
	v_or_b32_e32 v60, 0xb00, v46
	v_or_b32_e32 v61, 0xc00, v46
	v_or_b32_e32 v62, 0xd00, v46
	v_or_b32_e32 v63, 0xe00, v46
	v_or_b32_e32 v64, 0xf00, v46
	v_add_nc_u32_e32 v76, s52, v11
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v77, 0, v46
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v78, 0x2000, v13
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v79, 0x2000, v14
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v30, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s0, s1, 1
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s35, 2
	s_lshl_b32 s6, s0, 4
	s_lshl_b32 s51, s35, 5
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v82, v71, s[44:47], 0 offen
	buffer_load_u16 v80, v72, s[44:47], 0 offen
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s0, s52, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v71, 2, v71
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s0, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v72, 2, v72
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v137, 0x80000000, v74 :: v_dual_add_nc_u32 v136, v68, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v69, s3, v69
	v_add_nc_u32_e32 v74, s51, v74
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v81, s16, v76
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v83, s16, v75
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v138, 0x80000000, v73, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v73, s51, v73
	s_add_i32 s16, s16, 16
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s0, s50, v81
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v81, 0x80000000, v83 :: v_dual_add_nc_u32 v90, v68, v70
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v70, s3, v70
	s_cmp_lg_u32 s6, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v81, v81, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v91, v77 offset:1280
	ds_load_u8 v92, v77 offset:1792
	ds_load_u8 v93, v77 offset:1536
	ds_load_u8 v94, v77 offset:1024
	ds_load_u8 v95, v77 offset:256
	ds_load_u8 v96, v77 offset:768
	ds_load_u8 v97, v77 offset:512
	ds_load_u8 v98, v77
	ds_load_u8 v99, v77 offset:3328
	ds_load_u8 v100, v77 offset:3840
	ds_load_u8 v101, v77 offset:3584
	ds_load_u8 v102, v77 offset:3072
	ds_load_u8 v103, v77 offset:2304
	ds_load_u8 v104, v77 offset:2816
	ds_load_u8 v105, v77 offset:2560
	ds_load_u8 v106, v77 offset:2048
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v107, v77 offset:5376
	ds_load_u8 v108, v77 offset:5888
	ds_load_u8 v109, v77 offset:5632
	ds_load_u8 v110, v77 offset:5120
	ds_load_u8 v111, v77 offset:4352
	ds_load_u8 v112, v77 offset:4864
	ds_load_u8 v113, v77 offset:4608
	ds_load_u8 v114, v77 offset:4096
	ds_load_u8 v115, v77 offset:7424
	ds_load_u8 v116, v77 offset:7936
	ds_load_u8 v117, v77 offset:7680
	ds_load_u8 v118, v77 offset:7168
	ds_load_u8 v119, v77 offset:6400
	ds_load_u8 v120, v77 offset:6656
	ds_load_u8 v121, v77 offset:6144
	ds_load_u8 v122, v77 offset:6912
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_b64 v[124:127], v78 offset1:32
	ds_load_2addr_b64 v[128:131], v79 offset1:32
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v94, v94, v91, 0xc0c0004
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v93, v98, v95, 0xc0c0004
	v_perm_b32 v95, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v96, v102, v99, 0xc0c0004
	v_perm_b32 v97, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v98, v106, v103, 0xc0c0004
	v_perm_b32 v99, v105, v104, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v110, v107, 0xc0c0004
	v_perm_b32 v101, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v114, v111, 0xc0c0004
	v_perm_b32 v103, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v105, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v104, v118, v115, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v109, v92, 16, v94
	v_lshl_or_b32 v108, v95, 16, v93
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v106, v121, v119, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v120, v122, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v117, v97, 16, v96
	v_lshl_or_b32 v116, v99, 16, v98
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v133, v101, 16, v100
	v_lshl_or_b32 v132, v103, 16, v102
	v_lshl_or_b32 v135, v105, 16, v104
	v_lshl_or_b32 v134, v107, 16, v106
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[108:109], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[108:109], v[124:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[132:133], v[126:127], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[116:117], v[130:131], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[128:129], v[100:107] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[116:123], v[132:133], v[124:125], v[1:8] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v83, v90, s[40:43], 0 offen
	buffer_load_u16 v84, v90, s[40:43], 0 offen offset:4
	buffer_load_u16 v85, v90, s[40:43], 0 offen offset:8
	buffer_load_u16 v86, v90, s[40:43], 0 offen offset:12
	buffer_load_u16 v87, v90, s[40:43], 0 offen offset:16
	buffer_load_u16 v88, v90, s[40:43], 0 offen offset:20
	buffer_load_u16 v89, v90, s[40:43], 0 offen offset:24
	buffer_load_u16 v90, v90, s[40:43], 0 offen offset:28
	buffer_load_u16 v91, v136, s[40:43], 0 offen offset:28
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[134:135], v[130:131], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[134:135], v[128:129], v[116:123] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v124, v92
	v_cvt_f32_i32_e32 v125, v93
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x6
	buffer_load_u16 v126, v136, s[40:43], 0 offen offset:24
	buffer_load_u16 v127, v136, s[40:43], 0 offen offset:20
	buffer_load_u16 v128, v136, s[40:43], 0 offen offset:16
	buffer_load_u16 v129, v136, s[40:43], 0 offen offset:12
	buffer_load_u16 v130, v136, s[40:43], 0 offen offset:8
	buffer_load_u16 v131, v136, s[40:43], 0 offen offset:4
	buffer_load_u16 v132, v136, s[40:43], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[92:93], v137, s[28:31], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v101, v80, v101
	v_mul_f32_e32 v133, v82, v94
	v_mul_f32_e32 v134, v82, v95
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b64 v[94:95], v138, s[28:31], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v82, v125
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v115, v82, v115 :: v_dual_mul_f32 v100, v80, v100
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v124, v82, v124
	v_mul_f32_e32 v99, v82, v99
	v_mul_f32_e32 v98, v82, v98
	v_mul_f32_e32 v97, v82, v97
	v_mul_f32_e32 v96, v82, v96
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v114, v82, v114
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(18)
	ds_store_b8 v65, v81 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v66, v[92:93], v[94:95] offset1:8
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v83, 16, v83
	v_lshlrev_b32_e32 v84, 16, v84
	v_lshlrev_b32_e32 v85, 16, v85
	v_lshlrev_b32_e32 v86, 16, v86
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v43, v100, v83
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v116, v80, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v105, v80, v105
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v113, v82, v113 :: v_dual_mul_f32 v102, v80, v102
	v_dual_mul_f32 v112, v82, v112 :: v_dual_mul_f32 v103, v80, v103
	v_dual_mul_f32 v111, v82, v111 :: v_dual_mul_f32 v118, v80, v118
	v_dual_mul_f32 v110, v82, v110 :: v_dual_mul_f32 v117, v80, v117
	v_mul_f32_e32 v109, v82, v109
	v_dual_mul_f32 v82, v82, v108 :: v_dual_mul_f32 v107, v80, v107
	v_mul_f32_e32 v108, v80, v119
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v106, v80, v106
	v_dual_mul_f32 v104, v80, v104 :: v_dual_lshlrev_b32 v89, 16, v89
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v119, v80, v123
	v_dual_mul_f32 v122, v80, v122 :: v_dual_lshlrev_b32 v91, 16, v91
	v_dual_mul_f32 v121, v80, v121 :: v_dual_lshlrev_b32 v88, 16, v88
	v_dual_mul_f32 v80, v80, v120 :: v_dual_lshlrev_b32 v123, 16, v127
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v39, v133, v85 :: v_dual_lshlrev_b32 v90, 16, v90
	v_dual_fmac_f32 v25, v102, v85 :: v_dual_lshlrev_b32 v120, 16, v126
	v_dual_fmac_f32 v37, v96, v87 :: v_dual_lshlrev_b32 v126, 16, v128
	v_dual_fmac_f32 v35, v98, v89 :: v_dual_lshlrev_b32 v128, 16, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v13, v107, v90 :: v_dual_lshlrev_b32 v130, 16, v132
	v_dual_fmac_f32 v40, v125, v84 :: v_dual_lshlrev_b32 v127, 16, v129
	v_fmac_f32_e32 v44, v124, v83
	v_dual_fmac_f32 v26, v101, v84 :: v_dual_lshlrev_b32 v129, 16, v131
	v_dual_fmac_f32 v38, v134, v86 :: v_dual_fmac_f32 v15, v105, v88
	v_dual_fmac_f32 v24, v103, v86 :: v_dual_fmac_f32 v23, v117, v129
	v_dual_fmac_f32 v36, v97, v88 :: v_dual_fmac_f32 v41, v116, v130
	v_dual_fmac_f32 v30, v99, v90 :: v_dual_fmac_f32 v21, v108, v127
	v_dual_fmac_f32 v16, v104, v87 :: v_dual_fmac_f32 v19, v122, v120
	v_dual_fmac_f32 v14, v106, v89 :: v_dual_fmac_f32 v17, v80, v126
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v22, v118, v128 :: v_dual_fmac_f32 v31, v112, v126
	v_dual_fmac_f32 v20, v121, v123 :: v_dual_fmac_f32 v33, v110, v128
	v_fmac_f32_e32 v18, v119, v91
	v_dual_fmac_f32 v42, v82, v130 :: v_dual_fmac_f32 v29, v113, v123
	v_dual_fmac_f32 v34, v109, v129 :: v_dual_fmac_f32 v27, v115, v91
	v_fmac_f32_e32 v32, v111, v127
	v_fmac_f32_e32 v28, v114, v120
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v4, v45 :: v_dual_mov_b32 v67, v46
.LBB0_7:                                ; %Flow295
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v11
	s_mul_i32 s0, s34, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s1, 0
	v_add_nc_u32_e32 v92, 0, v49
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v97, 0, v53
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v86, 0, v55
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v1, s0, s1, v1
	s_lshl_b32 s0, s7, 4
	v_add_nc_u32_e32 v98, 0, v52
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v68, 0, 1, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s0, 1
	v_and_b32_e32 v46, 0x1f0, v0
	v_and_b32_e32 v45, 16, v0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v68
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v79, 0, v64
	v_add_nc_u32_e32 v75, 0, v63
	s_clause 0x1
	buffer_load_u16 v65, v2, s[36:39], 0 offen
	buffer_load_u16 v66, v1, s[36:39], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v1, 0x88, 0, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v81, 0, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v1, v1, v54
	v_mov_b32_e32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v82, 0, v61
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v77, 0, v60
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v1, v1, 8, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_add_nc_u32_e32 v78, 0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0x2000, v2
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_add_nc_u32_e32 v1, 0x2000, v1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_b64 v[5:8], v2 offset1:32
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_b64 v[1:4], v1 offset1:32
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v76, 0, v58
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v80, 0, v57
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v95, 0, v56
	v_add_nc_u32_e32 v93, 0, v51
	v_add_nc_u32_e32 v94, 0, v50
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v96, 0, v67
	v_mov_b32_e32 v50, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v67, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v49, v97
	ds_load_u8 v50, v98
	ds_load_u8 v51, v95
	ds_load_u8 v52, v96
	ds_load_u8 v53, v93
	ds_load_u8 v55, v94
	ds_load_u8 v56, v86
	ds_load_u8 v57, v92
	ds_load_u8 v58, v81
	ds_load_u8 v59, v82
	ds_load_u8 v60, v79
	ds_load_u8 v61, v80
	ds_load_u8 v62, v77
	ds_load_u8 v63, v78
	ds_load_u8 v64, v75
	ds_load_u8 v83, v76
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v74, s11 :: v_dual_mov_b32 v73, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v50, v56, v51, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v52, v57, 0xc0c0004
	v_perm_b32 v52, v55, v53, 0xc0c0004
	v_dual_mov_b32 v72, s9 :: v_dual_mov_b32 v71, s8
	v_lshl_or_b32 v50, v50, 16, v49
	v_dual_mov_b32 v70, s7 :: v_dual_mov_b32 v69, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v49, v52, 16, v51
	v_dual_mov_b32 v68, s5 :: v_dual_mov_b32 v67, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v52, v64, v60, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v61, v83, 0xc0c0004
	v_perm_b32 v63, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[55:62], v[49:50], v[5:6], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v52, v52, 16, v51
	v_wmma_i32_16x16x16_iu4 v[67:74], v[49:50], v[7:8], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v63, 16, v53
	v_wmma_i32_16x16x16_iu4 v[55:62], v[51:52], v[1:2], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[67:74], v[51:52], v[3:4], v[67:74] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v53, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v52, v59
	v_cvt_f32_i32_e32 v51, v60
	v_cvt_f32_i32_e32 v50, v61
	v_cvt_f32_i32_e32 v49, v62
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v54, v97 offset:4096
	ds_load_u8 v58, v98 offset:4096
	ds_load_u8 v59, v95 offset:4096
	ds_load_u8 v60, v96 offset:4096
	ds_load_u8 v61, v93 offset:4096
	ds_load_u8 v62, v94 offset:4096
	ds_load_u8 v63, v86 offset:4096
	ds_load_u8 v64, v92 offset:4096
	ds_load_u8 v83, v81 offset:4096
	ds_load_u8 v84, v82 offset:4096
	ds_load_u8 v85, v79 offset:4096
	ds_load_u8 v86, v80 offset:4096
	ds_load_u8 v87, v77 offset:4096
	ds_load_u8 v88, v78 offset:4096
	ds_load_u8 v89, v75 offset:4096
	ds_load_u8 v90, v76 offset:4096
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v54, v58, v54, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v82, s11 :: v_dual_mov_b32 v81, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v58, v63, v59, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v60, v64, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	v_dual_mov_b32 v80, s9 :: v_dual_mov_b32 v79, s8
	v_lshl_or_b32 v59, v58, 16, v54
	v_dual_mov_b32 v78, s7 :: v_dual_mov_b32 v77, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v58, v61, 16, v60
	v_dual_mov_b32 v76, s5 :: v_dual_mov_b32 v75, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v60, v89, v85, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v86, v90, 0xc0c0004
	v_perm_b32 v62, v88, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[83:90], v[58:59], v[5:6], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v60, 16, v54
	v_wmma_i32_16x16x16_iu4 v[75:82], v[58:59], v[7:8], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v62, 16, v61
	v_wmma_i32_16x16x16_iu4 v[83:90], v[5:6], v[1:2], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[5:6], v[3:4], v[75:82] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v61, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v84
	v_cvt_f32_i32_e32 v63, v85
	v_cvt_f32_i32_e32 v64, v86
	v_cvt_f32_i32_e32 v54, v87
	v_cvt_f32_i32_e32 v58, v88
	v_cvt_f32_i32_e32 v59, v89
	v_cvt_f32_i32_e32 v60, v90
	v_cvt_f32_i32_e32 v83, v75
	v_cvt_f32_i32_e32 v84, v76
	v_cvt_f32_i32_e32 v85, v77
	v_cvt_f32_i32_e32 v87, v78
	v_cvt_f32_i32_e32 v88, v79
	v_cvt_f32_i32_e32 v89, v80
	v_cvt_f32_i32_e32 v90, v81
	v_cvt_f32_i32_e32 v91, v82
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v48, v47
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s48
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s49, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v8, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v47, s0, v1, 1
	v_add_lshl_u32 v48, s0, v2, 1
	v_add_lshl_u32 v75, s0, v3, 1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v76, s0, v4, 1
	v_add_lshl_u32 v77, s0, v5, 1
	v_add_lshl_u32 v78, s0, v6, 1
	v_add_lshl_u32 v79, s0, v7, 1
	v_add_lshl_u32 v80, s0, v8, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v47, v47, s[16:19], 0 offen
	buffer_load_u16 v48, v48, s[16:19], 0 offen
	buffer_load_u16 v75, v75, s[16:19], 0 offen
	buffer_load_u16 v76, v76, s[16:19], 0 offen
	buffer_load_u16 v77, v77, s[16:19], 0 offen
	buffer_load_u16 v78, v78, s[16:19], 0 offen
	buffer_load_u16 v79, v79, s[16:19], 0 offen
	buffer_load_u16 v80, v80, s[16:19], 0 offen
	buffer_load_u16 v81, v1, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_add_lshl_u32 v3, s1, v4, 1
	v_add_lshl_u32 v4, s1, v5, 1
	v_add_lshl_u32 v5, s1, v6, 1
	v_add_lshl_u32 v6, s1, v7, 1
	v_add_lshl_u32 v7, s1, v8, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x6
	buffer_load_u16 v8, v1, s[16:19], 0 offen
	buffer_load_u16 v82, v2, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, 0
.Ltmp23:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v1.h, v66.l
	v_mov_b16_e32 v2.h, v65.l
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v66, v68, v1
	v_mul_f32_e32 v68, v70, v1
	v_mul_f32_e32 v70, v72, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v72, v74, v1 :: v_dual_mul_f32 v61, v61, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v74, v84, v1 :: v_dual_mul_f32 v63, v63, v2
	v_mul_f32_e32 v84, v87, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v65, v67, v1 :: v_dual_mul_f32 v56, v56, v2
	v_mul_f32_e32 v53, v53, v2
	v_dual_mul_f32 v67, v69, v1 :: v_dual_mul_f32 v62, v62, v2
	v_dual_mul_f32 v69, v71, v1 :: v_dual_mul_f32 v64, v64, v2
	v_dual_mul_f32 v71, v73, v1 :: v_dual_mul_f32 v52, v52, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v73, v83, v1 :: v_dual_mul_f32 v54, v54, v2
	v_dual_mul_f32 v83, v85, v1 :: v_dual_mul_f32 v58, v58, v2
	v_mul_f32_e32 v85, v88, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v55, v55, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v88, v91, v1
	v_dual_mul_f32 v86, v89, v1 :: v_dual_mul_f32 v59, v59, v2
	v_dual_mul_f32 v87, v90, v1 :: v_dual_mul_f32 v60, v60, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v57, v57, v2
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v65, v65, v47, v44
	v_fma_f32 v47, v53, v47, v43
	v_fma_f32 v66, v66, v48, v40
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v81, 16, v81
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v48, v55, v48, v26
	v_fma_f32 v56, v56, v75, v25
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v47, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v67, v75, v39
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v53, v73, v81, v42
	v_fma_f32 v61, v61, v81, v41
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v48, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v53, s2
	v_cndmask_b32_e64 v41, v41, v61, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v74, v74, v8, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v56, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v84, v84, v3, v32
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v79, 16, v79
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v74, s2
	v_cndmask_b32_e64 v44, v44, v65, s2
	v_cndmask_b32_e64 v32, v32, v84, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v66, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v34
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v8, v62, v8, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v55, v63, v82, v22
	v_fma_f32 v83, v83, v82, v33
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v55, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v83, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v23
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v86, v86, v5, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v22
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v85, v85, v4, v31
	v_fma_f32 v4, v54, v4, v17
	v_fma_f32 v5, v58, v5, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v33
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v3, v64, v3, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v85, s2
	v_cndmask_b32_e64 v17, v17, v4, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v5, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v3, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v81, v87, v6, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v21
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v73, v88, v7, v27
	v_fma_f32 v7, v60, v7, v18
	v_fma_f32 v6, v59, v6, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v4, 0, 0x42800000, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v29, v86, s2
	v_cndmask_b32_e64 v28, v28, v81, s2
	v_cndmask_b32_e64 v27, v27, v73, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v57, v76, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v19, v6, s2
	v_cndmask_b32_e64 v18, v18, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0x42800000, s3
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v41
	v_dual_mul_f32 v8, 0xbfb8aa3b, v31 :: v_dual_lshlrev_b32 v77, 16, v77
	v_dual_mul_f32 v5, 0xbfb8aa3b, v27 :: v_dual_lshlrev_b32 v78, 16, v78
	v_dual_mul_f32 v7, 0xbfb8aa3b, v29 :: v_dual_lshlrev_b32 v80, 16, v80
	v_mul_f32_e32 v6, 0xbfb8aa3b, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v57, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v57, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v19
	v_dual_mul_f32 v60, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v42
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v34
	v_exp_f32_e32 v4, v4
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v8
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v6
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v5
	v_mul_f32_e32 v59, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v55
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v60
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v58
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s1
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cndmask_b32_e64 v47, 0, 0x42800000, s5
	v_cndmask_b32_e64 v8, 0, 0x42800000, s6
	v_cndmask_b32_e64 v7, 0, 0x42800000, s7
	v_cndmask_b32_e64 v6, 0, 0x42800000, s8
	v_cndmask_b32_e64 v5, 0, 0x42800000, s9
	v_cndmask_b32_e64 v56, 0, 0x42800000, s10
	v_cndmask_b32_e64 v55, 0, 0x42800000, s11
	v_cndmask_b32_e64 v54, 0, 0x42800000, s12
	v_cndmask_b32_e64 v60, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v59
	v_cndmask_b32_e64 v58, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v57
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v4, v4, v62
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v32
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v31 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v29
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v59, 0, 0x42800000, s14
	v_cndmask_b32_e64 v57, 0, 0x42800000, s0
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v20
	v_dual_fmac_f32 v60, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v18
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v19
	v_ldexp_f32 v3, v3, v61
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v61, 1.0, v4
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v69, v77, v37
	v_fma_f32 v68, v68, v76, v38
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v5, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v72, v72, v80, v30
	v_fma_f32 v71, v71, v79, v35
	v_fma_f32 v70, v70, v78, v36
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v53, v53, v63
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v63, null, v61, v61, v41
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v67, s2
	v_cndmask_b32_e64 v38, v38, v68, s2
	v_cndmask_b32_e64 v37, v37, v69, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v70, s2
	v_cndmask_b32_e64 v35, v35, v71, s2
	v_cndmask_b32_e64 v30, v30, v72, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s13
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v91, v63
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v48, v48, v64
	v_ldexp_f32 v47, v47, v65
	v_ldexp_f32 v8, v8, v66
	v_ldexp_f32 v7, v7, v67
	v_ldexp_f32 v6, v6, v68
	v_ldexp_f32 v5, v5, v69
	v_ldexp_f32 v56, v56, v70
	v_ldexp_f32 v55, v55, v71
	v_ldexp_f32 v54, v54, v72
	v_ldexp_f32 v60, v60, v73
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_add_f32 v4, 1.0, v5
	v_dual_add_f32 v5, 1.0, v6 :: v_dual_add_f32 v6, 1.0, v7
	v_dual_add_f32 v7, 1.0, v8 :: v_dual_add_f32 v8, 1.0, v47
	v_dual_add_f32 v47, 1.0, v48 :: v_dual_add_f32 v48, 1.0, v53
	v_dual_add_f32 v53, 1.0, v54 :: v_dual_add_f32 v54, 1.0, v55
	v_add_f32_e32 v55, 1.0, v56
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v103, -v63, v91, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v56, 1.0, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v60, null, v3, v3, v42
	v_div_scale_f32 v65, null, v48, v48, v34
	v_div_scale_f32 v67, null, v47, v47, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v60
	v_div_scale_f32 v69, null, v8, v8, v32
	v_rcp_f32_e32 v92, v65
	v_div_scale_f32 v71, null, v7, v7, v31
	v_rcp_f32_e32 v93, v67
	v_div_scale_f32 v73, null, v6, v6, v29
	v_rcp_f32_e32 v94, v69
	v_div_scale_f32 v76, null, v5, v5, v28
	v_rcp_f32_e32 v95, v71
	v_fma_f32 v102, -v60, v90, 1.0
	v_div_scale_f32 v82, null, v4, v4, v27
	v_rcp_f32_e32 v96, v73
	v_rcp_f32_e32 v97, v76
	v_fma_f32 v104, -v65, v92, 1.0
	v_fmac_f32_e32 v90, v102, v90
	v_div_scale_f32 v84, null, v55, v55, v23
	v_div_scale_f32 v62, vcc_lo, v42, v3, v42
	v_rcp_f32_e32 v98, v82
	v_fma_f32 v105, -v67, v93, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v59, v59
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v86, null, v54, v54, v22
	v_fma_f32 v106, -v69, v94, 1.0
	v_div_scale_f32 v64, s1, v41, v61, v41
	v_div_scale_f32 v66, s3, v34, v48, v34
	v_dual_fmac_f32 v91, v103, v91 :: v_dual_fmac_f32 v92, v104, v92
	v_fmac_f32_e32 v93, v105, v93
	v_rcp_f32_e32 v99, v84
	v_fma_f32 v107, -v71, v95, 1.0
	v_div_scale_f32 v68, s4, v33, v47, v33
	v_dual_mul_f32 v102, v62, v90 :: v_dual_mul_f32 v103, v64, v91
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v88, null, v53, v53, v21
	v_rcp_f32_e32 v100, v86
	v_fma_f32 v108, -v73, v96, 1.0
	v_div_scale_f32 v70, s5, v32, v8, v32
	v_dual_fmac_f32 v94, v106, v94 :: v_dual_fmac_f32 v95, v107, v95
	v_fma_f32 v109, -v76, v97, 1.0
	v_dual_mul_f32 v104, v66, v92 :: v_dual_mul_f32 v105, v68, v93
	v_div_scale_f32 v72, s6, v31, v7, v31
	v_fma_f32 v110, -v82, v98, 1.0
	v_fma_f32 v114, -v60, v102, v62
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v59, v59, v74
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, s7, v29, v6, v29
	v_rcp_f32_e32 v101, v88
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_fmac_f32 v97, v109, v97
	v_dual_mul_f32 v106, v70, v94 :: v_dual_mul_f32 v107, v72, v95
	v_div_scale_f32 v81, s8, v28, v5, v28
	v_fma_f32 v115, -v63, v103, v64
	v_fma_f32 v116, -v65, v104, v66
	v_fma_f32 v111, -v84, v99, 1.0
	v_div_scale_f32 v83, s9, v27, v4, v27
	v_fmac_f32_e32 v98, v110, v98
	v_fma_f32 v117, -v67, v105, v68
	v_dual_fmac_f32 v102, v114, v90 :: v_dual_fmac_f32 v103, v115, v91
	v_fma_f32 v112, -v86, v100, 1.0
	v_dual_mul_f32 v108, v74, v96 :: v_dual_mul_f32 v109, v81, v97
	v_fma_f32 v118, -v69, v106, v70
	v_dual_fmac_f32 v104, v116, v92 :: v_dual_fmac_f32 v105, v117, v93
	v_div_scale_f32 v85, s10, v23, v55, v23
	v_fmac_f32_e32 v99, v111, v99
	v_fma_f32 v119, -v71, v107, v72
	v_mul_f32_e32 v110, v83, v98
	v_fma_f32 v60, -v60, v102, v62
	v_div_scale_f32 v87, s11, v22, v54, v22
	v_fma_f32 v113, -v88, v101, 1.0
	v_fmac_f32_e32 v100, v112, v100
	v_fma_f32 v120, -v73, v108, v74
	v_dual_fmac_f32 v106, v118, v94 :: v_dual_fmac_f32 v107, v119, v95
	v_fma_f32 v121, -v76, v109, v81
	v_fma_f32 v62, -v63, v103, v64
	v_fma_f32 v63, -v65, v104, v66
	v_mul_f32_e32 v111, v85, v99
	v_fma_f32 v122, -v82, v110, v83
	v_fma_f32 v64, -v67, v105, v68
	v_div_fmas_f32 v60, v60, v90, v102
	v_div_scale_f32 v89, s12, v21, v53, v21
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v112, v87, v100
	v_dual_fmac_f32 v108, v120, v96 :: v_dual_fmac_f32 v109, v121, v97
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v69, v106, v70
	v_div_fmas_f32 v63, v63, v92, v104
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v123, -v84, v111, v85
	v_fma_f32 v66, -v71, v107, v72
	v_fmac_f32_e32 v110, v122, v98
	v_div_fixup_f32 v42, v60, v3, v42
	v_div_fmas_f32 v3, v64, v93, v105
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v113, v89, v101
	v_fma_f32 v124, -v86, v112, v87
	v_fma_f32 v67, -v73, v108, v74
	v_div_fmas_f32 v60, v65, v94, v106
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v68, -v76, v109, v81
	v_fmac_f32_e32 v111, v123, v99
	v_div_fixup_f32 v34, v63, v48, v34
	v_div_fmas_f32 v48, v66, v95, v107
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v69, -v82, v110, v83
	v_fma_f32 v125, -v88, v113, v89
	v_fmac_f32_e32 v112, v124, v100
	v_div_fixup_f32 v3, v3, v47, v33
	v_div_fmas_f32 v33, v67, v96, v108
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v70, -v84, v111, v85
	v_div_fmas_f32 v47, v68, v97, v109
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v32, v60, v8, v32
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v40, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v34, v69, v98, v110
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v113, v125, v101
	v_fma_f32 v71, -v86, v112, v87
	v_div_fixup_f32 v31, v48, v7, v31
	v_div_fixup_f32 v6, v33, v6, v29
	v_div_fmas_f32 v29, v62, v91, v103
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v5, v47, v5, v28
	v_div_fmas_f32 v28, v70, v99, v111
	s_mov_b32 vcc_lo, s11
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v39, v3
	v_mul_f32_e32 v3, v37, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v31, v71, v100, v112
	v_fma_f32 v72, -v88, v113, v89
	v_div_fixup_f32 v23, v28, v55, v23
	s_mov_b32 vcc_lo, s12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v58, v58
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v22, v31, v54, v22
	v_div_fmas_f32 v33, v72, v101, v113
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v23, v26, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v27, v34, v4, v27
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v22, v25, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, null, v56, v56, v17
	v_div_fixup_f32 v21, v33, v53, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v26, v58, v75
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v36, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v31, v25
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v6, v35, v5 :: v_dual_mul_f32 v5, v30, v27
	v_dual_mul_f32 v21, v24, v21 :: v_dual_add_f32 v28, 1.0, v59
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v57
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v29, v29, v61, v41
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v52, v52, v77, v16
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v33, null, v28, v28, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v25, v31, 1.0
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v16, v52, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v35, v33
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v24, v24, v30
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v31, v36, v31
	v_div_scale_f32 v30, null, v26, v26, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v27, v51, v2 :: v_dual_add_f32 v24, 1.0, v24
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v36, vcc_lo, v17, v56, v17
	v_rcp_f32_e32 v37, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v33, v35, 1.0
	v_div_scale_f32 v39, null, v24, v24, v18
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v34, v50, v2
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v27, v78, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26 is_stmt 1              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v35, v40, v35
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v40, s0, v20, v28, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v30, v37, 1.0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v49, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v15, v27, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v51, v40, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v34, v34, v79, v14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v37, v47, v37
	v_div_scale_f32 v47, s1, v19, v26, v19
	v_mul_f32_e32 v48, v36, v31
	v_fma_f32 v49, -v39, v41, 1.0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v80, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v53, v47, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v14, v34, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v50, -v25, v48, v36
	v_fmac_f32_e32 v41, v49, v41
	v_div_scale_f32 v49, s3, v18, v24, v18
	v_fma_f32 v54, -v30, v53, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v50, v31
	v_fma_f32 v50, -v33, v51, v40
	v_mul_f32_e32 v55, v49, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v13, v2, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v53, v54, v37
	v_fma_f32 v25, -v25, v48, v36
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v27, |v6|, |v5|
.Ltmp29:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v36, -v39, v55, v49
	s_mov_b32 s7, 0x76543210
	v_fma_f32 v30, -v30, v53, v47
	v_div_fmas_f32 v25, v25, v31, v48
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v55, v36, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v17, v25, v56, v17
	v_dual_fmac_f32 v51, v50, v35 :: v_dual_mul_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v33, v51, v40
	v_fma_f32 v33, -v39, v55, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v35, v51
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v30, v30, v37, v53
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v33, v33, v41, v55
	v_div_fixup_f32 v19, v30, v26, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v33, v24, v18
	v_div_fixup_f32 v18, v31, v28, v20
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v20, v43, v29 :: v_dual_mul_f32 v17, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v19, v44, v42 :: v_dual_mul_f32 v24, v2, v13
	v_dual_mul_f32 v18, v15, v18 :: v_dual_mul_f32 v13, v38, v32
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v28, 7, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v20|, |v23|, |v22|
	v_max_f32_e64 v15, |v17|, |v24|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v14, |v21|, |v16|, |v18|
	v_max3_f32 v25, |v19|, |v8|, |v7|
	v_max3_f32 v26, |v13|, |v3|, |v4|
	v_max3_f32 v14, v2, v14, v15
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v15, v25, v26, v27
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v27, 2, v10
	v_permlanex16_b32 v25, v14, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v26, v15, s7, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v29, v2, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v26, v26, v26
	v_max_f32_e32 v14, v14, v25
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v25, v10, 2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v26
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v26, 0, v28, v29
	v_xad_u32 v25, v25, v27, 0
	ds_store_b64 v26, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[14:15], v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v26, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v26, v26 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, v15, v26
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v25, v14
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v26, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v14, v14, v25 :: v_dual_max_f32 v15, v15, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v25, v14 :: v_dual_mov_b32 v26, v15
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v14, v14, v25 :: v_dual_max_f32 v15, v15, v26
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v25, v14 :: v_dual_mov_b32 v26, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v25, v25 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v14, v14, v25 :: v_dual_max_f32 v15, v15, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v25, v14 :: v_dual_add_nc_u32 v26, 0, v2
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v25, v25, v25
	v_dual_max_f32 v14, v14, v25 :: v_dual_add_nc_u32 v25, 0, v27
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v25, v[14:15]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[14:15], v26
.Ltmp51:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v14, 0x2b8cbccc, v14 :: v_dual_max_f32 v15, 0x2b8cbccc, v15
	v_div_scale_f32 v25, null, 0x40e00000, 0x40e00000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v15
	v_div_scale_f32 v31, vcc_lo, v14, 0x40e00000, v14
	v_rcp_f32_e32 v27, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v28, v26
	v_fma_f32 v29, -v25, v27, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v26, v28, 1.0
	v_dual_fmac_f32 v28, v30, v28 :: v_dual_fmac_f32 v27, v29, v27
	v_div_scale_f32 v29, s0, v15, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v29, v28
	v_fma_f32 v34, -v26, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v34, v28
	v_mul_f32_e32 v30, v31, v27
	v_fma_f32 v26, -v26, v32, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v25, v30, v31
	v_fmac_f32_e32 v30, v33, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v30, v31
	v_div_fmas_f32 v25, v25, v27, v30
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v26, v26, v28, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v25, 0x40e00000, v14
	v_div_fixup_f32 v25, v26, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v15, v14, 16, 1
	v_bfe_u32 v26, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v14, v15, 0x7fff
	v_add3_u32 v14, v25, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v25, 0xffff0000, v15
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v29, null, v25, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v29
	v_fma_f32 v58, -v29, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v58, v48
	v_div_scale_f32 v27, null, v25, v25, v20
	v_div_scale_f32 v31, null, v25, v25, v22
	v_div_scale_f32 v33, null, v25, v25, v21
	v_rcp_f32_e32 v47, v27
	v_div_scale_f32 v35, null, v25, v25, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v49, v31
	v_div_scale_f32 v37, null, v25, v25, v18
	v_div_scale_f32 v39, null, v25, v25, v17
	v_rcp_f32_e32 v50, v33
	v_rcp_f32_e32 v51, v35
	v_div_scale_f32 v41, null, v25, v25, v24
	v_fma_f32 v57, -v27, v47, 1.0
	v_rcp_f32_e32 v52, v37
	v_rcp_f32_e32 v53, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v54, v41
	v_fma_f32 v59, -v31, v49, 1.0
	v_dual_fmac_f32 v47, v57, v47 :: v_dual_and_b32 v26, 0xffff0000, v14
	v_div_scale_f32 v28, vcc_lo, v20, v25, v20
	v_fma_f32 v60, -v33, v50, 1.0
	v_div_scale_f32 v30, s0, v23, v25, v23
	v_fma_f32 v61, -v35, v51, 1.0
	v_div_scale_f32 v32, s1, v22, v25, v22
	v_fmac_f32_e32 v49, v59, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v57, v28, v47 :: v_dual_mul_f32 v58, v30, v48
	v_div_scale_f32 v34, s2, v21, v25, v21
	v_fma_f32 v62, -v37, v52, 1.0
	v_fma_f32 v63, -v39, v53, 1.0
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_fmac_f32 v51, v61, v51
	v_div_scale_f32 v36, s3, v16, v25, v16
	v_fma_f32 v64, -v41, v54, 1.0
	v_mul_f32_e32 v59, v32, v49
	v_fma_f32 v66, -v27, v57, v28
	v_div_scale_f32 v38, s4, v18, v25, v18
	v_div_scale_f32 v40, s5, v17, v25, v17
	v_dual_fmac_f32 v52, v62, v52 :: v_dual_fmac_f32 v53, v63, v53
	v_dual_mul_f32 v60, v34, v50 :: v_dual_mul_f32 v61, v36, v51
	v_fma_f32 v67, -v29, v58, v30
	v_div_scale_f32 v42, s6, v24, v25, v24
	v_dual_fmac_f32 v54, v64, v54 :: v_dual_fmac_f32 v57, v66, v47
	v_fma_f32 v68, -v31, v59, v32
	v_div_scale_f32 v43, null, v26, v26, v19
	v_dual_mul_f32 v62, v38, v52 :: v_dual_mul_f32 v63, v40, v53
	v_fma_f32 v69, -v33, v60, v34
	v_fma_f32 v70, -v35, v61, v36
	v_fmac_f32_e32 v58, v67, v48
	v_dual_mul_f32 v64, v42, v54 :: v_dual_fmac_f32 v59, v68, v49
	v_fma_f32 v27, -v27, v57, v28
	v_rcp_f32_e32 v55, v43
	v_fma_f32 v72, -v39, v63, v40
	v_dual_fmac_f32 v60, v69, v50 :: v_dual_fmac_f32 v61, v70, v51
	v_fma_f32 v28, -v29, v58, v30
	v_fma_f32 v29, -v31, v59, v32
	v_div_fmas_f32 v27, v27, v47, v57
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v71, -v37, v62, v38
	v_fmac_f32_e32 v63, v72, v53
	v_fma_f32 v30, -v33, v60, v34
	v_div_fmas_f32 v28, v28, v48, v58
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v43, v55, 1.0
	v_div_fmas_f32 v29, v29, v49, v59
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v62, v71, v52
	v_div_fixup_f32 v20, v27, v25, v20
	v_div_fmas_f32 v27, v30, v50, v60
	v_div_scale_f32 v44, null, v26, v26, v8
	v_fma_f32 v31, -v35, v61, v36
	v_fmac_f32_e32 v55, v65, v55
	v_fma_f32 v32, -v37, v62, v38
	v_div_fixup_f32 v21, v27, v25, v21
	v_div_scale_f32 v27, null, v26, v26, v7
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v56, v44
	v_div_fixup_f32 v23, v28, v25, v23
	v_div_fmas_f32 v28, v31, v51, v61
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v22, v29, v25, v22
	v_div_fmas_f32 v29, v32, v52, v62
	v_rcp_f32_e32 v32, v27
	v_div_fixup_f32 v16, v28, v25, v16
	v_div_scale_f32 v28, s0, v19, v26, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v44, v56, 1.0
	v_fma_f32 v31, -v41, v64, v42
	v_div_scale_f32 v37, null, v26, v26, v13
	v_dual_mul_f32 v33, v28, v55 :: v_dual_fmac_f32 v56, v30, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v27, v32, 1.0
	v_div_scale_f32 v30, s1, v8, v26, v8
	v_div_fixup_f32 v18, v29, v25, v18
	v_fma_f32 v29, -v39, v63, v40
	v_fmac_f32_e32 v32, v35, v32
	v_fmac_f32_e32 v64, v31, v54
	v_fma_f32 v31, -v43, v33, v28
	v_mul_f32_e32 v34, v30, v56
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v36, -v41, v64, v42
	v_fmac_f32_e32 v33, v31, v55
	v_fma_f32 v31, -v44, v34, v30
	v_div_fmas_f32 v29, v29, v53, v63
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v35, s2, v7, v26, v7
	v_fma_f32 v28, -v43, v33, v28
	v_div_fmas_f32 v36, v36, v54, v64
	v_fmac_f32_e32 v34, v31, v56
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v29, v25, v17
	v_div_fmas_f32 v28, v28, v55, v33
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v44, v34, v30
	v_div_fixup_f32 v24, v36, v25, v24
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v19, v28, v26, v19
	v_fma_f32 v28, -v37, v38, 1.0
	v_mul_f32_e32 v31, v35, v32
	v_div_fmas_f32 v30, v30, v56, v34
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v28, v38
	v_fma_f32 v33, -v27, v31, v35
	v_div_fixup_f32 v8, v30, v26, v8
	v_div_scale_f32 v30, null, v26, v26, v6
	v_div_scale_f32 v28, null, v26, v26, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v33, v32
	v_rcp_f32_e32 v33, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v27, v31, v35
	v_div_scale_f32 v27, null, v26, v26, v3
	v_div_scale_f32 v35, null, v26, v26, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v32, v31
	v_rcp_f32_e32 v29, v27
	v_div_scale_f32 v31, vcc_lo, v13, v26, v13
	v_fma_f32 v41, -v30, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v7, v25, v26, v7
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v32, v28
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, s2, v6, v26, v6
	v_mul_f32_e32 v34, v31, v38
	v_fma_f32 v25, -v27, v29, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v47, v41, v33
	v_fma_f32 v43, -v35, v39, 1.0
	v_fma_f32 v40, -v37, v34, v31
	v_fmac_f32_e32 v29, v25, v29
	v_div_scale_f32 v25, s0, v3, v26, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v34, v40, v38
	v_fma_f32 v36, -v28, v32, 1.0
	v_mul_f32_e32 v42, v25, v29
	v_div_scale_f32 v43, s3, v5, v26, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v37, v34, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v27, v42, v25
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v31, v31, v38, v34
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v42, v40, v29
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v30, v47, v41
	v_fma_f32 v25, -v27, v42, v25
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, s1, v4, v26, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v25, v25, v29, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v48, v43, v39 :: v_dual_fmac_f32 v47, v40, v33
	v_mul_f32_e32 v44, v36, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v3, v25, v26, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v17
	v_and_b32_e32 v17, 15, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v27, -v35, v48, v43
	v_fma_f32 v37, -v28, v44, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v44, v37, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v48, v27, v39
	v_fma_f32 v27, -v30, v47, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v28, v44, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v29, -v35, v48, v43
	v_div_fixup_f32 v13, v31, v26, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v28, v28, v32, v44
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v27, v27, v33, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v28, v26, v4
	v_div_fmas_f32 v29, v29, v39, v48
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v27, v26, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v29, v26, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v28, v4
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_and_b32_e32 v4, 15, v23
	v_cvt_i32_f32_e32 v29, v6
	v_and_b32_e32 v6, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 2, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v30, v5
	v_and_b32_e32 v5, 15, v22
	v_and_b32_e32 v22, 15, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v7, 11, v0
	v_and_b32_e32 v23, 0x600, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x60, v0
	v_lshlrev_b32_e32 v31, 7, v45
	v_and_b32_e32 v7, 0x3000, v7
	v_lshl_or_b32 v11, v11, 4, v23
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v7, 0, v7
	v_xor_b32_e32 v8, v11, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v19
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, v7, v31, v8
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.l, v14.h
	v_mov_b16_e32 v8.h, v1.l
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v13
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v13, 5, v0
	v_lshlrev_b32_e32 v0, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v27, v3
	v_and_b32_e32 v3, 15, v20
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 0x60, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[20:23] offset:256
	v_and_or_b32 v0, 0x3600, v0, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v16, v16
	v_and_b32_e32 v18, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v0, v0, v46, 0
	ds_load_b128 v[3:6], v0
	ds_load_b128 v[20:23], v0 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 15, v16
	v_and_b32_e32 v19, 15, v24
	v_and_b32_e32 v24, 15, v27
	v_and_b32_e32 v25, 15, v28
	v_and_b32_e32 v26, 15, v29
	v_and_b32_e32 v27, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[16:19]
	ds_store_b128 v7, v[24:27] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v0
	ds_load_b128 v[24:27], v0 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.h, v1.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, s33, 7, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, v15.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v20, 4, v3
	v_lshl_or_b32 v3, v22, 4, v5
	v_lshl_or_b32 v0, v23, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v21, 4, v4
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v8, v7, v8, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.h, 0xff, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v12, s0, v[1:2]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.l, 8, v0.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v2, s34, v9
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v14, v26, 4, v18
	v_lshl_or_b32 v15, v27, 4, v19
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v0.h, v0.l
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v11.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v8, v8, 0, 16
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, v2, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v24, 4, v16
	v_lshl_or_b32 v6, v25, 4, v17
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v15.l
	v_and_b16 v1.h, 0xff, v14.l
	v_or_b16 v4.l, v0.h, v0.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v0, v8, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v6.l
	v_and_b16 v2.h, 0xff, v5.l
	v_or_b16 v5.h, v1.h, v1.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v1, v9, s33, 1
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[16:19], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s27, 0xffff
	s_mov_b32 s16, s26
	buffer_store_b16 v0, v1, s[16:19], 0 offen
.Ltmp52:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 139
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 139
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11088
; TotalNumSgprs: 55
; NumVgprs: 139
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 139
; Occupancy: 10
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
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
