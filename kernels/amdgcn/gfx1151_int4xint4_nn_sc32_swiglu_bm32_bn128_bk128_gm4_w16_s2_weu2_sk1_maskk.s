	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s10, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v7, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v28, 15, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v10, 0x17f, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v48, 0, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v26, 0x70, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s5
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s9, s11
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s19, s16, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s16, s16, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s6, s19
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s16
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s18, s6
	s_xor_b32 s16, s2, s6
	s_cvt_f32_u32 s17, s18
	v_rcp_iflag_f32_e32 v1, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s18
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v1, 0x7c, v7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s17, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s17
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_ashr_i32 s17, s16, 31
	s_mul_i32 s20, s5, s18
	s_sub_i32 s16, s10, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s16, s18
	s_cmp_ge_u32 s16, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s16, s21, s16
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s16, s18
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s20, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s20, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s22, s18, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s35, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s22, s6
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s33, s7, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s16, s3, 4
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s19
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s33, v3, v[1:2]
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s27, s2, 5
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v4, s16, v28
	v_or_b32_e32 v8, s16, v3
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_or_b32_e32 v6, s27, v2
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s20, s33, s16
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s26, s22, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s22, s21, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s35, v4
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v4
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s35, v8
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 16, v8
	.loc	1 220 34 is_stmt 1              ; generate_amdgcn.py:220:34
	v_add3_u32 v8, s26, s20, v5
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[4:5], null, v6, s35, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s34, s22, 5
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s21, 31
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v5, s7, v8
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
	v_dual_cndmask_b32 v6, 0x80000000, v8 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v8, v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b32 v6, v6, s[28:31], 0 offen
	buffer_load_b32 v5, v5, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_bfe_i32 v4, v0, 7, 1
	v_or_b32_e32 v46, v26, v28
	s_mov_b32 s6, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v4, 0x88, v4
	v_xor_b32_e32 v10, v4, v10
	v_and_b32_e32 v4, 0x108, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v47, 0, v10
	s_waitcnt vmcnt(2)
	ds_store_b8 v47, v8 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v48, v6, v5 offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v33, v28, 4, v4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v6, v26, v28
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v36, 8, v33
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v29, 0x80, v6
	v_or_b32_e32 v30, 0x100, v6
	v_or_b32_e32 v31, 0x180, v6
	v_or_b32_e32 v32, 0x200, v6
	v_or_b32_e32 v34, 0x280, v6
	v_or_b32_e32 v35, 0x300, v6
	v_or_b32_e32 v37, 0x380, v6
	v_or_b32_e32 v38, 0x400, v6
	v_or_b32_e32 v39, 0x480, v6
	v_or_b32_e32 v40, 0x500, v6
	v_or_b32_e32 v41, 0x580, v6
	v_or_b32_e32 v42, 0x600, v6
	v_or_b32_e32 v43, 0x680, v6
	v_or_b32_e32 v44, 0x700, v6
	v_or_b32_e32 v45, 0x780, v6
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
.LBB0_3:                                ; %Flow190
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v49, 16, v2
	v_bfe_u32 v27, v0, 4, 1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s34, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshl_or_b32 v33, v28, 4, v4
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v4, 1, v3
	v_sub_nc_u32_e32 v50, s35, v3
	v_add3_u32 v3, s27, v49, v28
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v5, 0xe0, v0
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v2, s27, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v3, s34, v3
	v_lshl_or_b32 v5, s18, 8, v5
	s_add_i32 s49, s16, 16
	v_lshl_or_b32 v4, s3, 5, v4
	s_lshl_b32 s6, s17, 8
	v_xor_b32_e32 v36, 8, v33
	v_subrev_nc_u32_e32 v53, s6, v5
	v_or_b32_e32 v29, 0x80, v46
	v_lshlrev_b32_e32 v54, 1, v3
	v_mad_u64_u32 v[2:3], null, s35, v2, s[16:17]
	s_mov_b32 s16, 0
	s_lshl_b32 s17, s17, 7
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v7, s33, v5
	v_add3_u32 v57, v2, v28, 16
	v_or_b32_e32 v30, 0x100, v46
	v_or_b32_e32 v31, 0x180, v46
	v_or_b32_e32 v32, 0x200, v46
	v_subrev_nc_u32_e32 v52, s6, v7
	s_lshl_b32 s6, s18, 7
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v6, 33, v4
	v_add_nc_u32_e32 v4, 32, v4
	v_or_b32_e32 v34, 0x280, v46
	v_or_b32_e32 v35, 0x300, v46
	v_or_b32_e32 v37, 0x380, v46
	v_mul_lo_u32 v6, s7, v6
	v_mul_lo_u32 v4, s7, v4
	v_or_b32_e32 v38, 0x400, v46
	v_or_b32_e32 v39, 0x480, v46
	v_or_b32_e32 v40, 0x500, v46
	v_or_b32_e32 v41, 0x580, v46
	v_or_b32_e32 v42, 0x600, v46
	v_or_b32_e32 v43, 0x680, v46
	v_add3_u32 v5, v6, s6, v1
	v_add3_u32 v1, v4, s6, v1
	v_or_b32_e32 v44, 0x700, v46
	v_or_b32_e32 v45, 0x780, v46
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v58, s49, v28
	v_subrev_nc_u32_e32 v55, s17, v5
	v_subrev_nc_u32_e32 v56, s17, v1
	s_mov_b32 s17, s16
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v2, s17 :: v_dual_lshlrev_b32 v51, 1, v27
	v_dual_mov_b32 v6, s21 :: v_dual_add_nc_u32 v59, 0, v33
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v60, 0, v36
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v61, 0, v46
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_mov_b32_e32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v14, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s0, s1, 1
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s7, 2
	s_lshl_b32 s6, s0, 4
	s_lshl_b32 s48, s7, 5
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v62, s16, v58
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s0, s49, s16
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v88, v54, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s0, v50
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v63, s16, v57
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s0, s35, v62
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v65, v51, v52
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v64, v51, v53
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s6, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v62, 0x80000000, v63, s0
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v63, 0x80000000, v55, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v89, v62, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0xf
	buffer_load_u16 v90, v64, s[40:43], 0 offen offset:4
	buffer_load_u16 v91, v64, s[40:43], 0 offen offset:24
	buffer_load_u16 v92, v64, s[40:43], 0 offen offset:16
	buffer_load_u16 v93, v64, s[40:43], 0 offen offset:8
	buffer_load_u16 v94, v64, s[40:43], 0 offen
	buffer_load_u16 v95, v65, s[40:43], 0 offen offset:4
	buffer_load_u16 v96, v65, s[40:43], 0 offen offset:24
	buffer_load_u16 v97, v65, s[40:43], 0 offen offset:16
	buffer_load_u16 v98, v65, s[40:43], 0 offen offset:8
	buffer_load_u16 v99, v65, s[40:43], 0 offen
	buffer_load_u16 v100, v64, s[40:43], 0 offen offset:12
	buffer_load_u16 v101, v65, s[40:43], 0 offen offset:12
	buffer_load_u16 v102, v64, s[40:43], 0 offen offset:20
	buffer_load_u16 v103, v65, s[40:43], 0 offen offset:20
	buffer_load_u16 v104, v64, s[40:43], 0 offen offset:28
	buffer_load_u16 v105, v65, s[40:43], 0 offen offset:28
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v62, 0x80000000, v56, vcc_lo
	s_clause 0x1
	buffer_load_b32 v106, v62, s[28:31], 0 offen
	buffer_load_b32 v107, v63, s[28:31], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v62, v61 offset:128
	ds_load_u8 v63, v61
	ds_load_u8 v64, v61 offset:640
	ds_load_u8 v65, v61 offset:896
	ds_load_u8 v66, v61 offset:1152
	ds_load_u8 v67, v61 offset:1024
	ds_load_u8 v68, v61 offset:768
	ds_load_u8 v69, v61 offset:512
	ds_load_u8 v70, v61 offset:384
	ds_load_u8 v71, v61 offset:256
	ds_load_u8 v72, v61 offset:1664
	ds_load_u8 v73, v61 offset:1920
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v74, v61 offset:2176
	ds_load_u8 v75, v61 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v76, v61 offset:1792
	ds_load_u8 v77, v61 offset:1536
	ds_load_u8 v82, v61 offset:1408
	ds_load_u8 v83, v61 offset:1280
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v84, v61 offset:2688
	ds_load_u8 v85, v61 offset:2944
	ds_load_u8 v86, v61 offset:3072
	ds_load_u8 v87, v61 offset:2816
	ds_load_u8 v108, v61 offset:2560
	ds_load_u8 v109, v61 offset:2432
	ds_load_u8 v110, v61 offset:2304
	ds_load_u8 v111, v61 offset:3712
	ds_load_u8 v112, v61 offset:3840
	ds_load_u8 v113, v61 offset:3968
	ds_load_u8 v114, v61 offset:3584
	ds_load_u8 v115, v61 offset:3200
	ds_load_u8 v116, v61 offset:3456
	ds_load_u8 v117, v61 offset:3328
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[78:79], v59 offset:4096
	ds_load_b64 v[80:81], v60 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v64, v69, v64, 0xc0c0004
	v_perm_b32 v65, v68, v65, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v63, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v68, v77, v72, 0xc0c0004
	v_perm_b32 v69, v76, v73, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v83, v82, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v72, v108, v84, 0xc0c0004
	v_perm_b32 v73, v87, v85, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v75, v110, v109, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v71, v65, 16, v64
	v_lshl_or_b32 v70, v63, 16, v62
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v76, v114, v111, 0xc0c0004
	v_perm_b32 v77, v112, v113, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v86, v115, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v117, v116, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v83, v69, 16, v68
	v_lshl_or_b32 v82, v67, 16, v66
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v85, v73, 16, v72
	v_lshl_or_b32 v84, v75, 16, v74
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[70:71], v[78:79], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v87, v77, 16, v76
	v_lshl_or_b32 v86, v108, 16, v86
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[78:79], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[82:83], v[80:81], v[62:69] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[86:87], v[80:81], v[70:77] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(18)
	ds_store_b8 v47, v89 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v48, v106, v107 offset1:8
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v79, 16, v94
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v78, 16, v88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v62, v78, v62
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v80, 16, v95
	v_lshlrev_b32_e32 v85, 16, v98
	v_lshlrev_b32_e32 v81, 16, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v25, v62, v79 :: v_dual_lshlrev_b32 v82, 16, v100
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v65, v78, v65 :: v_dual_add_nc_u32 v52, s3, v52
	v_dual_mul_f32 v64, v78, v64 :: v_dual_add_nc_u32 v53, s3, v53
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v73, v78, v73 :: v_dual_add_nc_u32 v54, 2, v54
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v67, v78, v67 :: v_dual_add_nc_u32 v56, s48, v56
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v72, v78, v72 :: v_dual_add_nc_u32 v55, s48, v55
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v63, v78, v63
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v71, v78, v71
	v_mul_f32_e32 v70, v78, v70
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v66, v78, v66
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v75, v78, v75
	v_dual_mul_f32 v74, v78, v74 :: v_dual_lshlrev_b32 v83, 16, v93
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v69, v78, v69
	v_mul_f32_e32 v68, v78, v68
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v77, v78, v77
	v_dual_mul_f32 v76, v78, v76 :: v_dual_lshlrev_b32 v91, 16, v91
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v78, 16, v90
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v21, v64, v83 :: v_dual_lshlrev_b32 v84, 16, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v87, 16, v92
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v23, v71, v80 :: v_dual_lshlrev_b32 v90, 16, v97
	v_dual_fmac_f32 v19, v72, v85 :: v_dual_lshlrev_b32 v92, 16, v104
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v88, 16, v103
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v22, v65, v82 :: v_dual_lshlrev_b32 v93, 16, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v15, v74, v90 :: v_dual_lshlrev_b32 v94, 16, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v24, v63, v78
	v_dual_fmac_f32 v17, v66, v87 :: v_dual_lshlrev_b32 v86, 16, v102
	v_dual_fmac_f32 v14, v68, v91 :: v_dual_fmac_f32 v11, v69, v92
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v10, v70, v81
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v18, v67, v86 :: v_dual_fmac_f32 v13, v77, v93
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v20, v73, v84
	v_fmac_f32_e32 v16, v75, v88
	v_fmac_f32_e32 v12, v76, v94
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v6, v46
.LBB0_7:                                ; %._crit_edge
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_or_b32_e32 v46, v49, v28
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s0, s27, s34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s1, 0
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v2, 0, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s34, v46
	s_add_i32 s0, s0, s1
	v_add_nc_u32_e32 v55, 0, v6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v7, 0, 1, s2
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v45, 0, v45
	v_add_nc_u32_e32 v44, 0, v44
	v_add_nc_u32_e32 v48, 0, v43
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v7
	v_add_nc_u32_e32 v49, 0, v42
	v_add_nc_u32_e32 v41, 0, v41
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v42, 0, v40
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v40, 0, v39
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v43, 0, v38
	v_mov_b32_e32 v6, 0
	buffer_load_u16 v47, v1, s[36:39], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v1, 0, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v1 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_b64 v[1:2], v2 offset:4096
	v_add_nc_u32_e32 v54, 0, v37
	v_add_nc_u32_e32 v50, 0, v35
	v_add_nc_u32_e32 v56, 0, v34
	v_add_nc_u32_e32 v57, 0, v32
	v_add_nc_u32_e32 v52, 0, v31
	v_add_nc_u32_e32 v53, 0, v30
	v_add_nc_u32_e32 v51, 0, v29
	v_mov_b32_e32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v32, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v6, v56
	ds_load_u8 v7, v57
	ds_load_u8 v8, v54
	ds_load_u8 v28, v55
	ds_load_u8 v29, v52
	ds_load_u8 v31, v53
	ds_load_u8 v32, v50
	ds_load_u8 v33, v51
	ds_load_u8 v38, v48
	ds_load_u8 v39, v49
	ds_load_u8 v58, v45
	ds_load_u8 v59, v43
	ds_load_u8 v60, v41
	ds_load_u8 v61, v42
	ds_load_u8 v62, v44
	ds_load_u8 v63, v40
	v_mov_b32_e32 v30, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v34, v30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_mov_b32_e32 v35, v30
	v_mov_b32_e32 v36, v30
	v_mov_b32_e32 v37, v30
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v32, v8, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v28, v33, 0xc0c0004
	v_perm_b32 v28, v31, v29, 0xc0c0004
	v_mov_b32_e32 v31, v30
	v_mov_b32_e32 v32, v30
	v_mov_b32_e32 v33, v30
	v_lshl_or_b32 v7, v7, 16, v6
	v_lshl_or_b32 v6, v28, 16, v8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v28, v62, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v59, v63, 0xc0c0004
	v_perm_b32 v38, v61, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[30:37], v[6:7], v[3:4], v[30:37] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v28, 16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v6, v38, 16, v29
	v_wmma_i32_16x16x16_iu4 v[30:37], v[6:7], v[1:2], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v30, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v6, v34
	v_cvt_f32_i32_e32 v8, v35
	v_cvt_f32_i32_e32 v7, v36
	v_cvt_f32_i32_e32 v28, v37
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v39, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v5, v56 offset:2048
	ds_load_u8 v33, v57 offset:2048
	ds_load_u8 v34, v54 offset:2048
	ds_load_u8 v35, v55 offset:2048
	ds_load_u8 v36, v52 offset:2048
	ds_load_u8 v38, v53 offset:2048
	ds_load_u8 v39, v50 offset:2048
	ds_load_u8 v50, v51 offset:2048
	ds_load_u8 v48, v48 offset:2048
	ds_load_u8 v49, v49 offset:2048
	ds_load_u8 v45, v45 offset:2048
	ds_load_u8 v51, v43 offset:2048
	ds_load_u8 v52, v41 offset:2048
	ds_load_u8 v53, v42 offset:2048
	ds_load_u8 v54, v44 offset:2048
	ds_load_u8 v55, v40 offset:2048
	v_mov_b32_e32 v37, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v40, v37
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v33, v5, 0xc0c0004
	v_mov_b32_e32 v41, v37
	v_mov_b32_e32 v42, v37
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v39, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v35, v50, 0xc0c0004
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v39, v37
	v_mov_b32_e32 v43, v37
	v_lshl_or_b32 v34, v33, 16, v5
	v_lshl_or_b32 v33, v36, 16, v35
	v_mov_b32_e32 v44, v37
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v54, v45, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v51, v55, 0xc0c0004
	v_perm_b32 v45, v53, v52, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[37:44], v[33:34], v[3:4], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v35, 16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v45, 16, v36
	v_wmma_i32_16x16x16_iu4 v[37:44], v[3:4], v[1:2], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v5, v37
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v33, v41
	v_cvt_f32_i32_e32 v35, v42
	v_cvt_f32_i32_e32 v34, v43
	v_cvt_f32_i32_e32 v36, v44
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v27, v26
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s33
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s26, s1
	s_mov_b32 s11, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s7
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v26, 8, v1
	v_or_b32_e32 v27, 10, v1
	v_or_b32_e32 v40, 12, v1
	v_or_b32_e32 v41, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v42, s0, v1, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v43, s0, v2, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v44, s0, v3, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v45, s0, v4, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v4, s1, v4, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v49, s0, v27, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v27, s1, v27, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v48, s0, v26, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_add_lshl_u32 v26, s1, v26, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s8, s14
	v_add_lshl_u32 v51, s0, v41, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v50, s0, v40, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x3
	buffer_load_u16 v52, v1, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	v_add_lshl_u32 v1, s1, v40, 1
	v_add_lshl_u32 v40, s1, v41, 1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v41, 0x80000000, v51, s2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x5
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v51, v1, s[8:11], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	s_clause 0x5
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v53.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v53.h, v47.l
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_or_b32_e32 v1, s27, v46
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	v_mov_b32_e32 v46, 0x5410
	v_dual_mov_b32 v47, 0x7632 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v38, v38, v53
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v30, v30, v53
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v39, v39, v53
	v_mul_f32_e32 v35, v35, v53
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v32, v32, v53
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v37, v37, v53
	v_mul_f32_e32 v33, v33, v53
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v29, v29, v53
	v_mul_f32_e32 v31, v31, v53
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v5, v5, v53
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v8, v53
	v_mul_f32_e32 v7, v7, v53
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.h, v53.l
	v_mov_b16_e32 v54.h, v53.l
	v_mov_b16_e32 v55.h, v53.l
	v_mov_b16_e32 v58.h, v53.l
	v_mov_b16_e32 v57.h, v53.l
	v_mov_b16_e32 v59.h, v53.l
	v_mov_b16_e32 v60.h, v53.l
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v2, 16, v2
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v3, 16, v3
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v5, v52, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v4, v39, v4, v20
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v10, v5, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v20, v4, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v27, v35, v27, v16
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v2, v38, v2, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v16, v27, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v36, v36, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v23, v2, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v6, v53
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v3, v37, v3, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v23, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v28, v28, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v48, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v19, v3, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v29, v42, v25
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v17, v6, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v31, v43, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v29, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v42, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v49
	v_lshlrev_b32_e32 v49, 16, v50
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v16 :: v_dual_lshlrev_b32 v50, 16, v51
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v34, v34, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v30, v44, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v32, v42, v22
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v32, v34, v50, v12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v23, v23
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v24, v31, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v26, v33, v26, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v12, v32, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v19, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v49, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v29, s2
	v_cndmask_b32_e64 v15, v15, v26, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v23, v23, v31
	v_mul_f32_e32 v24, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v14, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v15
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v28, v41, v11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v19, v19, v29
	v_mul_f32_e32 v14, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v20
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v20, 0, 0x42800000, s4
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v12
	v_exp_f32_e32 v17, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v31, null, v19, v19, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v24, v24
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v11, v28, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v15
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v44, v31
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v45, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v17, v17, v28
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v24, v24, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v18, v8, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_add_f32 v24, 1.0, v24
	.loc	1 236 17 is_stmt 1              ; generate_amdgcn.py:236:17
	v_fma_f32 v33, v36, v40, v13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v63, -v31, v44, 1.0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v30, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v20, v20, v32
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v41, null, v24, v24, v12
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v13, v33, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v18
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v29, null, v17, v17, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v41
	v_div_scale_f32 v32, s1, v4, v19, v4
	v_fmac_f32_e32 v44, v63, v44
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v43, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v35, null, v23, v23, v16
	v_mul_f32_e32 v63, v32, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v68, -v41, v51, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v5
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v48, v35
	v_fma_f32 v71, -v31, v63, v32
	v_fmac_f32_e32 v51, v68, v51
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v18, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v62, -v29, v43, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v13
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v36, s3, v16, v23, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v62, v43
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v65, -v35, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v14, v14, v27
	v_ldexp_f32 v18, v18, v30
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, vcc_lo, v2, v17, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v62, v30, v43
	v_fmac_f32_e32 v48, v65, v48
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, null, v14, v14, v5
	v_div_scale_f32 v28, s0, v5, v14, v5
	v_fma_f32 v70, -v29, v62, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v27
	v_mul_f32_e32 v65, v36, v48
	v_div_scale_f32 v34, s2, v3, v18, v3
	v_fmac_f32_e32 v62, v70, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v73, -v35, v65, v36
	v_fma_f32 v61, -v27, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v65, v73, v48
	v_fmac_f32_e32 v42, v61, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v61, v28, v42
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v69, -v27, v61, v28
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v61, v69, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v26, v26, v33
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v33, null, v18, v18, v3
	v_div_scale_f32 v37, null, v20, v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v27, v61, v28
	v_fma_f32 v28, -v29, v62, v30
	v_rcp_f32_e32 v45, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v37
	v_div_scale_f32 v38, s4, v15, v20, v15
	v_div_fmas_f32 v28, v28, v43, v62
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v27, v27, v42, v61
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v28, v17, v2
	v_fma_f32 v64, -v33, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v37, v49, 1.0
	v_div_fixup_f32 v5, v27, v14, v5
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v2, v10, v2 :: v_dual_fmac_f32 v45, v64, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v49, v66, v49
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v5, v25, v5 :: v_dual_add_f32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_fmac_f32 v63, v71, v44 :: v_dual_mul_f32 v64, v34, v45
	v_mul_f32_e32 v66, v38, v49
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v54.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v39, null, v26, v26, v13
	v_div_scale_f32 v40, s5, v13, v26, v13
	v_fma_f32 v72, -v33, v64, v34
	v_rcp_f32_e32 v50, v39
	v_fma_f32 v74, -v37, v66, v38
	v_fma_f32 v29, -v31, v63, v32
	v_fma_f32 v31, -v35, v65, v36
	v_fmac_f32_e32 v64, v72, v45
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.l, v5.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v66, v74, v49
	v_div_fmas_f32 v29, v29, v44, v63
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v30, -v33, v64, v34
	v_fma_f32 v67, -v39, v50, 1.0
	v_fma_f32 v32, -v37, v66, v38
	v_div_fixup_f32 v4, v29, v19, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v17, v30, v45, v64
	v_fmac_f32_e32 v50, v67, v50
	s_mov_b32 vcc_lo, s3
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v22, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v14, v31, v48, v65
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v67, v40, v50
	v_div_fmas_f32 v10, v32, v49, v66
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v14, v23, v16
	v_div_fixup_f32 v3, v17, v18, v3
	v_fma_f32 v75, -v39, v67, v40
	v_div_fixup_f32 v10, v10, v20, v15
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v8, v8, v14 :: v_dual_mul_f32 v3, v21, v3
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v67, v75, v50
	v_div_scale_f32 v52, s6, v12, v24, v12
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v14, 1, v54
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v6, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v33, -v39, v67, v40
	v_mul_f32_e32 v68, v52, v51
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v10, 1, v55
	v_mov_b16_e32 v58.l, v8.h
	v_mov_b16_e32 v57.l, v3.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v17, v33, v50, v67
	v_fma_f32 v76, -v41, v68, v52
	s_mov_b32 vcc_lo, s6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v5, v5, v10, 0x7fff
	v_and_b32_e32 v10, 1, v58
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v13, v17, v26, v13
	v_fmac_f32_e32 v68, v76, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v8, v8
	v_mov_b16_e32 v59.l, v6.h
	v_add3_u32 v8, v8, v10, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v11, v13
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v34, -v41, v68, v52
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v13, 1, v56
	v_cmp_o_f32_e64 s1, v4, v4
	v_mov_b16_e32 v53.l, v11.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v34, v51, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v2, v14, 0x7fff
	v_and_b32_e32 v14, 1, v59
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v12, v16, v24, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cmp_o_f32_e64 s4, v6, v6
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v7, v7, v12 :: v_dual_and_b32 v12, 1, v57
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s5, v11, v11
	v_cndmask_b32_e32 v8, 0x1054, v46, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v47, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v60.l, v7.h
	v_add3_u32 v0, v3, v12, 0x7fff
	v_and_b32_e32 v3, 1, v53
	v_add3_u32 v4, v4, v13, 0x7fff
	v_add3_u32 v6, v6, v14, 0x7fff
	v_and_b32_e32 v12, 1, v60
	v_cmp_o_f32_e64 s0, v7, v7
	v_add3_u32 v3, v11, v3, 0x7fff
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v10, v10, 8, v10
	v_add3_u32 v7, v7, v12, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v4.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s5
	v_and_b32_e32 v3, 0x540054, v8
	v_and_b32_e32 v8, 0x760076, v10
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s0
	v_cndmask_b32_e32 v6, v5, v2, vcc_lo
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v7, v1, s7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e32 v1, v2, v5, vcc_lo
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v8, 4, v8
	v_cndmask_b32_e32 v5, v4, v0, vcc_lo
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v5, v5, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_and_or_b32 v8, 0x78, v9, s26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s26, s10
	v_perm_b32 v0, v1, v6, v2
	v_perm_b32 v1, v1, v6, v3
	v_perm_b32 v2, v5, v4, v2
	v_perm_b32 v3, v5, v4, v3
	v_add_lshl_u32 v4, v8, v7, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 118
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 118
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6556
; TotalNumSgprs: 52
; NumVgprs: 118
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 118
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     118
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
