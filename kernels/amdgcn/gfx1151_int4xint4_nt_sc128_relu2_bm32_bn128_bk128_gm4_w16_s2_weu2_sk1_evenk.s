	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v13, 15, v0
	v_lshrrev_b32_e32 v11, 4, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v12, 3, v0
	v_and_b32_e32 v41, 0xe0, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v9, 2, v13
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v14, 1, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v10, 56, v8
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v39, 64, v12
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v25, 2, v0
	v_lshrrev_b32_e32 v16, 2, v41
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v17, 56, v14
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v46, v0, 4, 1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v42, 16, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v16, v25, v16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v37, 0, v16
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
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
	s_lshl_b32 s17, s16, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s16, s16, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s6, s17
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s16
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s2
	s_abs_i32 s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s19, s18
	v_rcp_iflag_f32_e32 v1, s19
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s27, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	v_readfirstlane_b32 s19, v1
	s_mul_f32 s19, s19, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s19
	s_sub_i32 s19, 0, s18
	s_mul_i32 s19, s19, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s19
	s_xor_b32 s19, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s19, s19, 31
	s_mul_hi_u32 s5, s16, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s20, s5, s18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s26, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s16, s16, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s16, s18
	s_cmp_ge_u32 s16, s18
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s16, s21, s16
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s16, s18
	s_cselect_b32 s5, s20, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s33, s5, s19
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s34, s4, 0x7f
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s33, s19
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s23, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s6
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mul_lo_u32 v3, s23, v11
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s22, s3, 6
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s17
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v1, s22, v9
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s18, s2, 5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s34, 31
.Ltmp15:
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v2, s22, v10
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s2, s18, s23
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v4, s23, v12
	v_mul_lo_u32 v5, s23, v39
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v3, v3, v9, s2
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s6, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s30, s34, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s23, v1
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s23, v2
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v2
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s34, 0x7f
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_mul_i32 s16, s6, s23
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_add_i32 s16, s16, s22
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add_nc_u32_e32 v6, s22, v3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s17, s3, vcc_lo
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v1, v4, v10, s16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v2, v5, v10, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s17
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s25, s25, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v1 :: v_dual_cndmask_b32 v6, 0x80000000, v2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v15, v4, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[4:5], v5, s[24:27], 0 offen
	buffer_load_b64 v[6:7], v6, s[24:27], 0 offen
	v_xor_b32_e32 v8, v8, v17
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v17, 1, v41
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v36, v42, v13
	s_mov_b32 s5, 0
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v38, 0, v8
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v17, v46, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s34, 0xff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v37, v15 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[4:5], v[6:7] offset1:8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[14:15], s[10:11]
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow48
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v24, 2, v17
	v_or_b32_e32 v23, 4, v17
	v_or_b32_e32 v20, 6, v17
	v_or_b32_e32 v18, 8, v17
	v_or_b32_e32 v22, 10, v17
	v_or_b32_e32 v21, 12, v17
	v_or_b32_e32 v19, 14, v17
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v35, 5, v41
	v_or_b32_e32 v15, s18, v36
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v34, 6, v13
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v32, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_ashr_i32 s1, s30, 7
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	.loc	1 197 22 is_stmt 1              ; generate_amdgcn.py:197:22
	s_add_i32 s0, s22, 64
	v_mul_lo_u32 v4, v15, s1
	v_or_b32_e32 v8, s0, v9
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add_nc_u32_e32 v3, s0, v3
	v_or_b32_e32 v5, s6, v17
	v_or_b32_e32 v6, s6, v24
	v_or_b32_e32 v7, s6, v23
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s23, v8
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_or_b32_e32 v26, s6, v20
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 1, v4
	v_or_b32_e32 v27, s6, v18
	v_or_b32_e32 v28, s6, v22
	v_or_b32_e32 v29, s6, v21
	v_or_b32_e32 v8, s6, v19
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v83, v4, s[12:15], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v84, v3, s[8:11], 0 offen
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v2, 64, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v3, 1, v5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v1, 64, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v4, 1, v6
	v_lshlrev_b32_e32 v5, 1, v7
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	v_lshlrev_b32_e32 v6, 1, v26
	v_lshlrev_b32_e32 v7, 1, v27
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v26, 1, v28
	v_lshlrev_b32_e32 v27, 1, v29
	v_lshlrev_b32_e32 v8, 1, v8
	s_clause 0x7
	buffer_load_u16 v85, v3, s[28:31], 0 offen
	buffer_load_u16 v86, v4, s[28:31], 0 offen
	buffer_load_u16 v87, v5, s[28:31], 0 offen
	buffer_load_u16 v88, v6, s[28:31], 0 offen
	buffer_load_u16 v89, v7, s[28:31], 0 offen
	buffer_load_u16 v90, v26, s[28:31], 0 offen
	buffer_load_u16 v91, v27, s[28:31], 0 offen
	buffer_load_u16 v92, v8, s[28:31], 0 offen
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v3, s0, v10
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s23, v3
	v_and_b32_e32 v3, 56, v25
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	v_or3_b32 v31, v35, v3, v34
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_clause 0x1
	buffer_load_b64 v[59:60], v1, s[24:27], 0 offen
	buffer_load_b64 v[61:62], v2, s[24:27], 0 offen
	v_and_or_b32 v2, 0x438, v25, v34
	v_add_nc_u32_e32 v43, 0, v31
	v_xor_b32_e32 v32, 8, v31
	v_xor_b32_e32 v33, 16, v31
	v_xor_b32_e32 v50, 24, v31
	v_xor_b32_e32 v26, 8, v2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v40, 0, v2
	v_xor_b32_e32 v27, 16, v2
	ds_load_b64 v[55:56], v40 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[57:58], v43
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v44, 0, v26
	v_add_nc_u32_e32 v45, 0, v32
	v_xor_b32_e32 v28, 24, v2
	v_add_nc_u32_e32 v47, 0, v27
	ds_load_b64 v[63:64], v44 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[65:66], v45
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v48, 0, v33
	v_xor_b32_e32 v29, 32, v2
	v_xor_b32_e32 v53, 32, v31
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v49, 0, v28
	ds_load_b64 v[67:68], v47 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[69:70], v48
	v_add_nc_u32_e32 v50, 0, v50
	v_xor_b32_e32 v30, 40, v2
	v_xor_b32_e32 v79, 48, v2
	v_xor_b32_e32 v81, 56, v2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_xor_b32_e32 v26, 40, v31
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v51, 0, v29
	v_add_nc_u32_e32 v53, 0, v53
	ds_load_b64 v[71:72], v49 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[73:74], v50
	v_xor_b32_e32 v80, 48, v31
	v_xor_b32_e32 v82, 56, v31
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v52, 0, v30
	v_add_nc_u32_e32 v54, 0, v26
	ds_load_b64 v[75:76], v51 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[77:78], v53
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[57:58], v[55:56], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v55, 0, v79
	v_add_nc_u32_e32 v56, 0, v80
	v_add_nc_u32_e32 v57, 0, v81
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[65:66], v[63:64], v[26:33] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[63:64], v54
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[79:80], v52 offset:8192
	v_add_nc_u32_e32 v58, 0, v82
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[65:66], v56
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[69:70], v[67:68], v[26:33] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[67:68], v55 offset:8192
	ds_load_b64 v[69:70], v57 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[81:82], v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_lt_u32 s34, 0x180
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[73:74], v[71:72], v[26:33] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(10)
	ds_store_b32 v37, v84 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[59:60], v[61:62] offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[77:78], v[75:76], v[26:33] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v71, 16, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[63:64], v[79:80], v[26:33] neg_lo:[1,1,0]
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v63, 16, v83
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v64, 16, v85
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[65:66], v[67:68], v[26:33] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v65, 16, v86
	v_lshlrev_b32_e32 v66, 16, v87
	v_lshlrev_b32_e32 v67, 16, v88
	v_lshlrev_b32_e32 v68, 16, v89
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[81:82], v[69:70], v[26:33] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v69, 16, v90
	v_lshlrev_b32_e32 v70, 16, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_mul_f32_e32 v26, v63, v26
	v_mul_f32_e32 v27, v63, v27
	v_mul_f32_e32 v28, v63, v28
	v_mul_f32_e32 v29, v63, v29
	v_mul_f32_e32 v30, v63, v30
	v_mul_f32_e32 v31, v63, v31
	v_mul_f32_e32 v32, v63, v32
	v_mul_f32_e32 v33, v63, v33
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v26, v64, 0
	v_fma_f32 v27, v27, v65, 0
	v_fma_f32 v28, v28, v66, 0
	v_fma_f32 v29, v29, v67, 0
	v_fma_f32 v30, v30, v68, 0
	v_fma_f32 v31, v31, v69, 0
	v_fma_f32 v32, v32, v70, 0
	v_fma_f32 v33, v33, v71, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.peel.next
	s_lshl_b32 s0, s33, 8
	s_lshl_b32 s5, s7, 1
	v_add3_u32 v13, s18, v42, v13
	v_add3_u32 v41, s5, s0, v41
	s_lshl_b32 s0, s33, 7
	s_lshl_b32 s28, s19, 8
	v_or_b32_e32 v12, s0, v12
	v_or_b32_e32 v42, s0, v39
	s_lshl_b32 s0, s19, 7
	v_subrev_nc_u32_e32 v39, s28, v41
	v_mul_lo_u32 v41, s1, v13
	v_subrev_nc_u32_e32 v12, s0, v12
	v_subrev_nc_u32_e32 v13, s0, v42
	v_add_nc_u32_e32 v42, s18, v11
	v_sub_nc_u32_e32 v59, s23, v9
	v_sub_nc_u32_e32 v60, s23, v10
	v_mad_u64_u32 v[11:12], null, s23, v12, v[10:11]
	v_lshlrev_b32_e32 v46, 1, v46
	s_add_i32 s19, s22, 0x80
	s_add_i32 s22, s1, -2
	s_mov_b32 s28, s16
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	s_delay_alu instid0(VALU_DEP_2)
	v_mad_u64_u32 v[12:13], null, s23, v13, v[10:11]
	v_mad_u64_u32 v[9:10], null, s23, v42, v[9:10]
	v_lshl_add_u32 v10, v41, 1, 2
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v13, v10, s[12:15], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s19, v59
	v_cmp_lt_i32_e64 s0, s19, v60
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s22, s22, -1
	v_add_nc_u32_e32 v10, 2, v10
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v41, s19, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v62, v46, v39
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v42, s19, v11
	.loc	1 218 26 is_stmt 0              ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v61, s19, v12
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s19, s19, 64
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s22, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v103, v41, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v104, v62, s[28:31], 0 offen
	buffer_load_u16 v105, v62, s[28:31], 0 offen offset:4
	buffer_load_u16 v106, v62, s[28:31], 0 offen offset:8
	buffer_load_u16 v107, v62, s[28:31], 0 offen offset:12
	buffer_load_u16 v108, v62, s[28:31], 0 offen offset:16
	buffer_load_u16 v109, v62, s[28:31], 0 offen offset:20
	buffer_load_u16 v110, v62, s[28:31], 0 offen offset:24
	buffer_load_u16 v111, v62, s[28:31], 0 offen offset:28
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v41, 0x80000000, v42, vcc_lo
	s_clause 0x1
	buffer_load_b64 v[41:42], v41, s[24:27], 0 offen
	buffer_load_b64 v[69:70], v61, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[71:72], v40 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[73:74], v43
	ds_load_b64 v[75:76], v45
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[77:78], v44 offset:8192
	ds_load_b64 v[79:80], v47 offset:8192
	ds_load_b64 v[81:82], v49 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[83:84], v48
	ds_load_b64 v[85:86], v50
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[87:88], v51 offset:8192
	ds_load_b64 v[89:90], v52 offset:8192
	ds_load_b64 v[91:92], v55 offset:8192
	ds_load_b64 v[93:94], v57 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[95:96], v53
	ds_load_b64 v[97:98], v54
	ds_load_b64 v[99:100], v56
	ds_load_b64 v[101:102], v58
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(10)
	ds_store_b32 v37, v103 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[41:42], v[69:70] offset1:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v72, 16, v106
	v_lshlrev_b32_e32 v74, 16, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[75:76], v[77:78], v[61:68] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v75, 16, v109
	v_lshlrev_b32_e32 v76, 16, v110
	v_lshlrev_b32_e32 v77, 16, v111
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[61:68], v[83:84], v[79:80], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[85:86], v[81:82], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[95:96], v[87:88], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[97:98], v[89:90], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[99:100], v[91:92], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[101:102], v[93:94], v[61:68] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_mul_f32_e32 v63, v13, v63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v28, v63, v72 :: v_dual_mul_f32 v61, v13, v61
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v62, v13, v62
	v_mul_f32_e32 v64, v13, v64
	v_mul_f32_e32 v65, v13, v65
	v_mul_f32_e32 v66, v13, v66
	v_mul_f32_e32 v67, v13, v67
	v_mul_f32_e32 v13, v13, v68
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v68, 16, v104
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v30, v65, v74 :: v_dual_lshlrev_b32 v71, 16, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v32, v67, v76 :: v_dual_lshlrev_b32 v73, 16, v107
	v_dual_fmac_f32 v26, v61, v68 :: v_dual_add_nc_u32 v39, s5, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v62, v71
	v_fmac_f32_e32 v29, v64, v73
	v_fmac_f32_e32 v31, v66, v75
	v_fmac_f32_e32 v33, v13, v77
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %Flow47
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b64 s[28:29], s[12:13]
.LBB0_8:                                ; %._crit_edge
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s1, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s0, s1, -1
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s1, s18, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_mov_b32 s30, s14
	.loc	1 195 26 is_stmt 0              ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_mov_b32 s31, s15
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_add_lshl_u32 v1, s1, v1, 1
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_mov_b32_e32 v7, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v2, 0
	buffer_load_u16 v8, v1, s[28:31], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v1, 56, v25
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_or_b32 v7, 0x438, v25, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or3_b32 v13, v35, v1, v34
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v3, 0, v7
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v5, v7, 24, 0
	v_xad_u32 v9, v7, 16, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v36, v34 :: v_dual_add_nc_u32 v1, 0, v13
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v11, v7, 8, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v35, v13, 8, 0
	v_xad_u32 v16, v13, 24, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v38, v34
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[1:2], v1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[3:4], v3 offset:8192
	ds_load_b64 v[5:6], v5 offset:8192
	ds_load_b64 v[9:10], v9 offset:8192
	ds_load_b64 v[11:12], v11 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v25, v13, 16, 0
	ds_load_b64 v[42:43], v35
	ds_load_b64 v[44:45], v16
	ds_load_b64 v[46:47], v25
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v16, v7, 32, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v37, v34
	v_mov_b32_e32 v39, v34
	v_mov_b32_e32 v40, v34
	v_mov_b32_e32 v41, v34
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v25, v13, 32, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v50, v7, 40, 0
	ds_load_b64 v[48:49], v16 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v51, v13, 40, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[1:2], v[3:4], v[34:41] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[1:2], v25
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[3:4], v50 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v16, v13, 48, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v25, v7, 48, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[11:12], v[34:41] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[11:12], v51
	ds_load_b64 v[42:43], v16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v7, v7, 56, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v13, v13, 56, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[9:10], v[34:41] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[9:10], v25 offset:8192
	ds_load_b64 v[46:47], v7 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[50:51], v13
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[5:6], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[1:2], v[48:49], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[11:12], v[3:4], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[9:10], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[50:51], v[46:47], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v16, v34
	v_cvt_f32_i32_e32 v1, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v36
	v_cvt_f32_i32_e32 v3, v37
	v_cvt_f32_i32_e32 v4, v38
	v_cvt_f32_i32_e32 v5, v39
	v_cvt_f32_i32_e32 v6, v40
	v_cvt_f32_i32_e32 v7, v41
.LBB0_10:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s7
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s17, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s6, s0
	s_mov_b32 s19, 0x31027000
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v9, s0, v17, 1
	v_add_lshl_u32 v10, s0, v24, 1
	v_add_lshl_u32 v11, s0, v23, 1
	v_add_lshl_u32 v12, s0, v20, 1
	v_add_lshl_u32 v13, s0, v18, 1
	v_add_lshl_u32 v17, s0, v22, 1
	v_add_lshl_u32 v18, s0, v21, 1
	v_add_lshl_u32 v19, s0, v19, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_clause 0x7
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	buffer_load_u16 v12, v12, s[16:19], 0 offen
	buffer_load_u16 v13, v13, s[16:19], 0 offen
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v20.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v20.h, v8.l
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v21, 0x7632 :: v_dual_and_b32 v0, 16, v0
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v8, v15, s7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v22.h, v20.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v16, v16, v20
	v_mul_f32_e32 v2, v2, v20
	v_mul_f32_e32 v3, v3, v20
	v_mul_f32_e32 v6, v6, v20
	v_mul_f32_e32 v1, v1, v20
	v_dual_mul_f32 v4, v4, v20 :: v_dual_mov_b32 v15, 0x5410
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v23.h, v20.l
	v_mov_b16_e32 v24.h, v20.l
	v_mov_b16_e32 v25.h, v20.l
	v_mov_b16_e32 v34.h, v20.l
	v_mov_b16_e32 v35.h, v20.l
	v_mov_b16_e32 v36.h, v20.l
	s_mov_b32 s0, 0x76543210
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v16, v9, v26
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v1, v10, v27
	v_fma_f32 v2, v2, v11, v28
	v_fma_f32 v4, v4, v13, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v26, v9, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v18, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v27, v1, s2
	v_cndmask_b32_e64 v4, v30, v4, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, v9, v9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v12, v29
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v32, v6, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v7, v20
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v29, v3, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v1, v1, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v28, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v3, v3, v3
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v5, v5, v20 :: v_dual_max_f32 v2, v2, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v20.h, v20.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v17, v31
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(0)
	v_dual_max_f32 v2, 0, v2 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v22.l, v9.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v1, 0, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v31, v5, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v19, v33
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v1, v1, v1 :: v_dual_and_b32 v10, 1, v22
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v33, v7, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v4.h
	v_mov_b16_e32 v24.l, v2.h
	v_mov_b16_e32 v20.l, v1.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v3, 0, v3
	v_max_f32_e32 v7, v7, v7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v11, 1, v34
	v_mov_b16_e32 v36.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v7, 0, v7 :: v_dual_and_b32 v12, 1, v20
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x1054, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v1, v12, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v3, v3, v3 :: v_dual_cndmask_b32 v12, 0x3276, v21
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v3.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v5, 0, v5 :: v_dual_and_b32 v0, 1, v23
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v0, v3, v0, 0x7fff
	v_mov_b16_e32 v25.l, v5.h
	v_lshl_or_b32 v3, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v25
	v_add3_u32 v5, v5, v13, 0x7fff
	v_mov_b16_e32 v5.l, v4.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v7, v7, v7 :: v_dual_and_b32 v4, 1, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v13, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v4, 0x7fff
	v_mov_b16_e32 v35.l, v7.h
	v_lshl_or_b32 v4, v12, 8, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v6, v13, 0x7fff
	v_mov_b16_e32 v0.l, v2.h
	v_and_b32_e32 v2, 0x540054, v3
	v_add3_u32 v9, v9, v10, 0x7fff
	v_and_b32_e32 v3, 0x760076, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v2, v2, 4, v2
	v_mov_b16_e32 v1.l, v9.h
	v_and_b32_e32 v9, 1, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v3, 4, v3
	v_and_b32_e32 v2, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v10, v5, v1, vcc_lo
	v_add3_u32 v7, v7, v9, 0x7fff
	v_mov_b16_e32 v7.l, v6.h
	v_cndmask_b32_e32 v1, v1, v5, vcc_lo
	v_and_b32_e32 v3, 0x7060706, v3
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_and_or_b32 v6, 0x78, v14, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_cndmask_b32 v4, v0, v7 :: v_dual_cndmask_b32 v5, v7, v0
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v10, v2
	v_perm_b32 v1, v1, v10, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v4, v5, v2
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v6, v8, 1
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 112
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 112
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4196
; TotalNumSgprs: 37
; NumVgprs: 112
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 112
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     112
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
