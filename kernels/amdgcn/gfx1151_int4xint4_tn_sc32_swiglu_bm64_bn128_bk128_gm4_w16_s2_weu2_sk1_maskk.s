	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v17, 1, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v9, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v43, 0x70, v17
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v62, 0, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v63, v62, v9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s18, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
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
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s16, s6, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s6, s6, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s17, s7, 4
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s22, s17
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s7, s22
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s10, 0, s22
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s7, s10
	s_add_i32 s7, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s6, s7
	s_xor_b32 s7, s2, s17
	s_mul_i32 s10, s5, s22
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s6, s6, s10
	s_add_i32 s23, s5, 1
	s_sub_i32 s24, s6, s22
	s_cmp_ge_u32 s6, s22
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s23, s5
	s_cselect_b32 s6, s24, s6
	s_add_i32 s23, s5, 1
	s_cmp_ge_u32 s6, s22
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s22, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s23, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s23, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s24, s4, 31
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s30, s5, s7
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s23
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s24, 31
.Ltmp15:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s26, s30, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s6, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s26, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s17, s24, s4
.Ltmp19:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v7
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s35, s19, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s26, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s17, 5
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s24, 31
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s25, s35, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s23, s18, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v2, 31, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s24, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 2, v2
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s18, v3, v[1:2]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s23, s34, v4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s23, s11
	.loc	1 220 34 is_stmt 0              ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s33, s25, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 214 26 is_stmt 1              ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v6, s19, v5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b32 v7, v5, s[20:23], 0 offen
	buffer_load_b32 v8, v6, s[20:23], 0 offen
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v5, 15, v0
	v_lshrrev_b32_e32 v6, 4, v0
	s_mov_b32 s22, -1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v61, v43, v5
	v_and_b32_e32 v6, 16, v6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v62, v4 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v63, v7, v8 offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v4, v43, v5
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b64 s[26:27], s[10:11]
	s_mov_b32 s22, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v45, 0x80, v4
	v_or_b32_e32 v46, 0x100, v4
	v_or_b32_e32 v47, 0x180, v4
	v_or_b32_e32 v48, 0x200, v4
	v_or_b32_e32 v49, 0x280, v4
	v_or_b32_e32 v50, 0x300, v4
	v_or_b32_e32 v51, 0x380, v4
	v_or_b32_e32 v52, 0x400, v4
	v_or_b32_e32 v53, 0x480, v4
	v_or_b32_e32 v54, 0x500, v4
	v_or_b32_e32 v55, 0x580, v4
	v_or_b32_e32 v56, 0x600, v4
	v_or_b32_e32 v57, 0x680, v4
	v_or_b32_e32 v58, 0x700, v4
	v_or_b32_e32 v59, 0x780, v4
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
.LBB0_3:                                ; %Flow366
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[16:17], s[0:1], 0x20
	v_or_b32_e32 v18, v6, v5
	v_bfe_u32 v44, v0, 4, 1
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v60, 0, v18
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v36, 0
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_add_i32 s0, s5, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v4, 0xe0, v0
	s_mov_b32 s40, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add3_u32 v5, s34, v6, v5
	s_mov_b32 s41, s40
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v4, s30, 8, v4
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_lshlrev_b32_e32 v7, 1, v3
	v_add_nc_u32_e32 v6, s35, v4
	s_lshl_b32 s22, s7, 8
	s_add_i32 s6, s6, 16
	v_sub_nc_u32_e32 v64, s31, v3
	v_lshl_or_b32 v7, s3, 5, v7
	v_subrev_nc_u32_e32 v66, s22, v6
	v_add_nc_u32_e32 v9, 32, v5
	v_add_nc_u32_e32 v3, s6, v3
	v_mul_lo_u32 v5, s5, v5
	v_add_nc_u32_e32 v8, 33, v7
	v_add_nc_u32_e32 v6, 32, v7
	s_lshl_b32 s23, s30, 7
	v_mul_lo_u32 v3, s18, v3
	v_subrev_nc_u32_e32 v67, s22, v4
	v_mul_lo_u32 v7, s19, v8
	v_mul_lo_u32 v6, s19, v6
	v_mul_lo_u32 v8, s5, v9
	s_lshl_b32 s22, s7, 7
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v69, 1, v5
	v_add3_u32 v72, v3, s34, v1
	v_or_b32_e32 v45, 0x80, v61
	v_add3_u32 v4, v7, s23, v2
	v_add3_u32 v2, v6, s23, v2
	v_lshlrev_b32_e32 v68, 1, v8
	v_or_b32_e32 v46, 0x100, v61
	v_or_b32_e32 v47, 0x180, v61
	v_subrev_nc_u32_e32 v70, s22, v4
	v_subrev_nc_u32_e32 v71, s22, v2
	v_mov_b32_e32 v1, s40
	v_or_b32_e32 v48, 0x200, v61
	v_or_b32_e32 v49, 0x280, v61
	v_or_b32_e32 v50, 0x300, v61
	v_or_b32_e32 v51, 0x380, v61
	v_or_b32_e32 v52, 0x400, v61
	v_or_b32_e32 v53, 0x480, v61
	v_or_b32_e32 v54, 0x500, v61
	v_or_b32_e32 v55, 0x580, v61
	v_or_b32_e32 v56, 0x600, v61
	v_or_b32_e32 v57, 0x680, v61
	v_or_b32_e32 v58, 0x700, v61
	v_or_b32_e32 v59, 0x780, v61
	v_dual_mov_b32 v4, s43 :: v_dual_lshlrev_b32 v65, 1, v44
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v73, 0, v61
	v_dual_mov_b32 v2, s41 :: v_dual_mov_b32 v3, s42
	v_dual_mov_b32 v5, s44 :: v_dual_mov_b32 v6, s45
	v_dual_mov_b32 v7, s46 :: v_dual_mov_b32 v8, s47
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[12:13]
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s1, s0, 1
	s_lshl_b32 s3, s19, 2
	s_lshl_b32 s7, s19, 5
	s_lshl_b32 s18, s18, 4
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s6, v64
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v75, v69, s[36:39], 0 offen
	buffer_load_u16 v76, v68, s[36:39], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s1, s1, -1
	s_add_i32 s6, s6, 16
	v_add_nc_u32_e32 v68, 2, v68
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s1, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v74, 0x80000000, v72, vcc_lo
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v77, v60 offset:4416
	ds_load_u8 v78, v60 offset:4352
	ds_load_u8 v79, v60 offset:4544
	ds_load_u8 v80, v60 offset:4480
	ds_load_u8 v81, v60 offset:4160
	ds_load_u8 v82, v60 offset:4096
	ds_load_u8 v83, v60 offset:4288
	ds_load_u8 v84, v60 offset:4224
	ds_load_u8 v85, v60 offset:4320
	ds_load_u8 v86, v60 offset:4256
	ds_load_u8 v87, v60 offset:4192
	ds_load_u8 v88, v60 offset:4128
	ds_load_u8 v89, v73 offset:640
	ds_load_u8 v90, v73 offset:896
	ds_load_u8 v91, v73 offset:768
	ds_load_u8 v92, v73 offset:512
	ds_load_u8 v93, v73 offset:128
	ds_load_u8 v94, v73 offset:384
	ds_load_u8 v95, v73 offset:256
	ds_load_u8 v96, v73
	ds_load_u8 v97, v60 offset:4928
	ds_load_u8 v98, v60 offset:4864
	ds_load_u8 v99, v60 offset:5056
	ds_load_u8 v100, v60 offset:4992
	ds_load_u8 v101, v60 offset:4672
	ds_load_u8 v102, v60 offset:4608
	ds_load_u8 v103, v60 offset:4800
	ds_load_u8 v104, v60 offset:4736
	ds_load_u8 v105, v73 offset:1664
	ds_load_u8 v106, v73 offset:1920
	ds_load_u8 v107, v73 offset:1792
	ds_load_u8 v108, v73 offset:1536
	ds_load_u8 v109, v60 offset:4576
	ds_load_u8 v110, v60 offset:4512
	ds_load_u8 v111, v60 offset:4448
	ds_load_u8 v112, v60 offset:4384
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v73 offset:1152
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v73 offset:1280
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v60 offset:5088
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v60 offset:5024
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v89, v92, v89, 0xc0c0004
	ds_load_u8 v92, v60 offset:4960
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v60 offset:4896
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v93, v96, v93, 0xc0c0004
	ds_load_u8 v96, v60 offset:4832
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v60 offset:4768
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v60 offset:4704
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v60 offset:4640
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v73 offset:1408
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v112, v73 offset:2176
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v109, v110, v109, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v110, v73 offset:2304
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v113, v88, v87, 0xc0c0004
	v_perm_b32 v114, v86, v85, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v85, v73 offset:2432
	ds_load_u8 v87, v73 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v102, v73 offset:1024
	v_perm_b32 v105, v108, v105, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v108, v73 offset:2688
	ds_load_u8 v88, v73 offset:3840
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v106, v107, v106, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v107, v73 offset:2944
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v91, v91, v92, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v92, v73 offset:3584
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v98, v100, v98, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v100, v73 offset:3200
	ds_load_u8 v86, v73 offset:3712
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v80, v80, v104, 0xc0c0004
	v_perm_b32 v82, v84, v82, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v84, v73 offset:3968
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v95, v95, v96, 0xc0c0004
	v_lshl_or_b32 v116, v106, 16, v105
	v_lshl_or_b32 v118, v99, 16, v97
	v_lshl_or_b32 v117, v103, 16, v101
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v78, v102, v78, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v102, v73 offset:2816
	ds_load_u8 v104, v73 offset:2560
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v115, v80, 16, v78
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v88, v84, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v88, v90, 16, v89
	v_lshl_or_b32 v90, v109, 16, v111
	v_lshl_or_b32 v89, v114, 16, v113
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v102, v102, v107, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v104, v108, 0xc0c0004
	ds_load_u8 v104, v73 offset:3328
	v_perm_b32 v107, v87, v112, 0xc0c0004
	v_perm_b32 v108, v110, v85, 0xc0c0004
	ds_load_u8 v85, v73 offset:3456
	ds_load_u8 v87, v73 offset:3072
	v_perm_b32 v110, v92, v86, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v86, v79, 16, v77
	v_lshl_or_b32 v92, v82, 16, v91
	v_lshl_or_b32 v91, v95, 16, v98
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v120, v102, 16, v96
	v_lshl_or_b32 v119, v108, 16, v107
	v_lshl_or_b32 v122, v84, 16, v110
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[119:120], v[89:90], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v104, v104, v85, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v87, v100, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v87, v94, 16, v93
	v_lshl_or_b32 v85, v83, 16, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v121, v104, 16, v100
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[77:84], v[87:88], v[89:90], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[107:114], v[121:122], v[91:92], v[107:114] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[77:84], v[115:116], v[91:92], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v97, v109
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v106, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v105, v78
	v_cvt_f32_i32_e32 v103, v79
	v_cvt_f32_i32_e32 v101, v80
	v_cvt_f32_i32_e32 v90, v81
	v_cvt_f32_i32_e32 v93, v82
	v_cvt_f32_i32_e32 v89, v83
	v_cvt_f32_i32_e32 v91, v84
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[77:84], v[87:88], v[85:86], v[1:8] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v100, v110
	v_cvt_f32_i32_e32 v95, v111
	v_cvt_f32_i32_e32 v98, v112
	v_cvt_f32_i32_e32 v94, v113
	v_cvt_f32_i32_e32 v96, v114
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[77:84], v[115:116], v[117:118], v[77:84] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[109:116], v[119:120], v[85:86], v[1:8] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v92, v107
	v_cvt_f32_i32_e32 v99, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v104, v79
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[109:116], v[121:122], v[117:118], v[109:116] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v79, v84
	v_cvt_f32_i32_e32 v108, v77
	v_cvt_f32_i32_e32 v107, v78
	v_cvt_f32_i32_e32 v102, v80
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v84, v109
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v109, v65, v67
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v78, v81
	v_cvt_f32_i32_e32 v80, v82
	v_cvt_f32_i32_e32 v77, v83
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v87, v110
	v_cvt_f32_i32_e32 v85, v111
	v_cvt_f32_i32_e32 v88, v112
	v_cvt_f32_i32_e32 v82, v113
	v_cvt_f32_i32_e32 v86, v114
	v_cvt_f32_i32_e32 v81, v115
	v_cvt_f32_i32_e32 v83, v116
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v110, v109, s[28:31], 0 offen
	buffer_load_u16 v111, v109, s[28:31], 0 offen offset:4
	buffer_load_u16 v112, v109, s[28:31], 0 offen offset:8
	buffer_load_u16 v113, v109, s[28:31], 0 offen offset:12
	buffer_load_u16 v114, v109, s[28:31], 0 offen offset:16
	buffer_load_u16 v115, v109, s[28:31], 0 offen offset:20
	buffer_load_u16 v116, v109, s[28:31], 0 offen offset:24
	buffer_load_u16 v109, v109, s[28:31], 0 offen offset:28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v75, 16, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v104, v75, v104
	v_mul_f32_e32 v102, v75, v102
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v87, v75, v87
	v_mul_f32_e32 v84, v75, v84
	v_mul_f32_e32 v88, v75, v88
	v_mul_f32_e32 v85, v75, v85
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v80, v75, v80
	v_mul_f32_e32 v78, v75, v78
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v86, v75, v86
	v_mul_f32_e32 v82, v75, v82
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v79, v75, v79
	v_mul_f32_e32 v77, v75, v77
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v83, v75, v83 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v76, 16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v106, v76, v106
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v42, v106, v110
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v106, v75, v108
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v106, v110
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v105, v76, v105 :: v_dual_lshlrev_b32 v106, 16, v111
	v_mul_f32_e32 v101, v76, v101
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v103, v76, v103 :: v_dual_lshlrev_b32 v108, 16, v113
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v99, v76, v99
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v39, v105, v106
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v105, v75, v107
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v107, 16, v112
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v35, v101, v108
	v_dual_fmac_f32 v31, v102, v108 :: v_dual_mul_f32 v90, v76, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v37, v105, v106 :: v_dual_fmac_f32 v34, v103, v107
	v_dual_fmac_f32 v30, v104, v107 :: v_dual_add_nc_u32 v105, v65, v66
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x5
	buffer_load_u16 v104, v105, s[28:31], 0 offen offset:4
	buffer_load_u16 v107, v105, s[28:31], 0 offen offset:8
	buffer_load_u16 v103, v105, s[28:31], 0 offen
	buffer_load_u16 v101, v105, s[28:31], 0 offen offset:12
	buffer_load_u16 v102, v105, s[28:31], 0 offen offset:16
	buffer_load_u16 v108, v105, s[28:31], 0 offen offset:20
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v92, v76, v92
	v_mul_f32_e32 v100, v76, v100
	v_mul_f32_e32 v97, v76, v97
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v93, v76, v93
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v98, v76, v98
	v_mul_f32_e32 v95, v76, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v91, v76, v91
	v_mul_f32_e32 v89, v76, v89
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v96, v76, v96
	v_mul_f32_e32 v76, v76, v94
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v94, v105, s[28:31], 0 offen offset:28
	buffer_load_u16 v105, v105, s[28:31], 0 offen offset:24
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v106, 0x80000000, v71 :: v_dual_mul_f32 v75, v75, v81
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v66, s3, v66
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v81, 0x80000000, v70, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b32 v106, v106, s[20:23], 0 offen
	buffer_load_b32 v81, v81, s[20:23], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v62, v74 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v63, v106, v81 offset1:8
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v105, 16, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v13, v75, v105 :: v_dual_lshlrev_b32 v112, 16, v116
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v11, v77, v112 :: v_dual_lshlrev_b32 v110, 16, v115
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v72, s18, v72
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v10, v89, v112 :: v_dual_add_nc_u32 v71, s7, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v80, v110
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v36, v87, v104 :: v_dual_lshlrev_b32 v107, 16, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v111, 16, v114
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v27, v93, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v28, v85, v107 :: v_dual_lshlrev_b32 v101, 16, v101
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v22, v78, v111
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v26, v90, v111 :: v_dual_add_nc_u32 v69, 2, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v29, v88, v101
	v_dual_fmac_f32 v20, v82, v102 :: v_dual_lshlrev_b32 v109, 16, v109
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v70, s7, v70
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v38, v99, v104 :: v_dual_fmac_f32 v33, v100, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v12, v79, v109
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v19, v84, v103 :: v_dual_lshlrev_b32 v108, 16, v108
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v9, v91, v109 :: v_dual_lshlrev_b32 v94, 16, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v40, v92, v103 :: v_dual_fmac_f32 v25, v98, v108
	v_dual_fmac_f32 v21, v86, v108 :: v_dual_fmac_f32 v14, v83, v94
	v_dual_fmac_f32 v32, v97, v107 :: v_dual_fmac_f32 v15, v76, v105
	v_fmac_f32_e32 v24, v95, v102
	v_fmac_f32_e32 v16, v96, v94
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v4, v61
.LBB0_7:                                ; %._crit_edge
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_or_b32_e32 v7, 32, v18
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s5, v18
	s_mul_i32 s3, s34, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s0, 0
	v_add_nc_u32_e32 v107, 0, v57
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s5, v7
	s_add_i32 s3, s3, s1
	v_add_nc_u32_e32 v108, 0, v56
	v_add_nc_u32_e32 v101, 0, v55
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_add_nc_u32_e32 v102, 0, v54
	v_add_nc_u32_e32 v104, 0, v53
	v_add_nc_u32_e32 v105, 0, v52
	v_add_lshl_u32 v2, s3, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v116, 0, v51
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v112, 0, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v118, 0, v49
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v119, 0, v48
	s_clause 0x1
	buffer_load_u16 v8, v1, s[24:27], 0 offen
	buffer_load_u16 v61, v2, s[24:27], 0 offen
	.loc	1 214 26 is_stmt 1              ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v97, v60 offset:4096
	ds_load_u8_d16 v62, v60 offset:4128
	ds_load_u8_d16 v98, v60 offset:4160
	ds_load_u8_d16 v99, v60 offset:4224
	ds_load_u8_d16 v100, v60 offset:4288
	ds_load_u8_d16 v75, v60 offset:4320
	ds_load_u8_d16 v77, v60 offset:4256
	ds_load_u8_d16 v79, v60 offset:4192
	ds_load_u8_d16 v106, v60 offset:4352
	ds_load_u8_d16 v109, v60 offset:4416
	ds_load_u8_d16 v110, v60 offset:4480
	ds_load_u8_d16 v111, v60 offset:4544
	ds_load_u8_d16 v81, v60 offset:4576
	ds_load_u8_d16 v82, v60 offset:4512
	ds_load_u8_d16 v85, v60 offset:4448
	ds_load_u8_d16 v86, v60 offset:4384
	ds_load_u8_d16 v89, v60 offset:4608
	ds_load_u8_d16 v90, v60 offset:4672
	ds_load_u8_d16 v91, v60 offset:4736
	ds_load_u8_d16 v92, v60 offset:4800
	ds_load_u8_d16 v74, v60 offset:4832
	ds_load_u8_d16 v76, v60 offset:4768
	ds_load_u8_d16 v78, v60 offset:4704
	ds_load_u8_d16 v80, v60 offset:4640
	ds_load_u8_d16 v93, v60 offset:4864
	ds_load_u8_d16 v94, v60 offset:4928
	ds_load_u8_d16 v95, v60 offset:4992
	ds_load_u8_d16 v96, v60 offset:5056
	ds_load_u8_d16 v83, v60 offset:5088
	ds_load_u8_d16 v84, v60 offset:5024
	ds_load_u8_d16 v87, v60 offset:4960
	ds_load_u8_d16 v88, v60 offset:4896
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v103, 0, v59
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v59, 0, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v114, 0, v47
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v115, 0, v46
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v113, 0, v45
	v_add_nc_u32_e32 v117, 0, v4
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v47, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v1, v106, v109, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v2, v110, v111, 0xc0c0004
	v_perm_b32 v3, v99, v100, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v97, v98, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v1, v3, 16, v1
	ds_load_u8 v3, v118
	ds_load_u8 v4, v119
	v_dual_mov_b32 v70, s11 :: v_dual_mov_b32 v69, s10
	v_dual_mov_b32 v68, s9 :: v_dual_mov_b32 v67, s8
	v_dual_mov_b32 v66, s7 :: v_dual_mov_b32 v65, s6
	v_dual_mov_b32 v64, s5 :: v_dual_mov_b32 v63, s4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v116
	ds_load_u8 v5, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v3, v113
	ds_load_u8 v5, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v114
	ds_load_u8 v6, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v91, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[50:57], v[3:4], v[1:2], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v1, v93, v94, 0xc0c0004
	v_perm_b32 v2, v95, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v89, v90, 0xc0c0004
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v107
	ds_load_u8 v6, v108
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v103
	ds_load_u8 v45, v59
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v45, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v104
	ds_load_u8 v45, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v45, v5, 0xc0c0004
	ds_load_u8 v45, v101
	ds_load_u8 v46, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v45, 16, v5
	v_perm_b32 v45, v77, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[50:57], v[5:6], v[1:2], v[50:57] neg_lo:[1,1,0]
	v_perm_b32 v1, v86, v85, 0xc0c0004
	v_perm_b32 v2, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v48, v50
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v62, v79, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v50, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v47, v54
	v_cvt_f32_i32_e32 v49, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v1, v45, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[3:4], v[1:2], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v1, v88, v87, 0xc0c0004
	v_perm_b32 v2, v84, v83, 0xc0c0004
	v_perm_b32 v3, v76, v74, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v80, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[63:70], v[5:6], v[1:2], v[63:70] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v1, v56
	v_cvt_f32_i32_e32 v2, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v63
	v_cvt_f32_i32_e32 v58, v64
	v_cvt_f32_i32_e32 v55, v65
	v_cvt_f32_i32_e32 v57, v66
	v_cvt_f32_i32_e32 v53, v67
	v_cvt_f32_i32_e32 v54, v68
	v_cvt_f32_i32_e32 v3, v69
	v_cvt_f32_i32_e32 v4, v70
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v45, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v5, v118 offset:2048
	ds_load_u8 v6, v119 offset:2048
	ds_load_u8 v45, v116 offset:2048
	ds_load_u8 v46, v117 offset:2048
	ds_load_u8 v60, v114 offset:2048
	ds_load_u8 v63, v115 offset:2048
	ds_load_u8 v64, v112 offset:2048
	ds_load_u8 v65, v113 offset:2048
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v66, v106, v109, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v67, v110, v111, 0xc0c0004
	v_perm_b32 v68, v97, v98, 0xc0c0004
	v_perm_b32 v69, v99, v100, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_perm_b32 v62, v62, v79, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v89, v89, v90, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v70, v6, v5, 0xc0c0004
	v_lshl_or_b32 v6, v67, 16, v66
	v_lshl_or_b32 v5, v69, 16, v68
	v_perm_b32 v90, v91, v92, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v60, v63, v60, 0xc0c0004
	ds_load_u8 v63, v107 offset:2048
	ds_load_u8 v73, v108 offset:2048
	ds_load_u8 v106, v103 offset:2048
	ds_load_u8 v107, v104 offset:2048
	ds_load_u8 v105, v105 offset:2048
	ds_load_u8 v108, v101 offset:2048
	ds_load_u8 v109, v102 offset:2048
	ds_load_u8 v59, v59 offset:2048
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v64, v45, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v46, v65, 0xc0c0004
	v_dual_mov_b32 v104, s11 :: v_dual_mov_b32 v103, s10
	v_dual_mov_b32 v102, s9 :: v_dual_mov_b32 v101, s8
	v_lshl_or_b32 v46, v45, 16, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v45, v60, 16, v64
	v_dual_mov_b32 v100, s7 :: v_dual_mov_b32 v99, s6
	v_dual_mov_b32 v98, s5 :: v_dual_mov_b32 v97, s4
	v_perm_b32 v60, v93, v94, 0xc0c0004
	v_perm_b32 v64, v95, v96, 0xc0c0004
	v_perm_b32 v74, v76, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[45:46], v[5:6], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v64, 16, v60
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v60, v73, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v106, 0xc0c0004
	v_perm_b32 v63, v86, v85, 0xc0c0004
	v_perm_b32 v64, v82, v81, 0xc0c0004
	v_perm_b32 v73, v77, v75, 0xc0c0004
	v_perm_b32 v75, v109, v108, 0xc0c0004
	v_lshl_or_b32 v60, v59, 16, v60
	v_perm_b32 v59, v105, v107, 0xc0c0004
	v_lshl_or_b32 v63, v64, 16, v63
	v_lshl_or_b32 v62, v73, 16, v62
	v_perm_b32 v64, v88, v87, 0xc0c0004
	v_perm_b32 v73, v84, v83, 0xc0c0004
	v_perm_b32 v77, v80, v78, 0xc0c0004
	v_lshl_or_b32 v5, v90, 16, v89
	v_lshl_or_b32 v59, v75, 16, v59
	v_wmma_i32_16x16x16_iu4 v[97:104], v[45:46], v[62:63], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v73, 16, v64
	v_lshl_or_b32 v45, v74, 16, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[59:60], v[5:6], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[59:60], v[45:46], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v60, v65
	v_cvt_f32_i32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v65, v67
	v_cvt_f32_i32_e32 v67, v68
	v_cvt_f32_i32_e32 v63, v69
	v_cvt_f32_i32_e32 v64, v70
	v_cvt_f32_i32_e32 v5, v71
	v_cvt_f32_i32_e32 v6, v72
	v_cvt_f32_i32_e32 v71, v97
	v_cvt_f32_i32_e32 v73, v98
	v_cvt_f32_i32_e32 v70, v99
	v_cvt_f32_i32_e32 v72, v100
	v_cvt_f32_i32_e32 v68, v101
	v_cvt_f32_i32_e32 v69, v102
	v_cvt_f32_i32_e32 v45, v103
	v_cvt_f32_i32_e32 v46, v104
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v43, v44, v43
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s35
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s21, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s1
	s_mov_b32 s23, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v44, 2, v43
	s_waitcnt lgkmcnt(30)
	v_or_b32_e32 v62, 6, v43
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s19
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v59, 4, v43
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v74, 8, v43
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v83, 12, v43
	v_or_b32_e32 v75, 10, v43
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v76, s0, v43, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v81, s1, v43, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v43, 14, v43
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v77, s0, v44, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v44, s1, v44, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v79, s0, v62, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v62, s1, v62, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v78, s0, v59, 1
	v_add_lshl_u32 v80, s0, v74, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v74, s1, v74, 1
	s_waitcnt lgkmcnt(2)
	v_add_lshl_u32 v84, s1, v83, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v82, s0, v75, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v85, s1, v43, 1
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_add_lshl_u32 v59, s1, v59, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v83, s0, v83, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_add_lshl_u32 v75, s1, v75, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v43, s0, v43, 1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s20, s14
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v86, 0x80000000, v74, s2
	v_cndmask_b32_e64 v74, 0x80000000, v84, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v84, 0x80000000, v85, s2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	s_clause 0x1
	buffer_load_u16 v81, v81, s[20:23], 0 offen
	buffer_load_u16 v85, v44, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x3
	buffer_load_u16 v87, v62, s[20:23], 0 offen
	buffer_load_u16 v74, v74, s[20:23], 0 offen
	buffer_load_u16 v84, v84, s[20:23], 0 offen
	buffer_load_u16 v86, v86, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_load_u16 v88, v59, s[20:23], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v44, 0x80000000, v83, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x6
	buffer_load_u16 v79, v79, s[20:23], 0 offen
	buffer_load_u16 v78, v78, s[20:23], 0 offen
	buffer_load_u16 v82, v82, s[20:23], 0 offen
	buffer_load_u16 v59, v44, s[20:23], 0 offen
	buffer_load_u16 v62, v43, s[20:23], 0 offen
	buffer_load_u16 v80, v80, s[20:23], 0 offen
	buffer_load_u16 v75, v75, s[20:23], 0 offen
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x1
	buffer_load_u16 v76, v76, s[20:23], 0 offen
	buffer_load_u16 v77, v77, s[20:23], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v43.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v43.h, v61.l
	v_mov_b16_e32 v44.h, v8.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v8, 0x78, v17
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v17, s19, v18
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v44.l, v43.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v53, v53, v43
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v68, v68, v43
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v18, v58, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v58, v73, v43 :: v_dual_mul_f32 v47, v47, v44
	v_mul_f32_e32 v60, v60, v44
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v56, v56, v43 :: v_dual_mul_f32 v67, v67, v44
	v_dual_mul_f32 v55, v55, v43 :: v_dual_mul_f32 v66, v66, v44
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v64, v64, v44 :: v_dual_mul_f32 v57, v57, v43
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v48, v48, v44
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v70, v70, v43 :: v_dual_mul_f32 v49, v49, v44
	v_dual_mul_f32 v61, v71, v43 :: v_dual_mul_f32 v50, v50, v44
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v51, v51, v44
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v69, v69, v43 :: v_dual_mul_f32 v52, v52, v44
	v_dual_mul_f32 v72, v72, v43 :: v_dual_mul_f32 v65, v65, v44
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v54, v54, v43 :: v_dual_mul_f32 v63, v63, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v83.h, v43.l
	v_mov_b16_e32 v71.h, v43.l
	v_mov_b16_e32 v73.h, v43.l
	v_and_b32_e32 v0, 16, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v2, v44
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s34, s34, s19
	v_mul_lo_u32 v7, s19, v7
	v_add3_u32 v8, s34, s33, v8
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v5, v5, v44
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v3, v3, v43
	v_mul_f32_e32 v1, v1, v44
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v81, 16, v81
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v85, 16, v85
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v60, v60, v81, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v58, v58, v85, v38
	v_fma_f32 v61, v61, v81, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v19, v60, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v58, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v49, v82, v23
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v61, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v47, v47, v80, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v49, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v53, v80, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v47, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v56, v56, v76, v42
	v_fma_f32 v48, v48, v76, v41
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v76, 16, v79
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v79, 16, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v77, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v56, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v56, v66, v85, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v48, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v51, v51, v77, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v39, v18, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v39, 0xbfb8aa3b, v40
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v56, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v51, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v47
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v52, v52, v76, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v36
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v48, v55, v78, v34
	v_fma_f32 v55, v57, v76, v35
	v_fma_f32 v50, v50, v78, v30
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v47, 0, 0x42800000, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v52, s2
	v_cndmask_b32_e64 v34, v34, v48, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v50, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v66, v72, v79, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v55, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v67, v67, v79, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v66, s2
	v_cndmask_b32_e64 v26, v26, v53, s2
	v_cndmask_b32_e64 v29, v29, v67, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v48, 0, 0x42800000, s1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v87, 16, v88
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v33
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v54, v54, v82, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v53, 0xbfb8aa3b, v29 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v38
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v57, v70, v87, v32
	v_fma_f32 v65, v65, v87, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v54, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v57, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v65, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, s3
	v_cndmask_b32_e64 v53, 0, 0x42800000, s6
	v_mul_f32_e32 v50, 0xbfb8aa3b, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v69, v69, v75, v25
	v_fma_f32 v64, v64, v75, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v69, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v86, 16, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v64, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v50, 0, 0x42800000, s5
	v_mul_f32_e32 v55, 0xbfb8aa3b, v25
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v68, v68, v86, v24
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v52
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v63, v63, v86, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v68, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v57
	v_cndmask_b32_e64 v52, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v55
	v_exp_f32_e32 v50, v50
	v_mul_f32_e32 v54, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v57, 0, 0x42800000, s10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v63, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v54
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v55, 0, 0x42800000, s8
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v54, 0, 0x42800000, s9
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v51, 0, 0x42800000, s4
	v_mul_f32_e32 v56, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v25
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v50, v50, v65
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v54, v54
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v56
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s7
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v53, v53
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v54, v54, v69
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v56, 0, 0x42800000, s11
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s1
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v49, v49
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s6
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v47, v47, v60
	v_ldexp_f32 v52, v52, v67
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s10
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v39, v39, v58
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v20
	v_ldexp_f32 v49, v49, v63
	v_ldexp_f32 v48, v48, v61
	v_ldexp_f32 v53, v53, v66
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s8
	v_ldexp_f32 v57, v57, v70
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v66, null, v49, v49, v36
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v56, v56
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v61, null, v47, v47, v19
	v_div_scale_f32 v70, null, v50, v50, v32
	v_rcp_f32_e32 v92, v66
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s11
	v_ldexp_f32 v51, v51, v64
	v_ldexp_f32 v55, v55, v68
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v90, v61
	v_rcp_f32_e32 v94, v70
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v56, v56, v72
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v58, null, v39, v39, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v104, -v66, v92, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_add_f32 v56, 1.0, v56
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v64, null, v48, v48, v38
	v_div_scale_f32 v68, null, v51, v51, v33
	v_div_scale_f32 v77, null, v52, v52, v28
	v_fma_f32 v102, -v61, v90, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v106, -v70, v94, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_fmac_f32 v92, v104, v92
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, null, v55, v55, v25
	v_rcp_f32_e32 v89, v58
	v_div_scale_f32 v81, null, v54, v54, v24
	v_div_scale_f32 v87, null, v56, v56, v20
	v_rcp_f32_e32 v91, v64
	v_rcp_f32_e32 v93, v68
	v_rcp_f32_e32 v96, v77
	v_rcp_f32_e32 v97, v79
	v_fmac_f32_e32 v90, v102, v90
	v_div_scale_f32 v75, null, v53, v53, v29
	v_fmac_f32_e32 v94, v106, v94
	v_div_scale_f32 v85, null, v57, v57, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v95, v75
	v_rcp_f32_e32 v98, v81
	v_rcp_f32_e32 v100, v87
	v_rcp_f32_e32 v99, v85
	v_fma_f32 v101, -v58, v89, 1.0
	v_div_scale_f32 v63, s1, v19, v47, v19
	v_fma_f32 v103, -v64, v91, 1.0
	v_fma_f32 v105, -v68, v93, 1.0
	v_fma_f32 v108, -v77, v96, 1.0
	v_fma_f32 v109, -v79, v97, 1.0
	v_div_scale_f32 v60, s0, v40, v39, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v89, v101, v89 :: v_dual_fmac_f32 v96, v108, v96
	v_div_scale_f32 v65, vcc_lo, v38, v48, v38
	v_div_scale_f32 v69, s4, v33, v51, v33
	v_div_scale_f32 v78, s7, v28, v52, v28
	v_fma_f32 v107, -v75, v95, 1.0
	v_fma_f32 v110, -v81, v98, 1.0
	v_fma_f32 v111, -v85, v99, 1.0
	v_fma_f32 v112, -v87, v100, 1.0
	v_fmac_f32_e32 v91, v103, v91
	v_fmac_f32_e32 v93, v105, v93
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v102, v63, v90
	v_div_scale_f32 v67, s3, v36, v49, v36
	v_mul_f32_e32 v101, v60, v89
	v_div_scale_f32 v72, s5, v32, v50, v32
	v_div_scale_f32 v76, s6, v29, v53, v29
	v_div_scale_f32 v82, s9, v24, v54, v24
	v_div_scale_f32 v86, s10, v21, v57, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_mul_f32 v106, v72, v94
	v_dual_fmac_f32 v98, v110, v98 :: v_dual_fmac_f32 v99, v111, v99
	v_mul_f32_e32 v108, v78, v96
	v_dual_fmac_f32 v100, v112, v100 :: v_dual_mul_f32 v103, v65, v91
	v_dual_mul_f32 v110, v82, v98 :: v_dual_mul_f32 v105, v69, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v112, v86, v99
	v_fma_f32 v113, -v61, v102, v63
	v_div_scale_f32 v88, s11, v20, v56, v20
	v_mul_f32_e32 v104, v67, v92
	v_fma_f32 v111, -v58, v101, v60
	v_dual_mul_f32 v107, v76, v95 :: v_dual_fmac_f32 v102, v113, v90
	v_fma_f32 v115, -v64, v103, v65
	v_fma_f32 v113, -v68, v105, v69
	v_div_scale_f32 v80, s8, v25, v55, v25
	v_dual_mul_f32 v114, v88, v100 :: v_dual_fmac_f32 v101, v111, v89
	v_fma_f32 v111, -v66, v104, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v105, v113, v93
	v_fma_f32 v113, -v77, v108, v78
	v_fmac_f32_e32 v103, v115, v91
	v_dual_mul_f32 v109, v80, v97 :: v_dual_fmac_f32 v104, v111, v92
	v_fma_f32 v115, -v70, v106, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v108, v113, v96
	v_fma_f32 v64, -v64, v103, v65
	v_fma_f32 v111, -v75, v107, v76
	v_fma_f32 v58, -v58, v101, v60
	v_fma_f32 v66, -v66, v104, v67
	v_fmac_f32_e32 v106, v115, v94
	v_div_fmas_f32 v64, v64, v91, v103
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v61, -v61, v102, v63
	v_fmac_f32_e32 v107, v111, v95
	v_div_fmas_f32 v58, v58, v89, v101
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v67, -v68, v105, v69
	v_div_fmas_f32 v66, v66, v92, v104
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v68, -v70, v106, v72
	v_div_fixup_f32 v38, v64, v48, v38
	v_div_fmas_f32 v48, v61, v90, v102
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v111, -v81, v110, v82
	v_fma_f32 v69, -v75, v107, v76
	v_div_fixup_f32 v39, v58, v39, v40
	v_fma_f32 v115, -v79, v109, v80
	v_div_fmas_f32 v40, v67, v93, v105
	s_mov_b32 vcc_lo, s5
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v18, v38
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v38, v68, v94, v106
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v113, -v85, v112, v86
	v_dual_fmac_f32 v110, v111, v98 :: v_dual_mul_f32 v39, v42, v39
	v_fma_f32 v70, -v77, v108, v78
	v_div_fixup_f32 v36, v66, v49, v36
	v_div_fmas_f32 v42, v69, v95, v107
	v_dual_fmac_f32 v109, v115, v97 :: v_dual_fmac_f32 v112, v113, v99
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v115, -v87, v114, v88
	v_div_fixup_f32 v19, v48, v47, v19
	v_div_fixup_f32 v32, v38, v50, v32
	v_div_fixup_f32 v29, v42, v53, v29
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v36, v37, v36
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v37, v70, v96, v108
	v_fma_f32 v72, -v79, v109, v80
	v_fma_f32 v75, -v81, v110, v82
	v_div_fixup_f32 v33, v40, v51, v33
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v114, v115, v100 :: v_dual_mul_f32 v19, v41, v19
	v_fma_f32 v76, -v85, v112, v86
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v83.l, v18.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v28, v37, v52, v28
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v29, v31, v29
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v71.l, v36.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v32, v34, v32
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v38, v72, v97, v109
	s_mov_b32 vcc_lo, s9
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v46, v46, v43 :: v_dual_mul_f32 v33, v35, v33
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v35, v75, v98, v110
	s_mov_b32 vcc_lo, s10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v63.h, v43.l
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v77, -v87, v114, v88
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v37, 1, v83
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v34, v76, v99, v112
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v73.l, v19.h
	v_and_b32_e32 v41, 1, v71
	v_mov_b16_e32 v63.l, v32.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v28, v30, v28
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s11
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v111.h, v43.l
	v_mov_b16_e32 v113.h, v43.l
	v_mov_b16_e32 v115.h, v43.l
	v_mov_b16_e32 v60.h, v43.l
	v_cmp_o_f32_e64 s0, v18, v18
	v_mov_b16_e32 v111.l, v39.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v31, v77, v100, v114
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v60.l, v33.h
	v_add3_u32 v18, v18, v37, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v21, v34, v57, v21
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v30, 1, v73
	v_mov_b16_e32 v113.l, v29.h
	v_and_b32_e32 v37, 1, v63
	v_mov_b16_e32 v115.l, v28.h
	v_cmp_o_f32_e64 s4, v19, v19
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v21, v23, v21 :: v_dual_and_b32 v40, 1, v111
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v20, v31, v56, v20
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v31, 1, v60
	v_add3_u32 v19, v19, v30, 0x7fff
	v_and_b32_e32 v23, 1, v113
	v_and_b32_e32 v30, 1, v115
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v28, v28
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v22, v20
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v23, v29, v23, 0x7fff
	v_add3_u32 v28, v28, v30, 0x7fff
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v30, v45, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v22, v33, v31, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v19.h, s4
	v_mov_b16_e32 v28.l, v20.h
	v_cndmask_b16 v22.l, 0x7fff, v28.h, s7
	v_mov_b16_e32 v28.h, v43.l
	v_cndmask_b16 v19.h, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s6
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v23, v46, v84, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v65.h, v43.l
	v_cmp_o_f32_e64 s5, v32, v32
	v_add3_u32 v32, v32, v37, 0x7fff
	v_mov_b16_e32 v65.l, v21.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v24, v35, v54, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v16, v23, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v28, 1, v28
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v29, 16, v74
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v19.l, 0x7fff, v32.h, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v32, 0xbfb8aa3b, v16 :: v_dual_and_b32 v23, 1, v65
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v24, v26, v24
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v26, v20, v28, 0x7fff
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v28, v30, v29, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_add3_u32 v23, v21, v23, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v21, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v15, v28, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v39, v39
	v_add3_u32 v34, v39, v40, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v25, v38, v55, v25
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v18.l, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v20, v20
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v27, v25
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.h, v43.l
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v21.l, 0x7fff, v26.h, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v5, v29, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v26, v30
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v62
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v13, v5, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v36, v36, v41, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v15
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v39, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v26, v26, v27
	v_exp_f32_e32 v13, v23
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v31.h, 0x7fff, v36.h, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v12, v2, s2
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v23, 1.0, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.l, v20.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v29, null, v23, v23, v16
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v13, v13, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v6, v6, v44 :: v_dual_and_b32 v25, 1, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v27, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 236 17 is_stmt 1              ; generate_amdgcn.py:236:17
	v_fma_f32 v6, v6, v84, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v25, v20, v25, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, null, v13, v13, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v14, v6, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v33, -v29, v27, 1.0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v14.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v35, v30
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v14.h, v43.l
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v26, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v27, v33, v27
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v38, s1, v15, v13, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v32
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v32, -v30, v35, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_fmac_f32 v35, v32, v35
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v33, null, v26, v26, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v42, v38, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v33
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v46, -v30, v42, v38
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v42, v46, v35
	v_fma_f32 v45, -v33, v37, 1.0
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v30, -v30, v42, v38
	v_fmac_f32_e32 v37, v45, v37
	v_div_scale_f32 v45, s3, v6, v26, v6
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_ldexp_f32 v20, v28, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v28, s0, v16, v23, v16
	s_mov_b32 vcc_lo, s0
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v36, v28, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v14, v24, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v41, -v29, v36, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v36, v41, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v28, -v29, v36, v28
	v_mul_f32_e32 v29, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v27, v28, v27, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v33, v29, v45
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v29, v28, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v34, null, v20, v20, v5
	v_div_fmas_f32 v28, v30, v35, v42
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v30, -v33, v29, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v32, v34
	v_div_fmas_f32 v29, v30, v37, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v6, v29, v26, v6
	v_fma_f32 v41, -v34, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v2, v2, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v32, v41, v32
	v_div_scale_f32 v41, s4, v5, v20, v5
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v6, v28, v13, v15
	v_mul_f32_e32 v46, v41, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v34, v46, v41
	v_fmac_f32_e32 v46, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v34, v46, v41
	v_div_fmas_f32 v30, v33, v32, v46
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v30, v20, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v40, 16, v59
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v25.l, 0x7fff, v14.h, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v1, v40, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v11, v1, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v11, 0x5040504, v0
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v1, v1, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v40, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v27, v23, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v10, v3, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v4, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v43.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v39, v9
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v6, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v10.l, v3.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v9, v4, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b16_e32 v9.h, v43.l
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v4, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v5, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v5, v2, v5, 0x7fff
	v_add3_u32 v2, v1, v6, 0x7fff
	v_and_b32_e32 v6, 1, v10
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b32_e64 v10, v25, v18, s0
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v3, v6, 0x7fff
	v_add3_u32 v6, v4, v9, 0x7fff
	v_mov_b32_e32 v9, 0x7632
	v_cndmask_b32_e64 v3, v21, v31, s0
	v_cndmask_b16 v5.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s1
	v_cndmask_b32_e64 v4, 0x3276, v9, s0
	v_cndmask_b32_e64 v9, v18, v25, s0
	v_cndmask_b32_e64 v6, v5, v22, s0
	v_cndmask_b32_e64 v5, v22, v5, s0
	v_cndmask_b32_e64 v12, v2, v19, s0
	v_lshl_or_b32 v1, v4, 8, v4
	v_cndmask_b32_e64 v4, v31, v21, s0
	v_cndmask_b32_e64 v2, v19, v2, s0
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v1, 0x760076, v1
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v1, 4, v1
	v_perm_b32 v0, v4, v3, v11
	v_perm_b32 v2, v5, v6, v11
	v_perm_b32 v9, v14, v10, v11
	v_perm_b32 v11, v15, v12, v11
	v_and_b32_e32 v13, 0x7060706, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v1, v4, v3, v13
	v_perm_b32 v3, v5, v6, v13
	v_add_lshl_u32 v4, v8, v17, 1
	v_perm_b32 v10, v14, v10, v13
	v_perm_b32 v12, v15, v12, v13
	v_add_lshl_u32 v5, v8, v7, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	buffer_store_b128 v[9:12], v5, s[16:19], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 123
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 123
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10620
; TotalNumSgprs: 50
; NumVgprs: 123
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 123
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
