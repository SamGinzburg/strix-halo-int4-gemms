	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s22, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v3, 16, v1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v4, v3, v2
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s9
	s_abs_i32 s9, s2
	s_add_i32 s8, s8, s4
	s_mul_hi_u32 s4, s9, s8
	s_xor_b32 s8, s2, s6
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s13, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s9, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s16, s12, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s15, s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s33, s15, s13
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s33, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s4
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s14, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s16, 0xff
	v_or_b32_e32 v48, s14, v4
	s_mov_b32 s2, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_or_b32_e32 v1, s14, v4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow291
	s_load_b64 s[20:21], s[0:1], 0x20
	v_lshrrev_b32_e32 v47, 1, v0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s1, s12, 1
	s_mov_b32 s12, 0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v1, 3, v0
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v9, 0xe0, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s16, 31
.Ltmp15:
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s2, s3, 6
	v_and_or_b32 v8, 0x70, v47, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s0, 24
	v_add_nc_u32_e32 v50, 0, v4
.Ltmp17:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v10, s2, v1
	v_lshl_or_b32 v4, s15, 8, v9
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v9, 1, v1
	v_add3_u32 v2, s14, v3, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s16, s16, s0
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v51, 0, v8
	s_ashr_i32 s34, s16, 8
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v3, 64, v10
.Ltmp19:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v52, s1, v1
	v_lshl_add_u32 v8, s23, 1, v4
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v53, 2, v1
	v_lshl_or_b32 v1, s3, 7, v9
	v_mul_lo_u32 v2, s34, v2
	s_lshl_b32 s1, s13, 8
	v_cmp_gt_i32_e64 s0, 0x80, v3
	v_subrev_nc_u32_e32 v54, s1, v8
	v_mul_lo_u32 v8, s22, v3
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v3, 0x81, v1
	v_subrev_nc_u32_e32 v55, s1, v4
	s_lshl_b32 s16, s15, 7
	s_lshl_b32 s1, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s15, s12
	v_add_nc_u32_e32 v4, 0x80, v1
	v_lshlrev_b32_e32 v56, 1, v2
	v_mad_u64_u32 v[1:2], null, s23, v1, s[16:17]
	v_mad_u64_u32 v[2:3], null, s23, v3, s[16:17]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[3:4], null, s23, v4, s[16:17]
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v5, 7, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_mul_lo_u32 v4, s22, v10
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v6, 2, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v49, 4, v5
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v5, 2, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v58, s1, v2
	v_subrev_nc_u32_e32 v59, s1, v3
	v_subrev_nc_u32_e32 v61, s1, v1
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v63, 0, v6
	v_add3_u32 v57, v8, s14, v5
	v_add3_u32 v62, v4, s14, v5
	s_mov_b32 s14, s12
	v_lshlrev_b32_e32 v7, 4, v0
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v8, s23, v1
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v64, 0, v7
	v_subrev_nc_u32_e32 v60, s1, v8
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s3, s23, 2
	s_lshl_b32 s22, s22, 7
	s_lshl_b32 s35, s23, 8
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v10
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v9, v56, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s1, s2, v52
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v13, v49, v60
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v60, s35, v60
	s_add_i32 s34, s34, -1
	v_add_nc_u32_e32 v56, 2, v56
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s1, s1, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v65, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v62, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v62, s22, v62
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v17, v9, s[28:31], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v9, v49, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v61, s35, v61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_add_i32 s1, s2, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s2, 0x80
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s1, s1, v52
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s1, s1, s0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v63, v17 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v64, v[9:12]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b128 v64, v[13:16] offset:8192
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v9, 0x80000000, v57, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v57, s22, v57
	s_cmp_lg_u32 s34, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v66, v9, s[28:31], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v9, v49, v59
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v59, s35, v59
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	buffer_load_b128 v[25:28], v9, s[4:7], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v50 offset:16544
	ds_load_u8 v10, v50 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v50 offset:16608
	ds_load_u8 v11, v50 offset:16576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v50 offset:16480
	ds_load_u8 v10, v50 offset:16448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v50 offset:16384
	ds_load_u8 v11, v50 offset:16416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v9, 16, v10
	ds_load_u8 v9, v51 offset:640
	ds_load_u8 v10, v51 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v51 offset:896
	ds_load_u8 v11, v51 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v51 offset:128
	ds_load_u8 v10, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v51 offset:384
	ds_load_u8 v11, v51 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v50 offset:16800
	ds_load_u8 v18, v50 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:16864
	ds_load_u8 v19, v50 offset:16832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v18, 16, v17
	ds_load_u8 v17, v50 offset:16672
	ds_load_u8 v18, v50 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:16736
	ds_load_u8 v19, v50 offset:16704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v18, 16, v17
	ds_load_u8 v17, v51 offset:1664
	ds_load_u8 v18, v51 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:1920
	ds_load_u8 v19, v51 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v51 offset:1152
	ds_load_u8 v19, v51 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v51 offset:1408
	ds_load_u8 v20, v51 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[71:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v50 offset:17056
	ds_load_u8 v18, v50 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:17120
	ds_load_u8 v19, v50 offset:17088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v50 offset:16928
	ds_load_u8 v18, v50 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:16992
	ds_load_u8 v19, v50 offset:16960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	ds_load_u8 v17, v51 offset:2688
	ds_load_u8 v18, v51 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:2944
	ds_load_u8 v19, v51 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v51 offset:2176
	ds_load_u8 v19, v51 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v51 offset:2432
	ds_load_u8 v20, v51 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[73:74], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v50 offset:17312
	ds_load_u8 v18, v50 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:17376
	ds_load_u8 v19, v50 offset:17344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v18, 16, v17
	ds_load_u8 v17, v50 offset:17184
	ds_load_u8 v18, v50 offset:17152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:17248
	ds_load_u8 v19, v50 offset:17216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v18, 16, v17
	ds_load_u8 v17, v51 offset:3712
	ds_load_u8 v18, v51 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:3968
	ds_load_u8 v19, v51 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v51 offset:3200
	ds_load_u8 v19, v51 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v51 offset:3456
	ds_load_u8 v20, v51 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[75:76], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v50 offset:17568
	ds_load_u8 v18, v50 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:17632
	ds_load_u8 v19, v50 offset:17600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	ds_load_u8 v17, v50 offset:17440
	ds_load_u8 v18, v50 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:17504
	ds_load_u8 v19, v50 offset:17472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v18, 16, v17
	ds_load_u8 v17, v51 offset:4736
	ds_load_u8 v18, v51 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:4992
	ds_load_u8 v19, v51 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v51 offset:4224
	ds_load_u8 v19, v51 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v51 offset:4480
	ds_load_u8 v20, v51 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[77:78], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v50 offset:17824
	ds_load_u8 v18, v50 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:17888
	ds_load_u8 v19, v50 offset:17856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v18, 16, v17
	ds_load_u8 v17, v50 offset:17696
	ds_load_u8 v18, v50 offset:17664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:17760
	ds_load_u8 v19, v50 offset:17728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	ds_load_u8 v17, v51 offset:5760
	ds_load_u8 v18, v51 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:6016
	ds_load_u8 v19, v51 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v51 offset:5248
	ds_load_u8 v19, v51 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v51 offset:5504
	ds_load_u8 v20, v51 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[79:80], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v50 offset:18080
	ds_load_u8 v18, v50 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:18144
	ds_load_u8 v19, v50 offset:18112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v18, 16, v17
	ds_load_u8 v17, v50 offset:17952
	ds_load_u8 v18, v50 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:18016
	ds_load_u8 v19, v50 offset:17984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v18, 16, v17
	ds_load_u8 v17, v51 offset:6784
	ds_load_u8 v18, v51 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:7040
	ds_load_u8 v19, v51 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v51 offset:6272
	ds_load_u8 v19, v51 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v51 offset:6528
	ds_load_u8 v20, v51 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[81:82], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v50 offset:18336
	ds_load_u8 v18, v50 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:18400
	ds_load_u8 v19, v50 offset:18368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v18, 16, v17
	ds_load_u8 v17, v50 offset:18208
	ds_load_u8 v18, v50 offset:18176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v50 offset:18272
	ds_load_u8 v19, v50 offset:18240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v18, 16, v17
	ds_load_u8 v17, v51 offset:7808
	ds_load_u8 v18, v51 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:8064
	ds_load_u8 v19, v51 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v51 offset:7296
	ds_load_u8 v19, v51 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v51 offset:7552
	ds_load_u8 v20, v51 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[83:84], v[9:16] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v17, v49, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v58, s35, v58
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	buffer_load_b128 v[67:70], v17, s[4:7], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v17, v51 offset:8832
	ds_load_u8 v18, v51 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:9088
	ds_load_u8 v19, v51 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v18, 16, v17
	ds_load_u8 v17, v51 offset:8320
	ds_load_u8 v18, v51 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v51 offset:8576
	ds_load_u8 v19, v51 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v51 offset:9856
	ds_load_u8 v30, v51 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:10112
	ds_load_u8 v85, v51 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v85, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:9344
	ds_load_u8 v85, v51 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v85, v29, 0xc0c0004
	ds_load_u8 v85, v51 offset:9600
	ds_load_u8 v86, v51 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v85, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[71:72], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v29, v51 offset:10880
	ds_load_u8 v30, v51 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:11136
	ds_load_u8 v71, v51 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v71, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:10368
	ds_load_u8 v71, v51 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v71, v29, 0xc0c0004
	ds_load_u8 v71, v51 offset:10624
	ds_load_u8 v72, v51 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v71, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[73:74], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v29, v51 offset:11904
	ds_load_u8 v30, v51 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:12160
	ds_load_u8 v71, v51 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v71, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:11392
	ds_load_u8 v71, v51 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v71, v29, 0xc0c0004
	ds_load_u8 v71, v51 offset:11648
	ds_load_u8 v72, v51 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v71, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[75:76], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v29, v51 offset:12928
	ds_load_u8 v30, v51 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:13184
	ds_load_u8 v71, v51 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v71, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:12416
	ds_load_u8 v71, v51 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v71, v29, 0xc0c0004
	ds_load_u8 v71, v51 offset:12672
	ds_load_u8 v72, v51 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v71, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[77:78], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v29, v51 offset:13952
	ds_load_u8 v30, v51 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:14208
	ds_load_u8 v71, v51 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v71, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:13440
	ds_load_u8 v71, v51 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v71, v29, 0xc0c0004
	ds_load_u8 v71, v51 offset:13696
	ds_load_u8 v72, v51 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v71, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[79:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v29, v51 offset:14976
	ds_load_u8 v30, v51 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:15232
	ds_load_u8 v71, v51 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v71, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:14464
	ds_load_u8 v71, v51 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v71, v29, 0xc0c0004
	ds_load_u8 v71, v51 offset:14720
	ds_load_u8 v72, v51 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v71, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[81:82], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v29, v51 offset:16000
	ds_load_u8 v30, v51 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:16256
	ds_load_u8 v71, v51 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v71, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:15488
	ds_load_u8 v71, v51 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v71, v29, 0xc0c0004
	ds_load_u8 v71, v51 offset:15744
	ds_load_u8 v72, v51 offset:15616
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v63, v66 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v64, v[25:28]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v64, v[67:70] offset:8192
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v25, v50 offset:16544
	ds_load_u8 v26, v50 offset:16512
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v71, 16, v29
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v50 offset:16608
	ds_load_u8 v27, v50 offset:16576
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[83:84], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v50 offset:16416
	ds_load_u8 v27, v50 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v50 offset:16480
	ds_load_u8 v28, v50 offset:16448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v51 offset:640
	ds_load_u8 v28, v51 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v51 offset:896
	ds_load_u8 v29, v51 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v51 offset:128
	ds_load_u8 v29, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	ds_load_u8 v29, v51 offset:384
	ds_load_u8 v30, v51 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v29, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v27, v50 offset:16800
	ds_load_u8 v28, v50 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v50 offset:16864
	ds_load_u8 v29, v50 offset:16832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v50 offset:16672
	ds_load_u8 v29, v50 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	ds_load_u8 v29, v50 offset:16736
	ds_load_u8 v30, v50 offset:16704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v29, 16, v27
	ds_load_u8 v29, v51 offset:1664
	ds_load_u8 v30, v51 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v51 offset:1920
	ds_load_u8 v66, v51 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v66, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v51 offset:1152
	ds_load_u8 v66, v51 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v66, v29, 0xc0c0004
	ds_load_u8 v66, v51 offset:1408
	ds_load_u8 v67, v51 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v66, 16, v29
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v29, v50 offset:17056
	ds_load_u8 v30, v50 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v50 offset:17120
	ds_load_u8 v66, v50 offset:17088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v66, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v50 offset:16928
	ds_load_u8 v66, v50 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v66, v29, 0xc0c0004
	ds_load_u8 v66, v50 offset:16992
	ds_load_u8 v67, v50 offset:16960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v66, 16, v29
	ds_load_u8 v66, v51 offset:2688
	ds_load_u8 v67, v51 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v51 offset:2944
	ds_load_u8 v68, v51 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v51 offset:2176
	ds_load_u8 v68, v51 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v51 offset:2432
	ds_load_u8 v69, v51 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v68, 16, v66
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[29:30], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v66, v50 offset:17312
	ds_load_u8 v67, v50 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v50 offset:17376
	ds_load_u8 v68, v50 offset:17344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v50 offset:17184
	ds_load_u8 v68, v50 offset:17152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v50 offset:17248
	ds_load_u8 v69, v50 offset:17216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v68, 16, v66
	ds_load_u8 v68, v51 offset:3712
	ds_load_u8 v69, v51 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v51 offset:3968
	ds_load_u8 v70, v51 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v51 offset:3200
	ds_load_u8 v70, v51 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v70, v68, 0xc0c0004
	ds_load_u8 v70, v51 offset:3456
	ds_load_u8 v71, v51 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	v_wmma_i32_16x16x16_iu4 v[9:16], v[68:69], v[66:67], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v68, v50 offset:17568
	ds_load_u8 v69, v50 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v50 offset:17632
	ds_load_u8 v70, v50 offset:17600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v50 offset:17440
	ds_load_u8 v70, v50 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v70, v68, 0xc0c0004
	ds_load_u8 v70, v50 offset:17504
	ds_load_u8 v71, v50 offset:17472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	ds_load_u8 v70, v51 offset:4736
	ds_load_u8 v71, v51 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v51 offset:4992
	ds_load_u8 v72, v51 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v70, v51 offset:4224
	ds_load_u8 v72, v51 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v72, v70, 0xc0c0004
	ds_load_u8 v72, v51 offset:4480
	ds_load_u8 v73, v51 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v72, 16, v70
	v_wmma_i32_16x16x16_iu4 v[9:16], v[70:71], v[68:69], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v70, v50 offset:17824
	ds_load_u8 v71, v50 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v50 offset:17888
	ds_load_u8 v72, v50 offset:17856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v70, v50 offset:17696
	ds_load_u8 v72, v50 offset:17664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v72, v70, 0xc0c0004
	ds_load_u8 v72, v50 offset:17760
	ds_load_u8 v73, v50 offset:17728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v72, 16, v70
	ds_load_u8 v72, v51 offset:5760
	ds_load_u8 v73, v51 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v51 offset:6016
	ds_load_u8 v74, v51 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v72, v51 offset:5248
	ds_load_u8 v74, v51 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v74, v72, 0xc0c0004
	ds_load_u8 v74, v51 offset:5504
	ds_load_u8 v75, v51 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v74, 16, v72
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[70:71], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v72, v50 offset:18080
	ds_load_u8 v73, v50 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v50 offset:18144
	ds_load_u8 v74, v50 offset:18112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v72, v50 offset:17952
	ds_load_u8 v74, v50 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v74, v72, 0xc0c0004
	ds_load_u8 v74, v50 offset:18016
	ds_load_u8 v75, v50 offset:17984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v74, 16, v72
	ds_load_u8 v74, v51 offset:6784
	ds_load_u8 v75, v51 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v51 offset:7040
	ds_load_u8 v76, v51 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v51 offset:6272
	ds_load_u8 v76, v51 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v76, v74, 0xc0c0004
	ds_load_u8 v76, v51 offset:6528
	ds_load_u8 v77, v51 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v76, 16, v74
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[72:73], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v74, v50 offset:18336
	ds_load_u8 v75, v50 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v50 offset:18400
	ds_load_u8 v76, v50 offset:18368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v50 offset:18208
	ds_load_u8 v76, v50 offset:18176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v76, v74, 0xc0c0004
	ds_load_u8 v76, v50 offset:18272
	ds_load_u8 v77, v50 offset:18240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v76, 16, v74
	ds_load_u8 v76, v51 offset:7808
	ds_load_u8 v77, v51 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v51 offset:8064
	ds_load_u8 v78, v51 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v76
	ds_load_u8 v76, v51 offset:7296
	ds_load_u8 v78, v51 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	ds_load_u8 v78, v51 offset:7552
	ds_load_u8 v79, v51 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v78, 16, v76
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[74:75], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v76, v51 offset:8832
	ds_load_u8 v77, v51 offset:8704
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_mul_f32_e32 v9, v65, v9
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v51 offset:9088
	ds_load_u8 v78, v51 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v76
	ds_load_u8 v76, v51 offset:8320
	ds_load_u8 v78, v51 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	ds_load_u8 v78, v51 offset:8576
	ds_load_u8 v79, v51 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v78, 16, v76
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[25:26], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v51 offset:9856
	ds_load_u8 v26, v51 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v51 offset:10112
	ds_load_u8 v76, v51 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v76, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v51 offset:9344
	ds_load_u8 v76, v51 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v76, v25, 0xc0c0004
	ds_load_u8 v76, v51 offset:9600
	ds_load_u8 v77, v51 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v76, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[27:28], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v51 offset:10880
	ds_load_u8 v26, v51 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v51 offset:11136
	ds_load_u8 v27, v51 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v51 offset:10368
	ds_load_u8 v27, v51 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v51 offset:10624
	ds_load_u8 v28, v51 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[29:30], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v51 offset:11904
	ds_load_u8 v26, v51 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v51 offset:12160
	ds_load_u8 v27, v51 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v51 offset:11392
	ds_load_u8 v27, v51 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v51 offset:11648
	ds_load_u8 v28, v51 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[66:67], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v51 offset:12928
	ds_load_u8 v26, v51 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v51 offset:13184
	ds_load_u8 v27, v51 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v51 offset:12416
	ds_load_u8 v27, v51 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v51 offset:12672
	ds_load_u8 v28, v51 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[68:69], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v51 offset:13952
	ds_load_u8 v26, v51 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v51 offset:14208
	ds_load_u8 v27, v51 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v51 offset:13440
	ds_load_u8 v27, v51 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v51 offset:13696
	ds_load_u8 v28, v51 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[70:71], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v51 offset:14976
	ds_load_u8 v26, v51 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v51 offset:15232
	ds_load_u8 v27, v51 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v51 offset:14464
	ds_load_u8 v27, v51 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v51 offset:14720
	ds_load_u8 v28, v51 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[72:73], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v25, v51 offset:16000
	ds_load_u8 v26, v51 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v51 offset:16256
	ds_load_u8 v27, v51 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v51 offset:15488
	ds_load_u8 v27, v51 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v51 offset:15744
	ds_load_u8 v28, v51 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[74:75], v[17:24] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v26, v53, v55
	s_clause 0x7
	buffer_load_u16 v66, v26, s[8:11], 0 offen
	buffer_load_u16 v67, v26, s[8:11], 0 offen offset:4
	buffer_load_u16 v29, v26, s[8:11], 0 offen offset:8
	buffer_load_u16 v30, v26, s[8:11], 0 offen offset:12
	buffer_load_u16 v27, v26, s[8:11], 0 offen offset:16
	buffer_load_u16 v28, v26, s[8:11], 0 offen offset:20
	buffer_load_u16 v25, v26, s[8:11], 0 offen offset:24
	buffer_load_u16 v26, v26, s[8:11], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v55, s3, v55
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v44, v9, v66 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v10, v65, v10 :: v_dual_lshlrev_b32 v67, 16, v67
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v68, v53, v54
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v65, v18
	v_mul_f32_e32 v17, v65, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v12, v65, v12 :: v_dual_fmac_f32 v45, v10, v67
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v69, v68, s[8:11], 0 offen
	buffer_load_u16 v70, v68, s[8:11], 0 offen offset:4
	buffer_load_u16 v71, v68, s[8:11], 0 offen offset:8
	buffer_load_u16 v72, v68, s[8:11], 0 offen offset:12
	buffer_load_u16 v73, v68, s[8:11], 0 offen offset:16
	buffer_load_u16 v74, v68, s[8:11], 0 offen offset:20
	buffer_load_u16 v75, v68, s[8:11], 0 offen offset:24
	buffer_load_u16 v68, v68, s[8:11], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v11, v65, v11
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v20, v65, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v40, v12, v30 :: v_dual_mul_f32 v19, v65, v19
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v39, v11, v29 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v14, v65, v14
	v_mul_f32_e32 v13, v65, v13
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v22, v65, v22 :: v_dual_lshlrev_b32 v25, 16, v25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v21, v65, v21 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v36, v13, v27 :: v_dual_fmac_f32 v35, v14, v28
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v16, v65, v16
	v_mul_f32_e32 v15, v65, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v23, v65, v23 :: v_dual_add_nc_u32 v54, s3, v54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v31, v16, v26 :: v_dual_fmac_f32 v32, v15, v25
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v69
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v70
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v71
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v11, 16, v72
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v73
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v74
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v75
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v42, v20, v11 :: v_dual_lshlrev_b32 v15, 16, v68
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v24, v65, v24 :: v_dual_fmac_f32 v37, v22, v13
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v43, v17, v10 :: v_dual_fmac_f32 v46, v18, v9
	v_dual_fmac_f32 v41, v19, v12 :: v_dual_fmac_f32 v38, v21, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v34, v23, v16 :: v_dual_fmac_f32 v33, v24, v15
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v48
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v43
	v_dual_mul_f32 v4, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.h, 0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v0, 16, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	v_mov_b16_e32 v25.h, v13.h
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	v_mul_f32_e32 v11, 0xbfb8aa3b, v34
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v43
	s_mov_b32 s22, 0x7ffffffe
	v_exp_f32_e32 v4, v5
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v3, v4, v3
	v_dual_mul_f32 v6, 0xbfb8aa3b, v42 :: v_dual_add_f32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v6
	v_exp_f32_e32 v6, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_mul_f32_e32 v12, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v42
	v_ldexp_f32 v6, v6, v7
	v_exp_f32_e32 v7, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_exp_f32_e32 v10, v15
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v15, null, v3, v3, v46
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v5, v7, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v7, v15
	v_div_scale_f32 v16, null, v6, v6, v43
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v10, v10, v14
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v18, vcc_lo, v46, v3, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v9, v16
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_and_b32 v2, 0x78, v47
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v19, -v15, v7, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_fmac_f32 v7, v19, v7 :: v_dual_fmac_f32 v8, 0xbfb8aa3b, v37
	v_fma_f32 v20, -v16, v9, 1.0
	v_div_scale_f32 v19, null, v5, v5, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v23, v18, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v9, v20, v9
	v_div_scale_f32 v21, s0, v43, v6, v43
	v_fma_f32 v27, -v15, v23, v18
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v26, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v24, v21, v9
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v17, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v23, v27, v7
	v_div_scale_f32 v22, null, v10, v10, v42
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v4, v8, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v28, -v16, v24, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v15, v23, v18
	v_rcp_f32_e32 v20, v22
	v_div_scale_f32 v27, s1, v42, v10, v42
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v7, v15, v7, v23
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v3, v7, v3, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v22, v20, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v7, v17, v14
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v3, v45, v3 :: v_dual_fmac_f32 v20, v8, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v24, v28, v9
	v_fma_f32 v28, -v19, v26, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.l, v3.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v15, v27, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v16, v24, v21
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v14, -v22, v15, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v9, v24
	v_fmac_f32_e32 v26, v28, v26
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v9, s0, v41, v5, v41
	v_fmac_f32_e32 v15, v14, v20
	v_div_fixup_f32 v6, v8, v6, v43
	v_div_scale_f32 v14, null, v4, v4, v37
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.h, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v18, -v22, v15, v27
	v_div_fmas_f32 v12, v18, v20, v15
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, s4
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v44, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v10, v12, v10, v42
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v33
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.l, v6.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v8, v9, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v11, v11
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v17, 1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v16, -v19, v8, v9
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v6, v6, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v8, v16, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v16, 1, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v11, v11, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v9, -v19, v8, v9
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v3, v3, v16, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s3
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v6, 1.0, v7
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v7, v14
	v_div_fmas_f32 v8, v9, v26, v8
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v6, v6, v38
	v_div_fixup_f32 v5, v8, v5, v41
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v20, v16
	v_fma_f32 v19, -v14, v7, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v39, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v9, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v7, v19, v7
	v_div_scale_f32 v12, vcc_lo, v37, v4, v37
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v5.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v8, -v16, v20, 1.0
	v_mul_f32_e32 v15, v12, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v9, v9, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v20, v8, v20
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v8, 1.0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v18, -v14, v15, v12
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_mul_f32 v10, v40, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, s0, v38, v6, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v17, null, v8, v8, v33
	v_div_scale_f32 v21, null, v9, v9, v34
	v_fmac_f32_e32 v15, v18, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v22, v17
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.l, v10.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v23, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v14, v15, v12
	v_div_fmas_f32 v7, v12, v7, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v14, -v17, v22, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v12, -v21, v23, 1.0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v4, v7, v4, v37
	v_fmac_f32_e32 v22, v14, v22
	v_div_scale_f32 v14, s1, v33, v8, v33
	v_fmac_f32_e32 v23, v12, v23
	v_div_scale_f32 v12, s2, v34, v9, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v15, v14, v22
	v_mul_f32_e32 v19, v11, v20
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v35, v4
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v7.h, v13.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v18, -v16, v19, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v19, v18, v20 :: v_dual_mul_f32 v18, v12, v23
	v_fma_f32 v11, -v16, v19, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v11, v11, v20, v19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v19, 1, v24
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v20, -v21, v18, v12
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v6, v11, v6, v38
	v_fma_f32 v11, -v17, v15, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v16, 1, v13
	v_mov_b16_e32 v13.l, v4.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v18, v20, v23
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v36, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v15, v11, v22
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v16, v10, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v11, -v21, v18, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v7.l, v6.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v10, -v17, v15, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v12, v5, v19, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v4, v4
	v_and_b32_e32 v7, 1, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v10, v10, v22, v15
	s_mov_b32 vcc_lo, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v11, v23, v18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v5, v6, v7, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v10, v8, v33
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v6.h, v13.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v9, v11, v9, v34
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v11, 1, v13
	v_cndmask_b16 v14.l, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v32, v9
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v9, v4, v11, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v31, v7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v6.l, v8.h
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v13.l, v4.h
	v_cmp_eq_u32_e64 s0, 0, v0
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v5, 1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, 0x7632 :: v_dual_and_b32 v9, 1, v13
	v_cmp_o_f32_e64 s1, v4, v4
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cndmask_b32_e64 v6, 0x3276, v6, s0
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b32_e64 v10, v7, v3, s0
	v_lshl_or_b32 v4, v6, 8, v6
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v5, v1, s23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v4, 0x760076, v4
	v_cndmask_b32_e64 v1, v3, v7, s0
	v_cndmask_b32_e64 v3, v14, v6, s0
	v_lshl_or_b32 v0, v0, 4, v0
	s_mov_b32 s1, 0x76543210
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b32_e64 v6, v6, v14, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v0
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x7060706, v4
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_lshl_or_b32 v8, s33, 7, v2
	s_mov_b32 s23, 0x31027000
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_perm_b32 v0, v1, v10, v7
	v_perm_b32 v2, v3, v6, v7
	v_perm_b32 v1, v1, v10, v4
	v_perm_b32 v3, v3, v6, v4
	v_add_lshl_u32 v4, v8, v5, 1
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 87
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 87
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11368
; TotalNumSgprs: 38
; NumVgprs: 87
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 87
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     87
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
