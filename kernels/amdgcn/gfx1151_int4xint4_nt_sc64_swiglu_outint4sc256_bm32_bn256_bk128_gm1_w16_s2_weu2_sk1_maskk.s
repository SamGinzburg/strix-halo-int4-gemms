	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v19, 15, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v17, 4, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v13, 1, v0
	v_lshlrev_b32_e32 v14, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v20, 0x1e0, v0
	v_or_b32_e32 v4, 0x80, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v13, 24, v13
	v_xor_b32_e32 v14, v14, v13
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
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v14, 0, v14
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s19, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s19
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s19, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s6, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s6
	s_abs_i32 s17, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v19
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s7
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s6
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s17, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s18, s16
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s6, v1
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s33, s7
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s17, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s48, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v9
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s19
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s21, 6
.Ltmp21:
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_add_i32 s22, s48, s35
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_mul_i32 s21, s48, s17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s23, s3, vcc_lo
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_mul_i32 s19, s22, s17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s23
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v18, 3, v0
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s22, s34, s17
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_add_i32 s21, s21, s6
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_add_i32 s19, s19, s6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v2, 3, v18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, s17, v17, v[1:2]
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v10, s6, v2
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[6:7], null, s17, v3, v[2:3]
	v_mad_u64_u32 v[7:8], null, s17, v4, v[2:3]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s17, v10
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v10
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_add3_u32 v5, s6, s22, v5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v8, s21, v6
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_add_nc_u32_e32 v6, s19, v6
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v9, s21, v7
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_add_nc_u32_e32 v7, s19, v7
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	s_mov_b32 s5, -1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v10, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e32 v12, 0x80000000, v7, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v21, v5, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x3
	buffer_load_b64 v[6:7], v8, s[28:31], 0 offen
	buffer_load_b64 v[8:9], v9, s[28:31], 0 offen
	buffer_load_b64 v[10:11], v10, s[28:31], 0 offen
	buffer_load_b64 v[15:16], v12, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v12, 3, v0
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v12, 24, v12
	v_xor_b32_e32 v12, v5, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v13, 0, v12
	s_waitcnt vmcnt(4)
	ds_store_b16 v13, v21 offset:16384
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v14, v[6:7], v[8:9] offset1:8
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v14, v[10:11], v[15:16] offset0:16 offset1:24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v6, 24, v5
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v9, v19, 5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshl_or_b32 v56, v20, 4, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v10, 8, v9
	v_xor_b32_e32 v11, 16, v9
	v_xor_b32_e32 v12, 24, v9
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v57, 8, v56
	v_xor_b32_e32 v58, 16, v56
	v_xor_b32_e32 v59, 24, v56
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
.LBB0_3:                                ; %Flow259
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v55, v0, 4, 1
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v26, 0
	s_lshl_b32 s1, s35, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v5, 24, v5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v7, s34, v19
	s_lshl_b32 s20, s16, 9
	s_lshl_b32 s16, s16, 8
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v9, v19, 5, v5
	v_lshl_or_b32 v5, s18, 9, v20
	s_lshl_b32 s18, s18, 8
	v_mul_lo_u32 v22, s7, v7
	s_add_i32 s21, s35, s18
	v_or_b32_e32 v8, s18, v4
	v_add_nc_u32_e32 v6, s1, v5
	v_subrev_nc_u32_e32 v60, s20, v5
	v_add_nc_u32_e32 v5, s21, v3
	s_max_i32 s19, s0, 1
	v_subrev_nc_u32_e32 v8, s16, v8
	v_subrev_nc_u32_e32 v27, s20, v6
	v_add_nc_u32_e32 v6, 16, v7
	v_or_b32_e32 v7, s18, v3
	v_subrev_nc_u32_e32 v5, s16, v5
	s_lshl_b32 s49, s19, 5
	v_lshl_or_b32 v56, v20, 4, v9
	v_mul_lo_u32 v21, s7, v6
	v_add_nc_u32_e32 v6, s21, v4
	v_subrev_nc_u32_e32 v7, s16, v7
	v_mad_u64_u32 v[3:4], null, s17, v5, s[6:7]
	v_xor_b32_e32 v10, 8, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v6, s16, v6
	s_mov_b32 s16, 0
	v_xor_b32_e32 v11, 16, v9
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v23, s34, v17
	v_mad_u64_u32 v[4:5], null, s17, v6, s[6:7]
	v_mad_u64_u32 v[5:6], null, s17, v7, s[6:7]
	v_mad_u64_u32 v[6:7], null, s17, v8, s[6:7]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[7:8], null, s17, v23, s[6:7]
	v_xor_b32_e32 v12, 24, v9
	v_xor_b32_e32 v57, 8, v56
	v_xor_b32_e32 v58, 16, v56
	v_xor_b32_e32 v59, 24, v56
	v_sub_nc_u32_e32 v15, s17, v1
	v_sub_nc_u32_e32 v16, s17, v2
	s_mov_b32 s17, s16
	v_lshlrev_b32_e32 v62, 1, v22
	v_add3_u32 v63, v3, v2, 32
	v_add3_u32 v64, v4, v2, 32
	v_add3_u32 v65, v5, v2, 32
	v_add3_u32 v66, v6, v2, 32
	v_add3_u32 v67, v7, v1, 32
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v4, s19 :: v_dual_lshlrev_b32 v25, 1, v55
	v_dual_mov_b32 v30, 0 :: v_dual_lshlrev_b32 v61, 1, v21
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v68, 0, v9
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v69, 0, v10
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v70, 0, v11
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v71, 0, v12
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v72, 0, v56
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v73, 0, v57
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v74, 0, v58
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v75, 0, v59
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b64 s[36:37], s[12:13]
	s_lshl_b32 s5, s35, 2
	s_add_i32 s6, s6, 32
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
	buffer_load_u16 v117, v62, s[44:47], 0 offen
	buffer_load_u16 v118, v61, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s12, s6, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_lt_i32_e32 vcc_lo, s12, v15
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v76, s16, v67
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s12, v16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[107:110], v68 offset0:32 offset1:33
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[111:114], v72 offset1:16
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[111:112], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[111:112], v[109:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[113:114], v[109:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v69 offset0:32 offset1:33
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v73 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v70 offset0:32 offset1:33
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v74 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v71 offset0:32 offset1:33
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v75 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v109, v25, v60
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v110, v109, s[40:43], 0 offen
	buffer_load_u16 v111, v109, s[40:43], 0 offen offset:4
	buffer_load_u16 v112, v109, s[40:43], 0 offen offset:8
	buffer_load_u16 v113, v109, s[40:43], 0 offen offset:12
	buffer_load_u16 v114, v109, s[40:43], 0 offen offset:16
	buffer_load_u16 v115, v109, s[40:43], 0 offen offset:20
	buffer_load_u16 v116, v109, s[40:43], 0 offen offset:24
	buffer_load_u16 v109, v109, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v86, v86
	v_mul_f32_e32 v85, v118, v85
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v110, 16, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v54, v85, v110 :: v_dual_lshlrev_b32 v85, 16, v117
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v77, v85, v77
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v105, v118, v105 :: v_dual_mul_f32 v96, v85, v96
	v_mul_f32_e32 v104, v118, v104
	v_dual_mul_f32 v103, v118, v103 :: v_dual_mul_f32 v94, v85, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v52, v77, v110
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v77, v118, v86 :: v_dual_lshlrev_b32 v86, 16, v111
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v102, v118, v102
	v_dual_mul_f32 v101, v118, v101 :: v_dual_mul_f32 v98, v85, v98
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v84, v85, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v50, v77, v86
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v77, v85, v78 :: v_dual_lshlrev_b32 v78, 16, v112
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v106, v118, v106
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v36, v77, v86 :: v_dual_mul_f32 v77, v118, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v77, v78
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v77, v85, v79
	v_mul_f32_e32 v79, v118, v90
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v35, v77, v78
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v77, v118, v88 :: v_dual_lshlrev_b32 v78, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v48, v77, v78
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v77, v85, v80 :: v_dual_lshlrev_b32 v80, 16, v115
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v34, v77, v78 :: v_dual_mul_f32 v77, v118, v89
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v78, 16, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v46, v79, v80 :: v_dual_add_nc_u32 v79, s16, v63
	v_fmac_f32_e32 v47, v77, v78
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v77, v85, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v81, v85, v82 :: v_dual_cndmask_b32 v86, 0x80000000, v79
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v79, 16, v116
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v23, v81, v80
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_add_nc_u32_e32 v80, s16, v64
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v24, v77, v78
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v78, s16, v66
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v81, v25, v27
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v77, s16, v65
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v87, 0x80000000, v80, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 32
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v82, 0x80000000, v78, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v78, v118, v91
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v91, v118, v108
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s49, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v78, v79
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v78, v85, v83
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v22, v78, v79 :: v_dual_lshlrev_b32 v79, 16, v109
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v78, v118, v92
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x4
	buffer_load_u16 v80, v81, s[40:43], 0 offen
	buffer_load_u16 v83, v81, s[40:43], 0 offen offset:4
	buffer_load_u16 v88, v81, s[40:43], 0 offen offset:8
	buffer_load_u16 v89, v81, s[40:43], 0 offen offset:12
	buffer_load_u16 v90, v81, s[40:43], 0 offen offset:16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v21, v84, v79
	v_dual_fmac_f32 v40, v78, v79 :: v_dual_mul_f32 v79, v85, v93
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v92, v118, v107 :: v_dual_mul_f32 v93, v85, v100
	v_mul_f32_e32 v84, v85, v95
	v_mul_f32_e32 v95, v85, v99
	v_mul_f32_e32 v85, v85, v97
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x2
	buffer_load_u16 v97, v81, s[40:43], 0 offen offset:24
	buffer_load_u16 v99, v81, s[40:43], 0 offen offset:28
	buffer_load_u16 v107, v81, s[40:43], 0 offen offset:20
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[77:78], v77, s[28:31], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v100, 16, v80
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v51, v79, v100 :: v_dual_lshlrev_b32 v108, 16, v83
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[79:80], v82, s[28:31], 0 offen
	buffer_load_b64 v[81:82], v86, s[28:31], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v86, 16, v88
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v88, 16, v90
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v90, 16, v97
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v44, v102, v108 :: v_dual_fmac_f32 v29, v95, v90
	v_dual_fmac_f32 v33, v94, v108 :: v_dual_fmac_f32 v32, v84, v86
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	buffer_load_b64 v[83:84], v87, s[28:31], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v87, 16, v89
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v38, v92, v90 :: v_dual_lshlrev_b32 v89, 16, v107
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v94, 16, v99
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v43, v103, v86 :: v_dual_add_nc_u32 v60, s5, v60
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v61, 2, v61
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v31, v96, v87 :: v_dual_add_nc_u32 v62, 2, v62
	v_dual_fmac_f32 v53, v101, v100 :: v_dual_fmac_f32 v30, v98, v89
	v_fmac_f32_e32 v37, v91, v94
	v_fmac_f32_e32 v28, v93, v94
	v_dual_fmac_f32 v42, v104, v87 :: v_dual_fmac_f32 v39, v106, v89
	v_dual_fmac_f32 v26, v85, v88 :: v_dual_add_nc_u32 v27, s5, v27
	v_fmac_f32_e32 v41, v105, v88
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v13, v76 offset:16384
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v14, v[77:78], v[79:80] offset1:8
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v14, v[81:82], v[83:84] offset0:16 offset1:24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow260
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v19
	s_mul_i32 s4, s34, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s0, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_lshl_b32 s0, s7, 4
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v90, 0, v59
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v3, 0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v1, s4, s3, v1
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v4, 0, v12
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v92, 0, v57
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s0, 1
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v93, 0, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v61, 0, 1, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v60, 0 :: v_dual_and_b32 v27, 0x1f0, v0
	s_clause 0x1
	buffer_load_u16 v72, v2, s[36:39], 0 offen
	buffer_load_u16 v73, v1, s[36:39], 0 offen
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v1, 0, v9
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v2, 0, v10
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v1 offset0:32 offset1:33
	ds_load_2addr_stride64_b64 v[13:16], v2 offset0:32 offset1:33
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:32 offset1:33
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v4 offset0:32 offset1:33
	v_and_b32_e32 v25, 16, v0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v61
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v91, 0, v58
	v_mov_b32_e32 v58, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[56:57], v93
	ds_load_b64 v[58:59], v92
	ds_load_b64 v[61:62], v91
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v81, s11 :: v_dual_mov_b32 v80, s10
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[82:83], v90
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v79, s9 :: v_dual_mov_b32 v78, s8
	v_dual_mov_b32 v77, s7 :: v_dual_mov_b32 v76, s6
	v_dual_mov_b32 v75, s5 :: v_dual_mov_b32 v74, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[56:57], v[9:10], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[56:57], v[11:12], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[58:59], v[13:14], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[74:81], v[58:59], v[15:16], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[61:62], v[5:6], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[74:81], v[61:62], v[7:8], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[82:83], v[1:2], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[74:81], v[82:83], v[3:4], v[74:81] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v59, v68
	v_cvt_f32_i32_e32 v58, v69
	v_cvt_f32_i32_e32 v57, v70
	v_cvt_f32_i32_e32 v56, v71
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v89, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[60:61], v93 offset:8192
	ds_load_b64 v[62:63], v92 offset:8192
	ds_load_b64 v[68:69], v91 offset:8192
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v89, s11 :: v_dual_mov_b32 v88, s10
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[70:71], v90 offset:8192
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_dual_mov_b32 v87, s9 :: v_dual_mov_b32 v86, s8
	v_dual_mov_b32 v85, s7 :: v_dual_mov_b32 v84, s6
	v_dual_mov_b32 v83, s5 :: v_dual_mov_b32 v82, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[60:61], v[9:10], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[60:61], v[11:12], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[62:63], v[13:14], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[62:63], v[15:16], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[68:69], v[5:6], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[68:69], v[7:8], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[70:71], v[1:2], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[70:71], v[3:4], v[82:89] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v68, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v91
	v_cvt_f32_i32_e32 v70, v92
	v_cvt_f32_i32_e32 v71, v93
	v_cvt_f32_i32_e32 v60, v94
	v_cvt_f32_i32_e32 v61, v95
	v_cvt_f32_i32_e32 v62, v96
	v_cvt_f32_i32_e32 v63, v97
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
.LBB0_10:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v20
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s48, s3
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v1, v55, v1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
.Ltmp22:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v18, 5, v18
.Ltmp23:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v12, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v8, s0, v1, 1
	v_add_lshl_u32 v9, s0, v2, 1
	v_add_lshl_u32 v10, s0, v3, 1
	v_add_lshl_u32 v11, s0, v4, 1
	v_add_lshl_u32 v13, s0, v5, 1
	v_add_lshl_u32 v14, s0, v6, 1
	v_add_lshl_u32 v15, s0, v7, 1
	v_add_lshl_u32 v16, s0, v12, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	buffer_load_u16 v13, v13, s[16:19], 0 offen
	buffer_load_u16 v14, v14, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v55, v1, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_add_lshl_u32 v3, s1, v4, 1
	v_add_lshl_u32 v4, s1, v5, 1
	v_add_lshl_u32 v5, s1, v6, 1
	v_add_lshl_u32 v6, s1, v7, 1
	v_add_lshl_u32 v7, s1, v12, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x6
	buffer_load_u16 v12, v1, s[16:19], 0 offen
	buffer_load_u16 v90, v2, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, 0
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v1.h, v73.l
	v_mov_b16_e32 v2.h, v72.l
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v72, v74, v1
	v_mul_f32_e32 v73, v75, v1
	v_mul_f32_e32 v74, v76, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v75, v77, v1 :: v_dual_mul_f32 v66, v66, v2
	v_dual_mul_f32 v76, v78, v1 :: v_dual_mul_f32 v69, v69, v2
	v_dual_mul_f32 v77, v79, v1 :: v_dual_mul_f32 v68, v68, v2
	v_dual_mul_f32 v78, v80, v1 :: v_dual_mul_f32 v71, v71, v2
	v_dual_mul_f32 v79, v81, v1 :: v_dual_mul_f32 v70, v70, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v80, v82, v1 :: v_dual_mul_f32 v59, v59, v2
	v_dual_mul_f32 v81, v83, v1 :: v_dual_mul_f32 v60, v60, v2
	v_dual_mul_f32 v82, v84, v1 :: v_dual_mul_f32 v61, v61, v2
	v_dual_mul_f32 v83, v85, v1 :: v_dual_mul_f32 v62, v62, v2
	v_dual_mul_f32 v84, v86, v1 :: v_dual_mul_f32 v63, v63, v2
	v_mul_f32_e32 v85, v87, v1
	v_mul_f32_e32 v86, v88, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v64, v64, v2
	v_mul_f32_e32 v65, v65, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v87, v89, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v67, v67, v2
.Ltmp28:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp29:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v72, v72, v8, v54
	v_fma_f32 v8, v64, v8, v52
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v74, v74, v10, v49
	v_fma_f32 v10, v66, v10, v35
	v_fma_f32 v64, v79, v16, v40
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v80, v80, v55, v53
	v_fma_f32 v55, v68, v55, v51
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v78, v15, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v35, v10, s2
	v_cndmask_b32_e64 v52, v52, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v53, v80, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v51, v51, v55, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v84, v84, v4, v41
	v_fma_f32 v4, v60, v4, v26
	v_fma_f32 v79, v86, v6, v38
	v_fma_f32 v6, v62, v6, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v84, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v4, s2
	v_cndmask_b32_e64 v29, v29, v6, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v79, s2
	v_cndmask_b32_e64 v40, v40, v64, s2
	v_cndmask_b32_e64 v45, v45, v68, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v29
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v78, v87, v7, v37
	v_fma_f32 v7, v63, v7, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v72, s2
	v_cndmask_b32_e64 v49, v49, v74, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v78, s2
	v_cndmask_b32_e64 v28, v28, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v41
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v81, v81, v12, v44
	v_fma_f32 v12, v69, v12, v33
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v62, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v81, s2
	v_cndmask_b32_e64 v12, v33, v12, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v3, 16, v3
	v_lshlrev_b32_e32 v88, 16, v90
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v4
	v_mul_f32_e32 v35, 0xbfb8aa3b, v44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v12
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v83, v83, v3, v42
	v_fma_f32 v3, v71, v3, v31
	v_fma_f32 v82, v82, v88, v43
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v7, 0, 0x42800000, s4
	v_cndmask_b32_e64 v4, 0, 0x42800000, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v83, s2
	v_cndmask_b32_e64 v31, v31, v3, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v82, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v33, 0xbfb8aa3b, v42
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v85, v85, v5, v39
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v60
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v85, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v3, 0, 0x42800000, s0
	v_cndmask_b32_e64 v60, 0, 0x42800000, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v7, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v73, v73, v9, v50
	v_fma_f32 v9, v65, v9, v36
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v65, v70, v88, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v50, v73, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v75, v11, v48
	v_fma_f32 v11, v67, v11, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v36, v9, s2
	v_cndmask_b32_e64 v32, v32, v65, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_mul_f32_e32 v50, 0xbfb8aa3b, v31
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v61, v5, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v34, v11, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v5, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	v_dual_mul_f32 v5, 0xbfb8aa3b, v38 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, 0xbfb8aa3b, v30
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	v_mul_f32_e32 v55, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v5
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v44 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v43
	v_exp_f32_e32 v3, v3
	v_dual_mul_f32 v61, 0xbfb8aa3b, v28 :: v_dual_mul_f32 v64, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v33, 0, 0x42800000, s3
	v_cndmask_b32_e64 v6, 0, 0x42800000, s5
	v_cndmask_b32_e64 v5, 0, 0x42800000, s6
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v55
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v50
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v12
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v55, 0, 0x42800000, s9
	v_cndmask_b32_e64 v50, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v64
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v63
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v42 :: v_dual_fmac_f32 v6, 0xbfb8aa3b, v39
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s4
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v38 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v31
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v36, v36, v65
	v_ldexp_f32 v3, v3, v66
	v_cndmask_b32_e64 v64, 0, 0x42800000, s11
	v_cndmask_b32_e64 v63, 0, 0x42800000, s12
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v32
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v34, v34, v68
	v_ldexp_f32 v7, v7, v70
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_add_f32 v65, 1.0, v3
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v76, v76, v13, v47
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v61
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v26
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v30 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v29
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v35, v35, v67
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v67, null, v65, v65, v51
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v77, v77, v14, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v75, s2
	v_cndmask_b32_e64 v47, v47, v76, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, s0
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s10
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v63, v63
	v_ldexp_f32 v33, v33, v69
	v_ldexp_f32 v6, v6, v71
	v_ldexp_f32 v5, v5, v72
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v72, null, v34, v34, v43
	v_rcp_f32_e32 v84, v67
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v77, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s12
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v28 :: v_dual_add_f32 v6, 1.0, v6
	v_ldexp_f32 v4, v4, v73
	v_ldexp_f32 v55, v55, v75
	v_ldexp_f32 v50, v50, v76
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v92, v72
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v60, v60, v74
	v_ldexp_f32 v3, v64, v77
	v_ldexp_f32 v63, v63, v78
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v4, 1.0, v4 :: v_dual_add_f32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_add_f32 v60, 1.0, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v64, null, v36, v36, v53
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, null, v33, v33, v42
	v_div_scale_f32 v78, null, v6, v6, v39
	v_fma_f32 v102, -v67, v84, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v70, null, v35, v35, v44
	v_div_scale_f32 v76, null, v7, v7, v41
	v_div_scale_f32 v80, null, v5, v5, v38
	v_rcp_f32_e32 v93, v74
	v_rcp_f32_e32 v95, v78
	v_fma_f32 v103, -v72, v92, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v69, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v3, v64
	v_fmac_f32_e32 v84, v102, v84
	v_div_scale_f32 v87, null, v55, v55, v32
	v_div_scale_f32 v82, null, v4, v4, v37
	v_div_scale_f32 v85, null, v60, v60, v12
	v_div_scale_f32 v89, null, v50, v50, v31
	v_rcp_f32_e32 v91, v70
	v_rcp_f32_e32 v94, v76
	v_rcp_f32_e32 v96, v80
	v_rcp_f32_e32 v100, v87
	v_div_scale_f32 v73, s4, v43, v34, v43
	v_rcp_f32_e32 v97, v82
	v_fma_f32 v98, -v64, v3, 1.0
	v_rcp_f32_e32 v99, v85
	v_rcp_f32_e32 v101, v89
	v_fma_f32 v104, -v74, v93, 1.0
	v_fma_f32 v106, -v78, v95, 1.0
	v_fmac_f32_e32 v92, v103, v92
	v_div_scale_f32 v66, vcc_lo, v53, v36, v53
	v_fma_f32 v105, -v76, v94, 1.0
	v_fmac_f32_e32 v3, v98, v3
	v_fma_f32 v98, -v70, v91, 1.0
	v_fma_f32 v107, -v80, v96, 1.0
	v_fma_f32 v109, -v87, v100, 1.0
	v_fmac_f32_e32 v93, v104, v93
	v_dual_fmac_f32 v95, v106, v95 :: v_dual_mul_f32 v104, v73, v92
	v_div_scale_f32 v68, s1, v51, v65, v51
	v_div_scale_f32 v71, s3, v44, v35, v44
	v_div_scale_f32 v81, s8, v38, v5, v38
	v_fma_f32 v108, -v82, v97, 1.0
	v_fma_f32 v102, -v85, v99, 1.0
	v_fma_f32 v110, -v89, v101, 1.0
	v_dual_fmac_f32 v91, v98, v91 :: v_dual_mul_f32 v98, v68, v84
	v_dual_fmac_f32 v94, v105, v94 :: v_dual_mul_f32 v111, v66, v3
	v_fmac_f32_e32 v96, v107, v96
	v_fma_f32 v115, -v72, v104, v73
	v_div_scale_f32 v77, s6, v41, v7, v41
	v_div_scale_f32 v90, s12, v31, v50, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v97, v108, v97 :: v_dual_mul_f32 v106, v77, v94
	v_dual_fmac_f32 v99, v102, v99 :: v_dual_mul_f32 v108, v81, v96
	v_dual_fmac_f32 v101, v110, v101 :: v_dual_fmac_f32 v104, v115, v92
	v_fma_f32 v102, -v64, v111, v66
	v_mul_f32_e32 v103, v71, v91
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v114, v90, v101
	v_fma_f32 v115, -v80, v108, v81
	v_fmac_f32_e32 v111, v102, v3
	v_fma_f32 v102, -v70, v103, v71
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v75, s5, v42, v33, v42
	v_fmac_f32_e32 v108, v115, v96
	v_fma_f32 v64, -v64, v111, v66
	v_fma_f32 v115, -v89, v114, v90
	v_fmac_f32_e32 v103, v102, v91
	v_div_scale_f32 v86, s10, v12, v60, v12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v62, v62, v79
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, s7, v39, v6, v39
	v_dual_fmac_f32 v100, v109, v100 :: v_dual_mul_f32 v105, v75, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v112, v86, v99
	v_fma_f32 v110, -v67, v98, v68
	v_fmac_f32_e32 v114, v115, v101
	v_div_fmas_f32 v3, v64, v3, v111
	v_fma_f32 v64, -v70, v103, v71
	v_div_scale_f32 v83, s9, v37, v4, v37
	v_fma_f32 v66, -v76, v106, v77
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v107, v79, v95 :: v_dual_fmac_f32 v98, v110, v84
	v_fma_f32 v110, -v74, v105, v75
	v_div_fixup_f32 v36, v3, v36, v53
	v_div_fmas_f32 v3, v64, v91, v103
	v_div_scale_f32 v88, s11, v32, v55, v32
	v_dual_mul_f32 v109, v83, v97 :: v_dual_fmac_f32 v106, v66, v94
	v_fma_f32 v66, -v85, v112, v86
	v_fma_f32 v102, -v78, v107, v79
	v_div_fixup_f32 v3, v3, v35, v44
	v_fmac_f32_e32 v105, v110, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v113, v88, v100 :: v_dual_fmac_f32 v112, v66, v99
	v_fma_f32 v110, -v82, v109, v83
	v_fma_f32 v66, -v72, v104, v73
	v_fmac_f32_e32 v107, v102, v95
	v_fma_f32 v67, -v67, v98, v68
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v8, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v68, -v74, v105, v75
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v70, -v76, v106, v77
	v_fmac_f32_e32 v109, v110, v97
	v_div_fmas_f32 v53, v66, v92, v104
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v102, -v87, v113, v88
	v_fma_f32 v71, -v78, v107, v79
	v_div_fmas_f32 v64, v68, v93, v105
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v72, -v80, v108, v81
	v_div_fmas_f32 v35, v70, v94, v106
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v73, -v82, v109, v83
	v_fmac_f32_e32 v113, v102, v100
	v_div_fixup_f32 v34, v53, v34, v43
	v_div_fmas_f32 v43, v71, v95, v107
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v33, v64, v33, v42
	v_div_fmas_f32 v42, v72, v96, v108
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v74, -v85, v112, v86
	v_div_fixup_f32 v3, v35, v7, v41
	v_div_fmas_f32 v35, v73, v97, v109
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v75, -v87, v113, v88
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v49, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v34, v67, v84, v98
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v5, v42, v5, v38
	v_div_fmas_f32 v38, v74, v99, v112
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v35, v35, v4, v37
	v_div_fmas_f32 v37, v75, v100, v113
	v_fma_f32 v76, -v89, v114, v90
	v_div_fixup_f32 v12, v38, v60, v12
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v6, v43, v6, v39
	v_div_fixup_f32 v32, v37, v55, v32
	v_div_fmas_f32 v39, v76, v101, v114
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v47, v3
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v61, v61
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v46, v6
	v_mul_f32_e32 v32, v10, v32
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v63
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v31, v39, v50, v31
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v45, v5
	v_mul_f32_e32 v12, v9, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v110, null, v69, v69, v26
	v_div_scale_f32 v38, null, v10, v10, v30
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v31, v11, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v5, v40, v35 :: v_dual_mul_f32 v40, v57, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v41, v38
	v_rcp_f32_e32 v35, v110
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v11, v61, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v34, v34, v65, v51
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v40, v15, v22
	v_fma_f32 v13, v59, v13, v24
	s_mov_b32 s7, 0x76543210
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v22, v15, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v45, -v38, v41, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v110, v35, 1.0
	v_div_scale_f32 v44, null, v11, v11, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v24, v13, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, s0, v30, v10, v30
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v58, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v46, v44
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v56, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_mul_f32 v50, v45, v41 :: v_dual_fmac_f32 v35, v42, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v14, v23
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v42, vcc_lo, v26, v69, v26
	v_fma_f32 v14, -v38, v50, v45
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v37, 1.0, v62
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v16, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v49, -v44, v46, 1.0
	v_mul_f32_e32 v47, v42, v35
	v_fmac_f32_e32 v50, v14, v41
	v_div_scale_f32 v39, null, v37, v37, v29
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, s3, v28, v11, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v39
	v_fma_f32 v40, -v110, v47, v42
	v_fma_f32 v38, -v38, v50, v45
	v_mul_f32_e32 v53, v49, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v23, v9, s2
	v_cndmask_b32_e64 v2, v21, v2, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v47, v40, v35
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v21, v52, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v14, -v44, v53, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v39, v43, 1.0
	v_fma_f32 v42, -v110, v47, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v14, v46
	v_fmac_f32_e32 v43, v16, v43
	v_div_scale_f32 v16, s1, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v42, v35, v47
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v51, v16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v39, v51, v16
	v_fmac_f32_e32 v51, v40, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v39, v51, v16
	v_div_fmas_f32 v16, v38, v41, v50
	v_fma_f32 v38, -v44, v53, v49
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v14, v14, v43, v51
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v16, v10, v30
	v_div_fmas_f32 v38, v38, v46, v53
	v_div_fixup_f32 v16, v35, v69, v26
	v_div_fixup_f32 v14, v14, v37, v29
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v26, |v6|, |v5|
.Ltmp31:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v23, v9, v10
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v11, v38, v11, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v13, v16 :: v_dual_mul_f32 v14, v15, v14
	v_mul_f32_e32 v15, v54, v36
	v_dual_mul_f32 v9, v48, v33 :: v_dual_mul_f32 v22, v2, v11
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v10, |v31|, |v13|, |v23|
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v28, 7, v19
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v21|, |v12|, |v32|
	v_max3_f32 v16, |v15|, |v8|, |v7|
	v_max_f32_e64 v11, |v14|, |v22|
	v_max3_f32 v24, |v9|, |v3|, |v4|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v10, v2, v10, v11
	v_max3_f32 v11, v16, v24, v26
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v19
	v_lshrrev_b32_e32 v26, 2, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v16, v10, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v11, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v29, v2, v26
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v24, v24, v24
	v_max_f32_e32 v10, v10, v16
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v16, v20, 2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v24
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v24, 0, v28, v29
	v_xad_u32 v16, v16, v26, 0
	ds_store_b64 v24, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v16, v10
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v24, v24 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v16, v16, v16
	v_max_f32_e32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v16
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v16
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, v10, v16
	v_dual_max_f32 v11, v11, v24 :: v_dual_mov_b32 v16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v24, v11
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v24, v24, v24
	v_max_f32_e32 v10, v10, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v11, v11, v24 :: v_dual_add_nc_u32 v16, 0, v26
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v24, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v24, v24 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v24
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v24, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v24, v24 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v11, v11, v24 :: v_dual_add_nc_u32 v24, 0, v2
.Ltmp53:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, s33, 7, v2
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v16, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v24
.Ltmp55:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, 0x2b8cbccc, v10 :: v_dual_max_f32 v11, 0x2b8cbccc, v11
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v11
	v_div_scale_f32 v33, vcc_lo, v10, 0x40e00000, v10
	v_rcp_f32_e32 v26, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v28, v24
	v_fma_f32 v29, -v16, v26, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v24, v28, 1.0
	v_fmac_f32_e32 v26, v29, v26
	v_div_scale_f32 v29, s0, v11, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v30, v28
	v_mul_f32_e32 v30, v33, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v34, v29, v28
	v_fma_f32 v35, -v16, v30, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v24, v34, v29
	v_fmac_f32_e32 v30, v35, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v36, v28
	v_fma_f32 v16, -v16, v30, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v24, v34, v29
	v_div_fmas_f32 v16, v16, v26, v30
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v28, v34
	v_div_fixup_f32 v10, v16, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v24, 0x40e00000, v11
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v11, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v11, v10, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v16, v24, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v24, 0xffff0000, v10
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v26, null, v16, v16, v21
	v_div_scale_f32 v29, null, v16, v16, v12
	v_div_scale_f32 v33, null, v16, v16, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v26
	v_div_scale_f32 v35, null, v16, v16, v31
	v_rcp_f32_e32 v49, v29
	v_div_scale_f32 v37, null, v16, v16, v13
	v_rcp_f32_e32 v50, v33
	v_div_scale_f32 v45, null, v24, v24, v15
	v_rcp_f32_e32 v51, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v37
	v_fma_f32 v58, -v26, v48, 1.0
	v_rcp_f32_e32 v56, v45
	v_fma_f32 v59, -v29, v49, 1.0
	v_div_scale_f32 v39, null, v16, v16, v23
	v_fma_f32 v60, -v33, v50, 1.0
	v_div_scale_f32 v28, vcc_lo, v21, v16, v21
	v_fmac_f32_e32 v48, v58, v48
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v61, -v35, v51, 1.0
	v_div_scale_f32 v30, s0, v12, v16, v12
	v_fmac_f32_e32 v49, v59, v49
	v_rcp_f32_e32 v53, v39
	v_fma_f32 v62, -v37, v52, 1.0
	v_div_scale_f32 v34, s1, v32, v16, v32
	v_fmac_f32_e32 v50, v60, v50
	v_fma_f32 v66, -v45, v56, 1.0
	v_mul_f32_e32 v58, v28, v48
	v_div_scale_f32 v36, s2, v31, v16, v31
	v_fmac_f32_e32 v51, v61, v51
	v_mul_f32_e32 v59, v30, v49
	v_div_scale_f32 v38, s3, v13, v16, v13
	v_fmac_f32_e32 v52, v62, v52
	v_mul_f32_e32 v60, v34, v50
	v_fmac_f32_e32 v56, v66, v56
	v_fma_f32 v66, -v26, v58, v28
	v_mul_f32_e32 v61, v36, v51
	v_fma_f32 v67, -v29, v59, v30
	v_div_scale_f32 v43, null, v16, v16, v22
	v_fma_f32 v63, -v39, v53, 1.0
	v_mul_f32_e32 v62, v38, v52
	v_fma_f32 v68, -v33, v60, v34
	v_fmac_f32_e32 v58, v66, v48
	v_fma_f32 v69, -v35, v61, v36
	v_fmac_f32_e32 v59, v67, v49
	v_div_scale_f32 v40, s4, v23, v16, v23
	v_rcp_f32_e32 v55, v43
	v_fmac_f32_e32 v53, v63, v53
	v_fma_f32 v70, -v37, v62, v38
	v_fmac_f32_e32 v60, v68, v50
	v_fma_f32 v26, -v26, v58, v28
	v_fmac_f32_e32 v61, v69, v51
	v_fma_f32 v28, -v29, v59, v30
	v_div_scale_f32 v46, null, v24, v24, v8
	v_dual_mul_f32 v63, v40, v53 :: v_dual_fmac_f32 v62, v70, v52
	v_fma_f32 v29, -v33, v60, v34
	v_div_fmas_f32 v26, v26, v48, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v35, v61, v36
	v_div_fmas_f32 v28, v28, v49, v59
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v57, v46
	v_fma_f32 v65, -v43, v55, 1.0
	v_fma_f32 v71, -v39, v63, v40
	v_fma_f32 v33, -v37, v62, v38
	v_div_fmas_f32 v29, v29, v50, v60
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v21, v26, v16, v21
	v_div_fmas_f32 v26, v30, v51, v61
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, s6, v22, v16, v22
	v_fmac_f32_e32 v55, v65, v55
	v_fmac_f32_e32 v63, v71, v53
	v_div_fixup_f32 v12, v28, v16, v12
	v_div_fmas_f32 v28, v33, v52, v62
	v_div_fixup_f32 v26, v26, v16, v31
	v_mul_f32_e32 v65, v44, v55
	v_fma_f32 v34, -v39, v63, v40
	v_fma_f32 v31, -v46, v57, 1.0
	v_div_fixup_f32 v13, v28, v16, v13
	v_div_scale_f32 v28, s0, v15, v24, v15
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v29, v29, v16, v32
	v_div_fmas_f32 v30, v34, v53, v63
	v_fma_f32 v32, -v43, v65, v44
	v_dual_mul_f32 v34, v28, v56 :: v_dual_fmac_f32 v57, v31, v57
	v_div_scale_f32 v31, s1, v8, v24, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v32, v55
	v_fma_f32 v32, -v45, v34, v28
	v_div_scale_f32 v47, null, v24, v24, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v35, v31, v57
	v_fma_f32 v37, -v43, v65, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v32, v56
	v_rcp_f32_e32 v33, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v32, -v46, v35, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v45, v34, v28
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v35, v32, v57
	v_div_scale_f32 v41, null, v16, v16, v14
	v_div_scale_f32 v42, s5, v14, v16, v14
	v_fma_f32 v36, -v47, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v54, v41
	v_div_fixup_f32 v23, v30, v16, v23
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v31, -v46, v35, v31
	v_fmac_f32_e32 v33, v36, v33
	v_div_scale_f32 v36, s2, v7, v24, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v64, -v41, v54, 1.0
	v_mul_f32_e32 v32, v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v64, v54
	v_mul_f32_e32 v64, v42, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v41, v64, v42
	v_fmac_f32_e32 v64, v72, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v41, v64, v42
	v_div_fmas_f32 v30, v30, v54, v64
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v37, v37, v55, v65
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v14, v30, v16, v14
	v_div_fmas_f32 v28, v28, v56, v34
	v_fma_f32 v34, -v47, v32, v36
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v37, v16, v22
	v_div_fmas_f32 v31, v31, v57, v35
	v_div_fixup_f32 v15, v28, v24, v15
	v_fmac_f32_e32 v32, v34, v33
	v_div_scale_f32 v28, null, v24, v24, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v8, v31, v24, v8
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v22, -v47, v32, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v31, v28
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v33, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v7, v22, v24, v7
	v_fma_f32 v22, -v28, v31, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v31, v22, v31
	v_div_scale_f32 v38, null, v24, v24, v9
	v_div_scale_f32 v32, null, v24, v24, v6
	v_div_scale_f32 v37, null, v24, v24, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v38
	v_rcp_f32_e32 v35, v32
	v_div_scale_f32 v33, vcc_lo, v9, v24, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v22, s0, v3, v24, v3
	v_fma_f32 v30, -v38, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v32, v35, 1.0
	v_mul_f32_e32 v44, v22, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v30, v39
	v_div_scale_f32 v30, null, v24, v24, v4
	v_fmac_f32_e32 v35, v43, v35
	v_div_scale_f32 v43, s2, v6, v24, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v34, v30
	v_mul_f32_e32 v36, v33, v39
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, s3, v5, v24, v5
	v_mul_f32_e32 v47, v43, v35
	v_fma_f32 v42, -v38, v36, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v48, v45, v41
	v_fma_f32 v40, -v30, v34, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v42, v39
	v_fma_f32 v42, -v28, v44, v22
	v_fmac_f32_e32 v34, v40, v34
	v_div_scale_f32 v40, s1, v4, v24, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v42, v31
	v_fma_f32 v33, -v38, v36, v33
	v_fma_f32 v42, -v32, v47, v43
	v_mul_f32_e32 v46, v40, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v28, v44, v22
	v_fma_f32 v28, -v37, v48, v45
	v_div_fmas_f32 v33, v33, v39, v36
	v_fma_f32 v38, -v30, v46, v40
	v_fmac_f32_e32 v47, v42, v35
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v48, v28, v41
	v_div_fmas_f32 v22, v22, v31, v44
	v_fmac_f32_e32 v46, v38, v34
	v_fma_f32 v28, -v32, v47, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v31, -v37, v48, v45
	v_div_fixup_f32 v3, v22, v24, v3
	v_fma_f32 v30, -v30, v46, v40
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v9, v33, v24, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v30, v30, v34, v46
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v28, v28, v35, v47
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v31, v31, v41, v48
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v4, v30, v24, v4
	v_div_fixup_f32 v6, v28, v24, v6
	v_div_fixup_f32 v5, v31, v24, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v26
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v28, v3
	v_and_b32_e32 v3, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 2, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v26, v15
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v15, 15, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 0x600, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v31, v5
	v_and_b32_e32 v5, 15, v22
	v_and_b32_e32 v21, 15, v26
	v_and_b32_e32 v22, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v8, 11, v0
	v_and_b32_e32 v26, 0x60, v0
	v_lshl_or_b32 v16, v19, 4, v16
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v29, v4
	v_cvt_i32_f32_e32 v30, v6
	v_and_b32_e32 v4, 15, v12
	v_and_b32_e32 v6, 15, v24
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v23
	v_and_b32_e32 v23, 15, v7
	v_and_b32_e32 v24, 15, v9
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 0x3000, v8
	v_xor_b32_e32 v9, v16, v26
	v_lshlrev_b32_e32 v16, 7, v0
	v_lshlrev_b32_e32 v8, 7, v25
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v16, 0x3600, v16, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v29, 15, v29
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, v7, v8, v9
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[21:24] offset:256
	v_xad_u32 v8, v16, v27, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v8
	ds_load_b128 v[21:24], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v30, 15, v30
	v_and_b32_e32 v31, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[12:15]
	ds_store_b128 v7, v[28:31] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v8
	ds_load_b128 v[26:29], v8 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.l, v10.h
	v_mov_b16_e32 v7.l, v11.h
	v_mov_b16_e32 v7.h, v1.l
	v_mov_b16_e32 v8.h, v1.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v25
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v21, 4, v3
	v_lshl_or_b32 v10, v22, 4, v4
	v_lshl_or_b32 v3, v23, 4, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v4, s34, v17
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, v24, 4, v6
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v8, v7, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v4, s0, v[2:3]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v26, 4, v12
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v27, 4, v13
	v_lshl_or_b32 v11, v28, 4, v14
	v_lshl_or_b32 v12, v29, 4, v15
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v8, v8, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v9.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, v2, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v10.l
	v_lshlrev_b16 v0.h, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	v_lshlrev_b16 v2.l, 8, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v8, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v9, s33, 1
	v_cndmask_b32_e32 v1, v6, v7, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v20
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[16:19], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s27, 0xffff
	s_mov_b32 s16, s26
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp56:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 119
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 119
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10336
; TotalNumSgprs: 52
; NumVgprs: 119
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 119
; Occupancy: 12
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp30-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     119
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
