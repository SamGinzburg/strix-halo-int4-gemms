	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v55, v0
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v10, 3, v55
	v_and_b32_e32 v2, 24, v10
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 2, v55
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 5, v55
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 31, v55
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v11, 1, v55
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v56, 15, v55
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s26, 15
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
	s_lshr_b32 s11, s11, 28
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
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v11, 24, v11
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v10, v10, v11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_rcp_iflag_f32_e32 v0, s7
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v33, 0, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_readfirstlane_b32 s7, v0
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
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s7, s6, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s6, s6, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s8, s9, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s6
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s18, s8, 4
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s17, s18
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s16
	v_readfirstlane_b32 s16, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s17
	s_mul_i32 s16, s16, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s18
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s38, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s6, s6, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s6, s17
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s19, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s17, s5, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s19
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s17, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s34, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s18
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v6, s34, v4
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 5
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v5, s6, v2
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v0, s6, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_or_b32_e32 v7, s33, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s34, v5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s26, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s18, s20, s3
.Ltmp19:
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v5
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v5, v6, v2, s6
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, v7, s34, v[0:1]
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s34, v0
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v0
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s18, 6
.Ltmp21:
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	s_add_i32 s2, s26, s27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[7:8], null, s26, s34, v[5:6]
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_mad_u64_u32 v[8:9], null, s2, s34, v[5:6]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	s_and_b32 s18, s3, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v0, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s18
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s37, s37, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v5, s[36:39], 0 offen
	buffer_load_b64 v[8:9], v8, s[36:39], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v5, 4, v55
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v5, 24, v5
	v_xor_b32_e32 v5, v5, v55
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v31, 0, v5
	v_lshlrev_b32_e32 v5, 1, v55
	s_waitcnt vmcnt(2)
	ds_store_b8 v31, v0 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v33, v[6:7], v[8:9] offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v0, 24, v5
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s5, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v15, v56, 5, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v16, 8, v15
	v_xor_b32_e32 v17, 16, v15
	v_xor_b32_e32 v18, 24, v15
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or_b32_e32 v25, 0x200, v15
	v_or_b32_e32 v27, 0x400, v15
	v_or_b32_e32 v28, 0x600, v15
	v_or_b32_e32 v29, 0x800, v15
	v_or_b32_e32 v30, 0xa00, v15
	v_or_b32_e32 v19, 0xc00, v15
	v_or_b32_e32 v32, 0xe00, v15
	v_or_b32_e32 v34, 0x200, v16
	v_or_b32_e32 v38, 0x400, v16
	v_or_b32_e32 v41, 0x600, v16
	v_or_b32_e32 v101, 0x800, v16
	v_or_b32_e32 v136, 0xa00, v16
	v_or_b32_e32 v21, 0xc00, v16
	v_or_b32_e32 v37, 0xe00, v16
	v_or_b32_e32 v139, 0x200, v17
	v_or_b32_e32 v140, 0x400, v17
	v_or_b32_e32 v142, 0x600, v17
	v_or_b32_e32 v144, 0x800, v17
	v_or_b32_e32 v22, 0xa00, v17
	v_or_b32_e32 v23, 0xc00, v17
	v_or_b32_e32 v36, 0xe00, v17
	v_or_b32_e32 v145, 0x200, v18
	v_or_b32_e32 v149, 0x400, v18
	v_or_b32_e32 v153, 0x600, v18
	v_or_b32_e32 v20, 0x800, v18
	v_or_b32_e32 v24, 0xa00, v18
	v_or_b32_e32 v26, 0xc00, v18
	v_or_b32_e32 v35, 0xe00, v18
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr24
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow1052
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v103, v55, 4, 1
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v223, 0
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v226, 0
	s_lshl_b32 s1, s27, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_b32_e32 v0, 24, v5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_lshl_b32 s19, s17, 8
	s_lshl_b32 s17, s17, 7
	s_lshl_b32 s20, s16, 8
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v5, s33, v56
	v_lshl_or_b32 v8, v56, 5, v0
	s_lshl_b32 s16, s16, 7
	s_max_i32 s18, s0, 1
	s_add_i32 s5, s19, s1
	v_mul_lo_u32 v7, s7, v5
	v_xor_b32_e32 v9, 8, v8
	v_xor_b32_e32 v10, 16, v8
	v_xor_b32_e32 v11, 24, v8
	s_sub_i32 s5, s5, s20
	s_sub_i32 s48, s19, s20
	v_or_b32_e32 v0, 0x600, v9
	s_lshl_b32 s49, s18, 5
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v197, 0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v9
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v217, 0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v9
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v219, 0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v9
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v53, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v9
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v173, 0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v10
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v129, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v10
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v131, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v10
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v10
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v49, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v10
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v10
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v10
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v11
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v89, 0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v11
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v11
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v11
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v11
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v135, 0
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v11
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v51, 0
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v11
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_sub_nc_u32_e32 v0, s34, v2
	scratch_store_b32 off, v55, off offset:212 ; 4-byte Folded Spill
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v77, 0
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v103
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v125, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:144
	scratch_store_b32 off, v56, off offset:216
	v_add3_u32 v0, s27, s17, v4
	v_or_b32_e32 v4, s17, v4
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v121, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v0, s16, v0
	v_subrev_nc_u32_e32 v5, s16, v4
	s_mov_b32 s16, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v6, s33, v3
	v_mad_u64_u32 v[3:4], null, s34, v0, s[6:7]
	v_mad_u64_u32 v[4:5], null, s34, v5, s[6:7]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, s34, v6, s[6:7]
	s_add_i32 s6, s6, 32
	v_mov_b32_e32 v223, 0
	v_add3_u32 v0, v3, v2, 32
	scratch_store_b32 off, v103, off offset:220 ; 4-byte Folded Spill
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v221, 0
	v_lshlrev_b32_e32 v41, 1, v7
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_add3_u32 v0, v4, v2, 32
	v_mov_b32_e32 v187, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v207, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:152
	scratch_store_b32 off, v8, off offset:224
	v_add3_u32 v0, v5, v1, 32
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s6, v1
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:164
	scratch_store_b32 off, v9, off offset:228
	v_add_nc_u32_e32 v0, 0, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:168
	scratch_store_b32 off, v10, off offset:232
	v_add_nc_u32_e32 v0, 0, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:172
	scratch_store_b32 off, v11, off offset:236
	v_add_nc_u32_e32 v0, 0, v11
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v2, s18 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v4, s20 :: v_dual_mov_b32 v5, s21
	v_dual_mov_b32 v6, s22 :: v_dual_mov_b32 v7, s23
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:180
	scratch_store_b128 off, v[4:7], off offset:196
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v58, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s35, s27, 2
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s12, s16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v31, off offset:132
	scratch_store_b32 off, v33, off offset:136
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_clause 0x11                           ; 72-byte Folded Spill
	scratch_store_b32 off, v41, off offset:68
	scratch_store_b32 off, v222, off offset:64
	scratch_store_b32 off, v51, off offset:60
	scratch_store_b32 off, v167, off offset:56
	scratch_store_b32 off, v47, off offset:52
	scratch_store_b32 off, v152, off offset:48
	scratch_store_b32 off, v150, off offset:44
	scratch_store_b32 off, v93, off offset:40
	scratch_store_b32 off, v52, off offset:36
	scratch_store_b32 off, v171, off offset:32
	scratch_store_b32 off, v173, off offset:28
	scratch_store_b32 off, v168, off offset:24
	scratch_store_b32 off, v48, off offset:20
	scratch_store_b32 off, v126, off offset:16
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v40, off offset:12
	scratch_store_b32 off, v39, off offset:8
	scratch_store_b32 off, v6, off offset:4
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	v_mov_b32_e32 v154, v153
	v_mov_b32_e32 v222, v181
	v_dual_mov_b32 v190, v57 :: v_dual_mov_b32 v103, v64
	v_dual_mov_b32 v146, v59 :: v_dual_mov_b32 v209, v104
	v_dual_mov_b32 v220, v178 :: v_dual_mov_b32 v213, v172
	v_mov_b32_e32 v172, v108
	v_dual_mov_b32 v108, v79 :: v_dual_mov_b32 v101, v81
	v_mov_b32_e32 v208, v82
	v_mov_b32_e32 v178, v110
	v_dual_mov_b32 v184, v84 :: v_dual_mov_b32 v191, v91
	v_dual_mov_b32 v202, v188 :: v_dual_mov_b32 v153, v187
	v_dual_mov_b32 v187, v89 :: v_dual_mov_b32 v188, v90
	v_mov_b32_e32 v205, v100
	v_dual_mov_b32 v192, v92 :: v_dual_mov_b32 v201, v98
	v_mov_b32_e32 v196, v61
	v_dual_mov_b32 v174, v62 :: v_dual_mov_b32 v179, v107
	v_mov_b32_e32 v102, v63
	v_dual_mov_b32 v104, v65 :: v_dual_mov_b32 v107, v70
	v_dual_mov_b32 v124, v123 :: v_dual_mov_b32 v123, v210
	v_dual_mov_b32 v210, v105 :: v_dual_mov_b32 v105, v66
	v_mov_b32_e32 v128, v67
	v_mov_b32_e32 v106, v69
	v_mov_b32_e32 v180, v73
	v_dual_mov_b32 v212, v87 :: v_dual_mov_b32 v199, v97
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	s_add_i32 s13, s6, s12
	v_mov_b32_e32 v126, v138
	v_dual_mov_b32 v215, v214 :: v_dual_mov_b32 v214, v175
	v_mov_b32_e32 v225, v42
	v_mov_b32_e32 v175, v109
	v_mov_b32_e32 v109, v80
	v_dual_mov_b32 v138, v132 :: v_dual_mov_b32 v181, v53
	v_mov_b32_e32 v147, v60
	v_mov_b32_e32 v195, v58
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s12, v0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v0, v41, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s12, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	buffer_load_u8 v0, v1, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_clause 0x4                            ; 44-byte Folded Reload
	scratch_load_b32 v93, off, off offset:164
	scratch_load_b32 v142, off, off offset:168
	scratch_load_b32 v193, off, off offset:172
	scratch_load_b128 v[25:28], off, off offset:180
	scratch_load_b128 v[29:32], off, off offset:196
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(4)
	ds_load_b64 v[33:34], v93 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[1:4], v93 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(3)
	ds_load_b64 v[35:36], v142 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[5:8], v142 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_load_b64 v[37:38], v193 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[164:167], v193 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v93 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[21:24], v142 offset0:2 offset1:3
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[232:235], v93 offset0:8 offset1:9
	ds_load_2addr_stride64_b64 v[236:239], v142 offset0:8 offset1:9
	ds_load_2addr_stride64_b64 v[240:243], v193 offset0:8 offset1:9
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[57:60], v193 offset0:6 offset1:7
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[41:44], v93 offset0:10 offset1:11
	ds_load_2addr_stride64_b64 v[89:92], v193 offset0:14 offset1:15
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v2, v85
	v_mov_b32_e32 v110, v83
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[81:84], v142 offset0:14 offset1:15
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[5:6], v[35:36], v[9:16] neg_lo:[1,1,0]
	scratch_load_b32 v5, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[39:40], v5 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[228:231], v5 offset1:1
	ds_load_2addr_stride64_b64 v[29:32], v5 offset0:2 offset1:3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[37:38], v[9:16] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[244:247], v5 offset0:8 offset1:9
	ds_load_2addr_stride64_b64 v[53:56], v5 offset0:10 offset1:11
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[25:28], v193 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[61:64], v5 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[65:68], v5 offset0:6 offset1:7
	v_mov_b32_e32 v1, v74
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[228:229], v[39:40], v[9:16] neg_lo:[1,1,0]
	v_dual_mov_b32 v228, v46 :: v_dual_mov_b32 v229, v49
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[45:48], v142 offset0:10 offset1:11
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v132, v9
	v_cvt_f32_i32_e32 v254, v10
	v_cvt_f32_i32_e32 v216, v11
	v_cvt_f32_i32_e32 v255, v12
	v_cvt_f32_i32_e32 v169, v13
	v_cvt_f32_i32_e32 v170, v14
	v_cvt_f32_i32_e32 v140, v15
	v_cvt_f32_i32_e32 v151, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v9, s16 :: v_dual_mov_b32 v10, s17
	v_mov_b32_e32 v15, s22
	v_dual_mov_b32 v11, s18 :: v_dual_mov_b32 v12, s19
	v_dual_mov_b32 v13, s20 :: v_dual_mov_b32 v14, s21
	v_mov_b32_e32 v16, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[158:165], v[232:233], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_dual_mov_b32 v232, v50 :: v_dual_mov_b32 v233, v156
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[49:52], v193 offset0:10 offset1:11
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[158:165], v[236:237], v[35:36], v[158:165] neg_lo:[1,1,0]
	v_mov_b32_e32 v236, v155
	v_wmma_i32_16x16x16_iu4 v[158:165], v[240:241], v[37:38], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[244:245], v[39:40], v[158:165] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v0, v158
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v159
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v160
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v161
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v162
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v163
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v164
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v165
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[158:165], v[3:4], v[33:34], v[9:16] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[158:165], v[7:8], v[35:36], v[158:165] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[166:167], v[37:38], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[230:231], v[39:40], v[158:165] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v149, v158
	v_cvt_f32_i32_e32 v145, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v152, v160
	v_cvt_f32_i32_e32 v150, v161
	v_cvt_f32_i32_e32 v156, v162
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v159, v164
	v_cvt_f32_i32_e32 v158, v165
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[160:167], v[234:235], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[238:239], v[35:36], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[242:243], v[37:38], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[246:247], v[39:40], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[245:252], v[41:42], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v0, v163
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[45:46], v[35:36], v[245:252] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v230, v161
	v_cvt_f32_i32_e32 v234, v162
	v_cvt_f32_i32_e32 v235, v166
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[245:252], v[49:50], v[37:38], v[245:252] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v0, v164
	v_cvt_f32_i32_e32 v231, v167
	v_cvt_f32_i32_e32 v237, v160
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[245:252], v[53:54], v[39:40], v[245:252] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v165
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[161:168], v[17:18], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v244, v246
	v_cvt_f32_i32_e32 v242, v247
	v_cvt_f32_i32_e32 v240, v248
	v_cvt_f32_i32_e32 v239, v249
	v_cvt_f32_i32_e32 v238, v250
	v_cvt_f32_i32_e32 v243, v251
	v_cvt_f32_i32_e32 v241, v252
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[246:253], v[19:20], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[21:22], v[35:36], v[161:168] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v245, v245
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[246:253], v[23:24], v[35:36], v[246:253] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[37:38], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[39:40], v[17:24] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[53:56], v193 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[161:168], v[25:26], v[37:38], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[27:28], v[37:38], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[29:30], v[39:40], v[161:168] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[27:30], v93 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[41:44], v142 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[45:48], v93 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[49:52], v142 offset0:6 offset1:7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[246:253], v[31:32], v[39:40], v[246:253] neg_lo:[1,1,0]
	v_dual_mov_b32 v31, v76 :: v_dual_mov_b32 v32, v77
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v162, v164
	v_cvt_f32_i32_e32 v164, v166
	v_cvt_f32_i32_e32 v166, v168
	v_cvt_f32_i32_e32 v171, v246
	v_cvt_f32_i32_e32 v168, v247
	v_cvt_f32_i32_e32 v0, v248
	v_cvt_f32_i32_e32 v173, v249
	v_cvt_f32_i32_e32 v148, v250
	v_cvt_f32_i32_e32 v141, v251
	v_cvt_f32_i32_e32 v185, v252
	v_cvt_f32_i32_e32 v176, v253
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v253, v17
	v_cvt_f32_i32_e32 v252, v18
	v_cvt_f32_i32_e32 v250, v19
	v_cvt_f32_i32_e32 v249, v20
	v_cvt_f32_i32_e32 v247, v21
	v_cvt_f32_i32_e32 v246, v22
	v_cvt_f32_i32_e32 v251, v23
	v_cvt_f32_i32_e32 v248, v24
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v41, v78
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[77:80], v93 offset0:14 offset1:15
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[37:38], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[39:40], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v42, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v53, v18
	v_dual_mov_b32 v17, v71 :: v_dual_mov_b32 v18, v72
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[69:72], v93 offset0:12 offset1:13
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v54, v19
	v_mov_b32_e32 v19, v75
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[73:76], v142 offset0:12 offset1:13
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v62, v21
	v_cvt_f32_i32_e32 v177, v22
	v_cvt_f32_i32_e32 v182, v23
	v_cvt_f32_i32_e32 v189, v24
	v_cvt_f32_i32_e32 v61, v20
	v_mov_b32_e32 v20, v204
	v_mov_b32_e32 v204, v99
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[97:100], v5 offset0:14 offset1:15
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[69:70], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[73:74], v[35:36], v[21:28] neg_lo:[1,1,0]
	v_dual_mov_b32 v74, v1 :: v_dual_mov_b32 v1, v86
	v_mov_b32_e32 v73, v88
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[85:88], v193 offset0:12 offset1:13
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[85:86], v[37:38], v[21:28] neg_lo:[1,1,0]
	v_dual_mov_b32 v86, v1 :: v_dual_mov_b32 v1, v94
	v_dual_mov_b32 v85, v95 :: v_dual_mov_b32 v194, v96
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_2addr_stride64_b64 v[93:96], v5 offset0:12 offset1:13
	v_mov_b32_e32 v193, v2
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[93:94], v[39:40], v[21:28] neg_lo:[1,1,0]
	v_mov_b32_e32 v94, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v1, v27
	v_cvt_f32_i32_e32 v142, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v93, v24
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v28
	v_cvt_f32_i32_e32 v23, v26
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v43, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v2
	v_cvt_f32_i32_e32 v55, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v4
	v_cvt_f32_i32_e32 v63, v5
	v_cvt_f32_i32_e32 v64, v6
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v70, v8
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_dual_mov_b32 v72, v18 :: v_dual_mov_b32 v71, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v76, v31
	v_mov_b32_e32 v75, v19
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v87, v212 :: v_dual_mov_b32 v88, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v95, v85 :: v_dual_mov_b32 v96, v194
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v31, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v2
	v_cvt_f32_i32_e32 v26, v3
	v_cvt_f32_i32_e32 v24, v4
	v_cvt_f32_i32_e32 v194, v5
	v_cvt_f32_i32_e32 v19, v6
	v_cvt_f32_i32_e32 v18, v7
	v_cvt_f32_i32_e32 v17, v8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v45, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v46, v2
	v_cvt_f32_i32_e32 v49, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v4
	v_cvt_f32_i32_e32 v57, v5
	v_cvt_f32_i32_e32 v58, v6
	v_cvt_f32_i32_e32 v65, v7
	v_cvt_f32_i32_e32 v66, v8
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_dual_mov_b32 v78, v41 :: v_dual_mov_b32 v77, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v82, v208 :: v_dual_mov_b32 v81, v101
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v90, v188
	v_dual_mov_b32 v188, v202 :: v_dual_mov_b32 v89, v187
	v_mov_b32_e32 v187, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v97, v199 :: v_dual_mov_b32 v98, v201
	v_mov_b32_e32 v153, v154
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v28, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v32, v2
	v_cvt_f32_i32_e32 v29, v3
	v_cvt_f32_i32_e32 v41, v4
	v_cvt_f32_i32_e32 v30, v5
	v_cvt_f32_i32_e32 v101, v6
	v_cvt_f32_i32_e32 v208, v7
	v_cvt_f32_i32_e32 v212, v8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[59:60], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v47, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v48, v2
	v_cvt_f32_i32_e32 v51, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v52, v4
	v_cvt_f32_i32_e32 v59, v5
	v_cvt_f32_i32_e32 v60, v6
	v_cvt_f32_i32_e32 v67, v7
	v_cvt_f32_i32_e32 v68, v8
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_mov_b32_e32 v79, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v83, v110
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v91, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v99, v204
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v9, v1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v12, v2
	v_cvt_f32_i32_e32 v10, v3
	v_cvt_f32_i32_e32 v13, v4
	v_cvt_f32_i32_e32 v11, v5
	v_cvt_f32_i32_e32 v14, v6
	v_cvt_f32_i32_e32 v15, v7
	v_cvt_f32_i32_e32 v33, v8
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v1
	v_dual_mov_b32 v80, v109 :: v_dual_mov_b32 v109, v175
	v_mov_b32_e32 v175, v214
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v110, v178 :: v_dual_mul_f32 v1, v16, v132
	v_mov_b32_e32 v132, v138
	v_mov_b32_e32 v138, v126
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:16
	scratch_load_b32 v36, off, off offset:144
	v_mov_b32_e32 v100, v205
	v_dual_mov_b32 v214, v215 :: v_dual_mul_f32 v11, v16, v11
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v14, v16, v14
	v_mul_f32_e32 v33, v16, v33
	v_mul_f32_e32 v13, v16, v13
	v_mul_f32_e32 v29, v16, v29
	v_mul_f32_e32 v9, v16, v9
	v_mul_f32_e32 v15, v16, v15
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v0
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v28, v16, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s48, v36
	s_clause 0x7
	buffer_load_u16 v3, v2, s[40:43], 0 offen
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:4
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:8
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:12
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:16
	buffer_load_u16 v8, v2, s[40:43], 0 offen offset:20
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:24
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:28
	v_mov_b32_e32 v108, v172
	v_mov_b32_e32 v92, v192
	v_mov_b32_e32 v178, v220
	v_mov_b32_e32 v172, v213
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s48, s48, s35
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v84, v184 :: v_dual_lshlrev_b32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v109, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v254
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v110, v1, v3 :: v_dual_mul_f32 v1, v16, v216
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v3, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v138, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v255
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v126, v1, v3 :: v_dual_mul_f32 v1, v16, v169
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v3, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v188, v1, v3 :: v_dual_mul_f32 v1, v16, v170
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v108, v1, v3 :: v_dual_mul_f32 v1, v16, v140
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v203, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v151
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v172, v1, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v3, v2, s[40:43], 0 offen offset:32
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:36
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:40
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:44
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:48
	buffer_load_u16 v8, v2, s[40:43], 0 offen offset:52
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:56
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:60
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v175, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v145
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v214, v1, v3 :: v_dual_mul_f32 v1, v16, v152
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v3, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v219, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v150
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v139, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v156
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v156, v233 :: v_dual_lshlrev_b32 v3, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v217, v1, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v155
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v8
	v_dual_mov_b32 v155, v236 :: v_dual_fmac_f32 v218, v1, v3
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v34
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v144, v1, v3 :: v_dual_mul_f32 v1, v16, v158
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v143, v1, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v3, v2, s[40:43], 0 offen offset:64
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:68
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:72
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:76
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:80
	buffer_load_u16 v8, v2, s[40:43], 0 offen offset:84
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:88
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:92
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v161
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v127, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v160
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v129, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v163
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v3, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v133, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v162
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v134, v1, v3 :: v_dual_mul_f32 v1, v16, v165
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v3, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v130, v1, v3 :: v_dual_mul_f32 v1, v16, v164
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v131, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v167
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v99, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v166
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v100, v1, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v3, v2, s[40:43], 0 offen offset:96
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:100
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:104
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:108
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:112
	buffer_load_u16 v8, v2, s[40:43], 0 offen offset:116
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:120
	buffer_load_u16 v35, v2, s[40:43], 0 offen offset:124
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v171
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v97, v1, v3
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v16, v168
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v98, v1, v3 :: v_dual_lshlrev_b32 v1, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v0, v1
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v16, v173 :: v_dual_lshlrev_b32 v1, 16, v6
	v_mov_b32_e32 v204, v20
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	scratch_load_b32 v20, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v94, v0, v1
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v16, v148 :: v_dual_lshlrev_b32 v1, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v95, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v16, v141 :: v_dual_lshlrev_b32 v1, 16, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v96, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v16, v185 :: v_dual_lshlrev_b32 v1, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v91, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v16, v176 :: v_dual_lshlrev_b32 v1, 16, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v92, v0, v1
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:128
	buffer_load_u16 v3, v2, s[40:43], 0 offen offset:132
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:136
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:140
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:144
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:148
	buffer_load_u16 v8, v2, s[40:43], 0 offen offset:152
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:156
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v42
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v42, v225 :: v_dual_lshlrev_b32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v89, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v16, v53 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v90, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v16, v54 :: v_dual_lshlrev_b32 v1, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v193, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v61
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v5
	v_mov_b32_e32 v61, v196
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v86, v0, v1
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v62
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v62, v174 :: v_dual_lshlrev_b32 v1, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v87, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v16, v177 :: v_dual_lshlrev_b32 v1, 16, v7
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v88, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v16, v182 :: v_dual_lshlrev_b32 v1, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v83, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v16, v189 :: v_dual_lshlrev_b32 v1, 16, v34
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v84, v0, v1
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:160
	buffer_load_u16 v3, v2, s[40:43], 0 offen offset:164
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:168
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:172
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:176
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:180
	buffer_load_u16 v8, v2, s[40:43], 0 offen offset:184
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:188
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v16, v43 :: v_dual_lshlrev_b32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v81, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v16, v44 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v82, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v16, v55 :: v_dual_lshlrev_b32 v1, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v78, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v16, v56 :: v_dual_lshlrev_b32 v1, 16, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v77, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v16, v63 :: v_dual_lshlrev_b32 v1, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v79, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v16, v64 :: v_dual_lshlrev_b32 v1, 16, v7
	v_dual_mov_b32 v53, v181 :: v_dual_mov_b32 v64, v103
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v80, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v16, v69 :: v_dual_lshlrev_b32 v1, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v75, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v70
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v34
	v_dual_mov_b32 v181, v222 :: v_dual_mov_b32 v70, v107
	scratch_load_b32 v222, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v76, v0, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:192
	buffer_load_u16 v3, v2, s[40:43], 0 offen offset:196
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:200
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:204
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:208
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:212
	buffer_load_u16 v8, v2, s[40:43], 0 offen offset:216
	buffer_load_u16 v34, v2, s[40:43], 0 offen offset:220
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v63, v102 :: v_dual_fmac_f32 v74, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v16, v46 :: v_dual_lshlrev_b32 v1, 16, v3
	v_dual_mov_b32 v69, v106 :: v_dual_mov_b32 v46, v228
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v180, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v16, v49 :: v_dual_lshlrev_b32 v1, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v107, v179 :: v_dual_fmac_f32 v70, v0, v1
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v16, v50 :: v_dual_lshlrev_b32 v1, 16, v5
	v_mov_b32_e32 v50, v232
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v69, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v16, v57 :: v_dual_lshlrev_b32 v1, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v71, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v16, v58 :: v_dual_lshlrev_b32 v1, 16, v7
	v_dual_mov_b32 v49, v229 :: v_dual_mov_b32 v58, v195
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v72, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v65
	v_mov_b32_e32 v65, v104
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v16, v47
	v_mov_b32_e32 v104, v209
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v47, off, off offset:52
	scratch_load_b32 v152, off, off offset:48
	scratch_load_b32 v150, off, off offset:44
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v65, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v66
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v66, v105 :: v_dual_lshlrev_b32 v1, 16, v34
	v_dual_mov_b32 v57, v190 :: v_dual_add_nc_u32 v34, s5, v36
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v40, v34, s[40:43], 0 offen offset:136
	buffer_load_u16 v39, v34, s[40:43], 0 offen offset:140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v0, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0xb
	buffer_load_u16 v0, v2, s[40:43], 0 offen offset:224
	buffer_load_u16 v1, v2, s[40:43], 0 offen offset:228
	buffer_load_u16 v3, v2, s[40:43], 0 offen offset:232
	buffer_load_u16 v4, v2, s[40:43], 0 offen offset:236
	buffer_load_u16 v5, v2, s[40:43], 0 offen offset:240
	buffer_load_u16 v6, v2, s[40:43], 0 offen offset:244
	buffer_load_u16 v7, v2, s[40:43], 0 offen offset:248
	buffer_load_u16 v2, v2, s[40:43], 0 offen offset:252
	buffer_load_u16 v38, v34, s[40:43], 0 offen offset:144
	buffer_load_u16 v37, v34, s[40:43], 0 offen offset:148
	buffer_load_u16 v36, v34, s[40:43], 0 offen offset:152
	buffer_load_u16 v35, v34, s[40:43], 0 offen offset:156
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, s35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v63, v8, v0
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v0, v16, v48 :: v_dual_mov_b32 v105, v210
	v_mov_b32_e32 v210, v123
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v64, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v51
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v1, 16, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:60
	scratch_load_b32 v167, off, off offset:56
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v0, v1
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v52
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v1, 16, v4
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v52, off, off offset:36
	scratch_load_b32 v173, off, off offset:28
	scratch_load_b32 v171, off, off offset:32
	scratch_load_b32 v168, off, off offset:24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v62, v0, v1
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v0, v16, v59 :: v_dual_mov_b32 v59, v146
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v1, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v59, v0, v1
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v60
	s_waitcnt vmcnt(12)
	v_dual_mov_b32 v60, v147 :: v_dual_lshlrev_b32 v1, 16, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v60, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v16, v67
	v_mov_b32_e32 v67, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v57, v0, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v0, v16, v68 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v58, v0, v1
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v1, v34, s[40:43], 0 offen
	buffer_load_u16 v2, v34, s[40:43], 0 offen offset:4
	buffer_load_u16 v3, v34, s[40:43], 0 offen offset:8
	buffer_load_u16 v4, v34, s[40:43], 0 offen offset:12
	buffer_load_u16 v5, v34, s[40:43], 0 offen offset:16
	buffer_load_u16 v6, v34, s[40:43], 0 offen offset:20
	buffer_load_u16 v7, v34, s[40:43], 0 offen offset:24
	buffer_load_u16 v8, v34, s[40:43], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v16, v0 :: v_dual_lshlrev_b32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v226, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v16, v0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v223, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v16, v0 :: v_dual_lshlrev_b32 v1, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v221, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v1, 16, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v16, v0
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v187, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v16, v0 :: v_dual_lshlrev_b32 v1, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v132, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v6
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v178, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v7
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v105, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v1, 16, v8
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v16, v0
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v186, v0, v1
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v1, v34, s[40:43], 0 offen offset:32
	buffer_load_u16 v2, v34, s[40:43], 0 offen offset:36
	buffer_load_u16 v3, v34, s[40:43], 0 offen offset:40
	buffer_load_u16 v4, v34, s[40:43], 0 offen offset:44
	buffer_load_u16 v5, v34, s[40:43], 0 offen offset:48
	buffer_load_u16 v6, v34, s[40:43], 0 offen offset:52
	buffer_load_u16 v7, v34, s[40:43], 0 offen offset:56
	buffer_load_u16 v8, v34, s[40:43], 0 offen offset:60
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v237
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v207, v0, v1
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v230
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v1, 16, v2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v104, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v234
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v200, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v211, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v16, v0 :: v_dual_lshlrev_b32 v1, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v197, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v16, v0 :: v_dual_lshlrev_b32 v1, 16, v6
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v67, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v235
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v1, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v53, v0, v1
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v0, v16, v231 :: v_dual_lshlrev_b32 v1, 16, v8
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v198, v0, v1
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v1, v34, s[40:43], 0 offen offset:64
	buffer_load_u16 v2, v34, s[40:43], 0 offen offset:68
	buffer_load_u16 v3, v34, s[40:43], 0 offen offset:72
	buffer_load_u16 v4, v34, s[40:43], 0 offen offset:76
	buffer_load_u16 v5, v34, s[40:43], 0 offen offset:80
	buffer_load_u16 v6, v34, s[40:43], 0 offen offset:84
	buffer_load_u16 v7, v34, s[40:43], 0 offen offset:88
	buffer_load_u16 v8, v34, s[40:43], 0 offen offset:92
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v245
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v173, v0, v1
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v16, v244 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v52, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v242
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v210, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v240
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v171, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v16, v239 :: v_dual_lshlrev_b32 v1, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v167, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v238
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v6
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v168, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v7
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v243
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v156, v0, v1 :: v_dual_lshlrev_b32 v1, 16, v8
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v241
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v50, v0, v1
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v1, v34, s[40:43], 0 offen offset:96
	buffer_load_u16 v2, v34, s[40:43], 0 offen offset:100
	buffer_load_u16 v3, v34, s[40:43], 0 offen offset:104
	buffer_load_u16 v4, v34, s[40:43], 0 offen offset:108
	buffer_load_u16 v5, v34, s[40:43], 0 offen offset:112
	buffer_load_u16 v6, v34, s[40:43], 0 offen offset:116
	buffer_load_u16 v7, v34, s[40:43], 0 offen offset:120
	buffer_load_u16 v8, v34, s[40:43], 0 offen offset:124
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v253
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v49, v0, v1
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v16, v252 :: v_dual_lshlrev_b32 v1, 16, v2
	v_mul_f32_e32 v2, v16, v248
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v155, v0, v1
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v1, 16, v3
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v8
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:80
	scratch_load_b32 v48, off, off offset:20
	v_mul_f32_e32 v0, v16, v250
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v222, v2, v3
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v2, v16, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v47, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v0, v16, v249 :: v_dual_lshlrev_b32 v1, 16, v4
	v_mul_f32_e32 v4, v16, v25
	v_mul_f32_e32 v25, v16, v31
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v48, v0, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v0, v16, v247 :: v_dual_lshlrev_b32 v1, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v150, v0, v1 :: v_dual_lshlrev_b32 v5, 16, v38
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v246
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v1, 16, v6
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v6, v16, v23
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v152, v0, v1 :: v_dual_lshlrev_b32 v23, 16, v35
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v251
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v1, 16, v7
	v_lshlrev_b32_e32 v7, 16, v37
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v37, v16, v212
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v227, v0, v1
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v0, v34, s[40:43], 0 offen offset:128
	buffer_load_u16 v1, v34, s[40:43], 0 offen offset:132
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v181, v2, v0 :: v_dual_mul_f32 v0, v16, v21
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	scratch_load_b32 v2, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v224, v0, v1
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v0, v16, v22 :: v_dual_lshlrev_b32 v1, 16, v40
	scratch_load_b32 v40, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v183, v0, v1 :: v_dual_lshlrev_b32 v22, 16, v36
	.loc	1 224 35 is_stmt 1              ; generate_amdgcn.py:224:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:148
	scratch_load_b32 v0, off, off offset:152
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_waitcnt vmcnt(3)
	v_cmp_lt_i32_e32 vcc_lo, s13, v2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v2, 16, v39
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s12, v1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s12, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s12, s12, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s49, s12
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e32 v3, 0x80000000, v1, vcc_lo
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v1, v16, v93
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v93, off, off offset:40
	scratch_load_b32 v39, off, off offset:8
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_mov_b32 v85, v193
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v42, v1, v2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v1, v34, s[40:43], 0 offen offset:160
	buffer_load_u16 v2, v34, s[40:43], 0 offen offset:164
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v40, v6, v7
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v6, v34, s[40:43], 0 offen offset:176
	buffer_load_u16 v7, v34, s[40:43], 0 offen offset:180
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v8, v16, v8
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v93, v4, v5
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v4, v34, s[40:43], 0 offen offset:168
	buffer_load_u16 v5, v34, s[40:43], 0 offen offset:172
	v_mov_b32_e32 v73, v180
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v16, v20 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v135, v25, v1 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v1, v16, v27
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v157, v20, v23
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v20, v34, s[40:43], 0 offen offset:192
	buffer_load_u16 v23, v34, s[40:43], 0 offen offset:196
	v_mov_b32_e32 v123, v124
	s_clause 0x1
	buffer_load_u16 v25, v34, s[40:43], 0 offen offset:200
	buffer_load_u16 v31, v34, s[40:43], 0 offen offset:204
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v136, v1, v2
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v1, v16, v26
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x3
	buffer_load_u16 v27, v34, s[40:43], 0 offen offset:208
	buffer_load_u16 v35, v34, s[40:43], 0 offen offset:212
	buffer_load_u16 v26, v34, s[40:43], 0 offen offset:216
	buffer_load_u16 v36, v34, s[40:43], 0 offen offset:220
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v38, v16, v208
	v_mul_f32_e32 v12, v16, v12
	v_mul_f32_e32 v10, v16, v10
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v2, 16, v4
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	buffer_load_b64 v[3:4], v3, s[36:39], 0 offen
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v46, v1, v2 :: v_dual_mul_f32 v1, v16, v24
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v2, 16, v5
	s_clause 0x1
	buffer_load_u16 v5, v34, s[40:43], 0 offen offset:224
	buffer_load_u16 v24, v34, s[40:43], 0 offen offset:228
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v39, v1, v2 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v2, 16, v6
	s_clause 0x1
	buffer_load_u16 v6, v34, s[40:43], 0 offen offset:232
	buffer_load_u16 v21, v34, s[40:43], 0 offen offset:236
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v1, v16, v194
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v121, v28, v20 :: v_dual_lshlrev_b32 v26, 16, v26
	v_fmac_f32_e32 v51, v1, v2
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v1, v16, v19
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v2, 16, v7
	s_clause 0x1
	buffer_load_u16 v7, v34, s[40:43], 0 offen offset:240
	buffer_load_u16 v19, v34, s[40:43], 0 offen offset:244
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v119, v29, v25
	v_fmac_f32_e32 v137, v1, v2
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v1, v16, v18 :: v_dual_lshlrev_b32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v114, v12, v24 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v153, v8, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v8, v34, s[40:43], 0 offen offset:184
	buffer_load_u16 v22, v34, s[40:43], 0 offen offset:188
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v113, v9, v5 :: v_dual_lshlrev_b32 v6, 16, v6
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v206, v13, v21 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v123, v1, v2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v8, v34, s[40:43], 0 offen offset:252
	buffer_load_u16 v18, v34, s[40:43], 0 offen offset:248
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[1:2], v0, s[36:39], 0 offen
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v0, v16, v17
	v_mul_f32_e32 v17, v16, v32
	v_mul_f32_e32 v32, v16, v41
	scratch_load_b32 v41, off, off offset:68 ; 4-byte Folded Reload
	v_mul_f32_e32 v34, v16, v101
	v_mul_f32_e32 v30, v16, v30
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v22
	v_lshlrev_b32_e32 v22, 16, v23
	v_lshlrev_b32_e32 v23, 16, v31
	v_lshlrev_b32_e32 v31, 16, v35
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v111, v10, v6
	v_fmac_f32_e32 v125, v0, v16
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_dual_fmac_f32 v120, v32, v23 :: v_dual_lshlrev_b32 v35, 16, v36
	v_fmac_f32_e32 v118, v34, v31
	scratch_load_b32 v31, off, off offset:132 ; 4-byte Folded Reload
	v_fmac_f32_e32 v122, v17, v22
	v_dual_fmac_f32 v115, v38, v26 :: v_dual_fmac_f32 v116, v37, v35
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v112, v33, v8
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:136
	scratch_load_b32 v6, off, off offset:4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v5, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v41, 2, v41
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v117, v30, v27
	v_fmac_f32_e32 v107, v15, v18
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_store_b8 v31, v5 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b64 v33, v[1:2], v[3:4] offset1:8
	.loc	1 236 17 is_stmt 1              ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v0, v11, v7
	v_fmac_f32_e32 v6, v14, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v209, v133 :: v_dual_mov_b32 v8, v130
	v_dual_mov_b32 v9, v131 :: v_dual_mov_b32 v12, v144
	v_dual_mov_b32 v14, v139 :: v_dual_mov_b32 v177, v214
	v_dual_mov_b32 v182, v175 :: v_dual_mov_b32 v195, v126
	v_dual_mov_b32 v126, v137 :: v_dual_mov_b32 v131, v136
	v_dual_mov_b32 v130, v135 :: v_dual_mov_b32 v137, v153
	s_clause 0x19                           ; 104-byte Folded Reload
	scratch_load_b32 v17, off, off offset:232
	scratch_load_b32 v18, off, off offset:236
	scratch_load_b32 v41, off, off offset:240
	scratch_load_b32 v101, off, off offset:244
	scratch_load_b32 v136, off, off offset:248
	scratch_load_b32 v21, off, off offset:252
	scratch_load_b32 v37, off, off offset:256
	scratch_load_b32 v139, off, off offset:260
	scratch_load_b32 v140, off, off offset:264
	scratch_load_b32 v142, off, off offset:268
	scratch_load_b32 v144, off, off offset:272
	scratch_load_b32 v22, off, off offset:276
	scratch_load_b32 v23, off, off offset:280
	scratch_load_b32 v36, off, off offset:284
	scratch_load_b32 v145, off, off offset:288
	scratch_load_b32 v149, off, off offset:292
	scratch_load_b32 v153, off, off offset:296
	scratch_load_b32 v20, off, off offset:300
	scratch_load_b32 v24, off, off offset:304
	scratch_load_b32 v26, off, off offset:308
	scratch_load_b32 v35, off, off offset:312
	scratch_load_b32 v103, off, off offset:220
	scratch_load_b32 v15, off, off offset:224
	scratch_load_b32 v16, off, off offset:228
	scratch_load_b32 v55, off, off offset:212
	scratch_load_b32 v56, off, off offset:216
	v_dual_mov_b32 v11, v127 :: v_dual_mov_b32 v174, v217
	v_dual_mov_b32 v13, v143 :: v_dual_mov_b32 v176, v218
	v_dual_mov_b32 v148, v219 :: v_dual_mov_b32 v189, v172
	v_dual_mov_b32 v185, v203 :: v_dual_mov_b32 v190, v138
	v_mov_b32_e32 v196, v188
	v_dual_mov_b32 v124, v125 :: v_dual_mov_b32 v127, v46
	v_mov_b32_e32 v125, v51
	v_mov_b32_e32 v143, v157
	v_dual_mov_b32 v138, v93 :: v_dual_mov_b32 v151, v183
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v25, 0x200, v15
	v_or_b32_e32 v27, 0x400, v15
	v_or_b32_e32 v28, 0x600, v15
	v_or_b32_e32 v29, 0x800, v15
	v_or_b32_e32 v30, 0xa00, v15
	v_or_b32_e32 v19, 0xc00, v15
	v_or_b32_e32 v32, 0xe00, v15
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v34, 0x200, v16
	v_or_b32_e32 v38, 0x400, v16
.LBB0_7:                                ; %Flow1053
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v14, off offset:324
	scratch_store_b32 off, v227, off offset:320
	scratch_store_b32 off, v224, off offset:316
	scratch_store_b32 off, v13, off offset:312
	scratch_store_b32 off, v181, off offset:308
	scratch_store_b32 off, v12, off offset:304
	scratch_store_b32 off, v40, off offset:12
	scratch_store_b32 off, v11, off offset:300
	scratch_store_b32 off, v129, off offset:296
	scratch_store_b32 off, v9, off offset:292
	scratch_store_b32 off, v8, off offset:288
	scratch_store_b32 off, v134, off offset:284
	scratch_store_b32 off, v209, off offset:280
	scratch_store_b32 off, v6, off offset:4
	scratch_store_b32 off, v0, off
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v0, s7, v56
	s_mul_i32 s4, s33, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s0, 0
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v10, 0, v15
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v51, 0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v0, s4, v0, 1
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v9, 0, v17
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v12, 0, v18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	scratch_store_b32 off, v39, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v147, v226 :: v_dual_mov_b32 v220, v223
	v_dual_mov_b32 v218, v187 :: v_dual_mov_b32 v133, v178
	buffer_load_u16 v31, v0, s[28:31], 0 offen
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[7:8], v10 offset:8192
	ds_load_b64 v[5:6], v51 offset:8192
	ds_load_b64 v[3:4], v9 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_b64 v[1:2], v12 offset:8192
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v146, v221 :: v_dual_mov_b32 v225, v211
	v_dual_mov_b32 v106, v186 :: v_dual_mov_b32 v217, v197
	v_dual_mov_b32 v102, v207 :: v_dual_mov_b32 v211, v53
	v_dual_mov_b32 v68, v200 :: v_dual_mov_b32 v135, v49
	v_dual_mov_b32 v216, v198 :: v_dual_mov_b32 v141, v52
	v_dual_mov_b32 v166, v50 :: v_dual_mov_b32 v93, v47
	v_cmp_ne_u32_e64 s0, 1, v0
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v35, 0, v35
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v26, 0, v26
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v24, 0, v24
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v20, 0, v20
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v45, 0, v153
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v46, 0, v149
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v43, 0, v145
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v36, 0, v36
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v23, 0, v23
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v22, 0, v22
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v18, 0, v144
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v16, 0, v142
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v14, 0, v140
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v47, 0, v139
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v37, 0, v37
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v21, 0, v21
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v17, 0, v136
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v15, 0, v101
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v13, 0, v41
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v145, 0, v38
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v11, 0, v34
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v149, 0, v32
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v19, 0, v19
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v136, 0, v30
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v140, 0, v29
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v142, 0, v28
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v139, 0, v27
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v134, 0, v25
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v158, 0
	v_mov_b32_e32 v161, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v10
	ds_load_b64 v[29:30], v51
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v233, s11 :: v_dual_mov_b32 v232, s10
	v_dual_mov_b32 v231, s9 :: v_dual_mov_b32 v230, s8
	v_dual_mov_b32 v229, s7 :: v_dual_mov_b32 v228, s6
	v_dual_mov_b32 v227, s5 :: v_dual_mov_b32 v226, s4
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v9
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[29:30], v[5:6], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[27:28], v[3:4], v[158:165] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v12
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[27:28], v[1:2], v[158:165] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v134
	ds_load_b64 v[29:30], v11
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v213, v158
	v_cvt_f32_i32_e32 v214, v159
	v_cvt_f32_i32_e32 v207, v160
	v_cvt_f32_i32_e32 v208, v161
	v_cvt_f32_i32_e32 v209, v162
	v_cvt_f32_i32_e32 v212, v163
	v_cvt_f32_i32_e32 v203, v164
	v_cvt_f32_i32_e32 v205, v165
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v47
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[29:30], v[5:6], v[234:241] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[3:4], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v43
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[1:2], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v139
	ds_load_b64 v[29:30], v145
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v193, v234
	v_cvt_f32_i32_e32 v192, v235
	v_cvt_f32_i32_e32 v200, v236
	v_cvt_f32_i32_e32 v199, v237
	v_cvt_f32_i32_e32 v201, v238
	v_cvt_f32_i32_e32 v202, v239
	v_cvt_f32_i32_e32 v197, v240
	v_cvt_f32_i32_e32 v198, v241
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[29:30], v[5:6], v[234:241] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[3:4], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v46
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[1:2], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v142
	ds_load_b64 v[29:30], v13
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v188, v234
	v_cvt_f32_i32_e32 v187, v235
	v_cvt_f32_i32_e32 v178, v236
	v_cvt_f32_i32_e32 v180, v237
	v_cvt_f32_i32_e32 v184, v238
	v_cvt_f32_i32_e32 v186, v239
	v_cvt_f32_i32_e32 v175, v240
	v_cvt_f32_i32_e32 v179, v241
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[29:30], v[5:6], v[234:241] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[3:4], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v45
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[1:2], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v140
	ds_load_b64 v[29:30], v15
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v170, v234
	v_cvt_f32_i32_e32 v172, v235
	v_cvt_f32_i32_e32 v154, v236
	v_cvt_f32_i32_e32 v153, v237
	v_cvt_f32_i32_e32 v157, v238
	v_cvt_f32_i32_e32 v169, v239
	v_cvt_f32_i32_e32 v144, v240
	v_cvt_f32_i32_e32 v194, v241
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v18
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[29:30], v[5:6], v[234:241] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[3:4], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[1:2], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v136
	ds_load_b64 v[29:30], v17
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v128, v234
	v_cvt_f32_i32_e32 v129, v235
	v_cvt_f32_i32_e32 v53, v236
	v_cvt_f32_i32_e32 v191, v237
	v_cvt_f32_i32_e32 v54, v238
	v_cvt_f32_i32_e32 v101, v239
	v_cvt_f32_i32_e32 v52, v240
	v_cvt_f32_i32_e32 v183, v241
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v22
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[29:30], v[5:6], v[234:241] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[3:4], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v24
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[1:2], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v19
	ds_load_b64 v[29:30], v21
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v49, v234
	v_cvt_f32_i32_e32 v50, v235
	v_cvt_f32_i32_e32 v40, v236
	v_cvt_f32_i32_e32 v39, v237
	v_cvt_f32_i32_e32 v41, v238
	v_cvt_f32_i32_e32 v44, v239
	v_cvt_f32_i32_e32 v34, v240
	v_cvt_f32_i32_e32 v38, v241
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v23
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[29:30], v[5:6], v[234:241] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[3:4], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v26
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[27:28], v[1:2], v[234:241] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v149
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v30, v234
	v_cvt_f32_i32_e32 v32, v235
	v_cvt_f32_i32_e32 v164, v236
	v_cvt_f32_i32_e32 v163, v237
	v_cvt_f32_i32_e32 v181, v238
	v_cvt_f32_i32_e32 v29, v239
	v_cvt_f32_i32_e32 v159, v240
	v_cvt_f32_i32_e32 v162, v241
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[27:28], v[7:8], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v37
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[27:28], v[5:6], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[27:28], v[3:4], v[226:233] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[27:28], v35
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[27:28], v[1:2], v[226:233] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v226
	v_cvt_f32_i32_e32 v27, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v160, v228
	v_cvt_f32_i32_e32 v161, v229
	v_cvt_f32_i32_e32 v165, v230
	v_cvt_f32_i32_e32 v0, v231
	v_cvt_f32_i32_e32 v28, v232
	v_cvt_f32_i32_e32 v158, v233
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v214, off offset:276
	scratch_store_b32 off, v213, off offset:272
	scratch_store_b32 off, v212, off offset:268
	scratch_store_b32 off, v209, off offset:264
	scratch_store_b32 off, v208, off offset:260
	scratch_store_b32 off, v207, off offset:256
	scratch_store_b32 off, v205, off offset:252
	scratch_store_b32 off, v203, off offset:248
	scratch_store_b32 off, v202, off offset:244
	scratch_store_b32 off, v201, off offset:240
	scratch_store_b32 off, v200, off offset:236
	scratch_store_b32 off, v199, off offset:232
	scratch_store_b32 off, v198, off offset:228
	scratch_store_b32 off, v197, off offset:224
	scratch_store_b32 off, v194, off offset:220
	scratch_store_b32 off, v193, off offset:216
	scratch_store_b32 off, v192, off offset:212
	scratch_store_b32 off, v191, off offset:180
	scratch_store_b32 off, v188, off offset:176
	scratch_store_b32 off, v187, off offset:172
	scratch_store_b32 off, v186, off offset:168
	scratch_store_b32 off, v184, off offset:164
	scratch_store_b32 off, v183, off offset:160
	scratch_store_b32 off, v181, off offset:156
	scratch_store_b32 off, v180, off offset:152
	scratch_store_b32 off, v179, off offset:148
	scratch_store_b32 off, v178, off offset:144
	scratch_store_b32 off, v175, off offset:140
	scratch_store_b32 off, v172, off offset:136
	scratch_store_b32 off, v170, off offset:132
	scratch_store_b32 off, v169, off offset:128
	scratch_store_b32 off, v157, off offset:124
	s_clause 0x1a                           ; 108-byte Folded Spill
	scratch_store_b32 off, v154, off offset:120
	scratch_store_b32 off, v153, off offset:116
	scratch_store_b32 off, v28, off offset:112
	scratch_store_b32 off, v144, off offset:108
	scratch_store_b32 off, v129, off offset:104
	scratch_store_b32 off, v128, off offset:100
	scratch_store_b32 off, v101, off offset:96
	scratch_store_b32 off, v54, off offset:92
	scratch_store_b32 off, v53, off offset:88
	scratch_store_b32 off, v52, off offset:84
	scratch_store_b32 off, v50, off offset:80
	scratch_store_b32 off, v49, off offset:76
	scratch_store_b32 off, v44, off offset:72
	scratch_store_b32 off, v41, off offset:68
	scratch_store_b32 off, v40, off offset:64
	scratch_store_b32 off, v39, off offset:60
	scratch_store_b32 off, v38, off offset:56
	scratch_store_b32 off, v34, off offset:52
	scratch_store_b32 off, v32, off offset:48
	scratch_store_b32 off, v30, off offset:44
	scratch_store_b32 off, v29, off offset:40
	scratch_store_b32 off, v27, off offset:36
	scratch_store_b32 off, v25, off offset:32
	scratch_store_b32 off, v0, off offset:28
	scratch_store_b32 off, v110, off offset:24
	scratch_store_b32 off, v109, off offset:20
	scratch_store_b32 off, v108, off offset:16
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v44, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[27:28], v10 offset:4096
	ds_load_b64 v[29:30], v51 offset:4096
	ds_load_b64 v[9:10], v9 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_dual_mov_b32 v0, v158 :: v_dual_mov_b32 v49, v159
	v_dual_mov_b32 v50, v160 :: v_dual_mov_b32 v51, v161
	v_dual_mov_b32 v109, v162 :: v_dual_mov_b32 v110, v163
	v_dual_mov_b32 v128, v164 :: v_dual_mov_b32 v129, v165
	v_dual_mov_b32 v165, s11 :: v_dual_mov_b32 v164, s10
	v_dual_mov_b32 v163, s9 :: v_dual_mov_b32 v162, s8
	v_dual_mov_b32 v161, s7 :: v_dual_mov_b32 v160, s6
	v_dual_mov_b32 v159, s5 :: v_dual_mov_b32 v158, s4
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[27:28], v[7:8], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[29:30], v[5:6], v[226:233] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[3:4], v[226:233] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v12 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[1:2], v[226:233] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v134 offset:4096
	ds_load_b64 v[11:12], v11 offset:4096
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v33, v226
	v_cvt_f32_i32_e32 v40, v227
	v_cvt_f32_i32_e32 v39, v228
	v_cvt_f32_i32_e32 v25, v229
	v_cvt_f32_i32_e32 v34, v230
	v_cvt_f32_i32_e32 v38, v231
	v_cvt_f32_i32_e32 v32, v232
	v_cvt_f32_i32_e32 v28, v233
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[7:8], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v47 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[11:12], v[5:6], v[226:233] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[3:4], v[226:233] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v43 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[1:2], v[226:233] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v139 offset:4096
	ds_load_b64 v[11:12], v145 offset:4096
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v30, v226
	v_cvt_f32_i32_e32 v27, v227
	v_cvt_f32_i32_e32 v41, v228
	v_cvt_f32_i32_e32 v101, v229
	v_cvt_f32_i32_e32 v255, v230
	v_cvt_f32_i32_e32 v29, v231
	v_cvt_f32_i32_e32 v253, v232
	v_cvt_f32_i32_e32 v254, v233
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[7:8], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v14 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[11:12], v[5:6], v[226:233] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[3:4], v[226:233] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v46 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[1:2], v[226:233] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v142 offset:4096
	ds_load_b64 v[11:12], v13 offset:4096
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v251, v226
	v_cvt_f32_i32_e32 v252, v227
	v_cvt_f32_i32_e32 v249, v228
	v_cvt_f32_i32_e32 v250, v229
	v_cvt_f32_i32_e32 v247, v230
	v_cvt_f32_i32_e32 v248, v231
	v_cvt_f32_i32_e32 v245, v232
	v_cvt_f32_i32_e32 v246, v233
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[7:8], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v16 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[11:12], v[5:6], v[226:233] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[3:4], v[226:233] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v45 offset:4096
	ds_load_b64 v[43:44], v140 offset:4096
	ds_load_b64 v[45:46], v15 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[9:10], v[1:2], v[226:233] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[7:8], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[43:44], v18 offset:4096
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v242, v229
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[5:6], v[9:16] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v239, v230
	v_cvt_f32_i32_e32 v240, v231
	v_cvt_f32_i32_e32 v237, v232
	v_cvt_f32_i32_e32 v238, v233
	v_cvt_f32_i32_e32 v243, v226
	v_cvt_f32_i32_e32 v244, v227
	v_cvt_f32_i32_e32 v241, v228
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[3:4], v[9:16] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[43:44], v20 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[1:2], v[9:16] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[43:44], v136 offset:4096
	ds_load_b64 v[17:18], v17 offset:4096
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v235, v9
	v_cvt_f32_i32_e32 v236, v10
	v_cvt_f32_i32_e32 v233, v11
	v_cvt_f32_i32_e32 v234, v12
	v_cvt_f32_i32_e32 v231, v13
	v_cvt_f32_i32_e32 v232, v14
	v_cvt_f32_i32_e32 v229, v15
	v_cvt_f32_i32_e32 v230, v16
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[7:8], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[5:6], v[9:16] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[17:18], v22 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[3:4], v[9:16] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[17:18], v24 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[1:2], v[9:16] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[17:18], v19 offset:4096
	ds_load_b64 v[19:20], v21 offset:4096
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v226, v9
	v_cvt_f32_i32_e32 v228, v10
	v_cvt_f32_i32_e32 v224, v11
	v_cvt_f32_i32_e32 v227, v12
	v_cvt_f32_i32_e32 v219, v13
	v_cvt_f32_i32_e32 v223, v14
	v_cvt_f32_i32_e32 v215, v15
	v_cvt_f32_i32_e32 v221, v16
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[7:8], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[17:18], v23 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[5:6], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[3:4], v[9:16] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[17:18], v26 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[1:2], v[9:16] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v213, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v214, v10
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[9:10], v149 offset:4096
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v208, v11
	v_cvt_f32_i32_e32 v212, v12
	v_cvt_f32_i32_e32 v203, v13
	v_cvt_f32_i32_e32 v108, v14
	v_cvt_f32_i32_e32 v53, v15
	v_cvt_f32_i32_e32 v202, v16
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[9:10], v[7:8], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[7:8], v37 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[7:8], v[5:6], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[5:6], v36 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[5:6], v[3:4], v[158:165] neg_lo:[1,1,0]
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	ds_load_b64 v[3:4], v35 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[158:165], v[3:4], v[1:2], v[158:165] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v197, v158
	v_mov_b32_e32 v158, v0
	v_cvt_f32_i32_e32 v198, v159
	v_mov_b32_e32 v159, v49
	v_cvt_f32_i32_e32 v52, v160
	v_mov_b32_e32 v160, v50
	v_cvt_f32_i32_e32 v54, v161
	v_mov_b32_e32 v161, v51
	v_cvt_f32_i32_e32 v186, v162
	v_mov_b32_e32 v162, v109
	v_cvt_f32_i32_e32 v50, v163
	v_mov_b32_e32 v163, v110
	v_cvt_f32_i32_e32 v49, v164
	v_mov_b32_e32 v164, v128
	v_cvt_f32_i32_e32 v44, v165
	v_mov_b32_e32 v165, v129
.LBB0_11:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s3, s1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s1, s26, s0
	s_mov_b32 s11, 0x31027000
	.loc	1 235 35 is_stmt 1              ; generate_amdgcn.py:235:35
	s_add_i32 s3, s1, s27
	s_mov_b32 s10, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v2, s3, v103, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s8, s14
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v149.h, v31.l
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v149.l, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v109, s1, v103, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v2, s2
	s_mov_b32 s5, 0x76543210
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s33, s33, s27
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	s_and_b32 s25, s25, 0xffff
	v_and_b32_e32 v35, 16, v55
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v1, v33, v149
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v31, v159, v149
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v33, v165, v149 :: v_dual_lshlrev_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v1, v0, v147
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v147, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v3
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v3, null, v1, v1, v0
	v_rcp_f32_e32 v4, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v6, v5, v4
	v_fma_f32 v7, -v3, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, v7, v4
	v_fma_f32 v3, -v3, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v3, v3, v4, v6
	v_div_fixup_f32 v1, v3, v1, v0
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v3, v40, v149 :: v_dual_add_nc_u32 v0, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v3, v0, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v220, v0, s2
	scratch_load_b32 v220, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v0
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v3, v3, v4
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v4, null, v3, v3, v0
	v_rcp_f32_e32 v5, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v6, v5
	v_div_scale_f32 v6, vcc_lo, v0, v3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v8, -v4, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v8, v5
	v_fma_f32 v4, -v4, v7, v6
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v6, v25, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v4, v4, v5, v7
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v5, 12, v2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v6, v5, v218
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v218, v5, s2
	scratch_load_b32 v218, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v5, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v7, 1.0, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v5, null, v7, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v8, v5
	v_fma_f32 v9, -v5, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v9, v8
	v_div_scale_f32 v9, vcc_lo, v6, v7, v6
	v_mul_f32_e32 v10, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v5, v10, v9
	v_fmac_f32_e32 v10, v11, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v5, v10, v9
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v9, v39, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v8, v5, v8, v10
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v5, 8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v5, v9, v5, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v146, v5, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v5, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v5, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v5
	v_fma_f32 v12, -v5, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v13, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v5, v13, v12
	v_fmac_f32_e32 v13, v14, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v13, v12
	v_div_fmas_f32 v11, v5, v11, v13
	v_div_fixup_f32 v5, v4, v3, v0
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v3, v38, v149 :: v_dual_add_nc_u32 v0, 20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v3, v0, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v133, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v3, null, v12, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v4, v3
	v_fma_f32 v13, -v3, v4, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v13, v4
	v_div_scale_f32 v13, vcc_lo, v0, v12, v0
	v_mul_f32_e32 v14, v13, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v3, v14, v13
	v_fmac_f32_e32 v14, v15, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v14, v13
	v_div_fmas_f32 v13, v3, v4, v14
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v4, 16, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v8, v7, v6
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v6, v34, v149
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v34, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v200, v13, v12, v0
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_add_nc_u32_e32 v0, 24, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v32, v149
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v32, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v34, v34, v149
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v32, v32, v149
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v4, v6, v4, v132
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v132, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v105
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v105, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v12, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v7, 1.0, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v4, null, v7, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v8, v4
	v_fma_f32 v14, -v4, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v14, v8
	v_div_scale_f32 v14, vcc_lo, v6, v7, v6
	v_mul_f32_e32 v15, v14, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v4, v15, v14
	v_fmac_f32_e32 v15, v16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v4, v15, v14
	v_div_fmas_f32 v8, v4, v8, v15
	v_div_fixup_f32 v4, v11, v10, v9
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v10, v28, v149 :: v_dual_add_nc_u32 v9, 28, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v207, v8, v7, v6
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v6, 36, v2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v7, v27, v149
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v9, v10, v9, v106
	v_fma_f32 v6, v7, v6, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v106, v9, s2
	v_cndmask_b32_e64 v7, v104, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	v_mul_f32_e32 v6, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v11
	v_fma_f32 v15, -v11, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v11, v16, v15
	v_fmac_f32_e32 v16, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v16, v15
	v_div_fmas_f32 v11, v11, v14, v16
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v0
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v13
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v0
	v_rcp_f32_e32 v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v13, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v13, -v13, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v14, v16
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v6, v6
	v_ldexp_f32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v14, 1.0, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v6, null, v14, v14, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v8, v6
	v_fma_f32 v15, -v6, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v15, v8
	v_div_scale_f32 v15, vcc_lo, v7, v14, v7
	v_mul_f32_e32 v16, v15, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v6, v16, v15
	v_fmac_f32_e32 v16, v17, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v16, v15
	v_div_fmas_f32 v15, v6, v8, v16
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v8, 32, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v11, v10, v9
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v9, v30, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v15, v14, v7
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v15, v41, v149 :: v_dual_add_nc_u32 v14, 40, v2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v8, v9, v8, v102
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v102, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v15, v14, v68
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v68, v14, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v8
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v8, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v8
	v_fma_f32 v16, -v8, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v16, v11
	v_div_scale_f32 v16, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v17, v16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v8, v17, v16
	v_fmac_f32_e32 v17, v18, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v17, v16
	v_div_fmas_f32 v11, v8, v11, v17
	v_div_fixup_f32 v8, v13, v12, v0
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 44, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v101, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v205, v11, v10, v9
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v9, 52, v2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v10, v29, v149
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_clause 0x1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v225
	v_fma_f32 v9, v10, v9, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v225, v0, s2
	scratch_load_b32 v225, off, off offset:308 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, v67, v9, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v0
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v13
	v_fma_f32 v17, -v13, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v12, v0
	v_mul_f32_e32 v18, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v13, v18, v17
	v_fmac_f32_e32 v18, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v18, v17
	v_div_fmas_f32 v13, v13, v16, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v30, v13, v12, v0
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 48, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v255, v149
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v19, v18
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v201, v16, v15, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v15, v254, v149 :: v_dual_add_nc_u32 v14, 60, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v10, v10
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v10, v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v11
	v_fma_f32 v18, -v11, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v11, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v19, v18
	v_div_fmas_f32 v11, v11, v17, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v199, v11, v10, v9
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v10, v253, v149 :: v_dual_add_nc_u32 v9, 56, v2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v217
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v217, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v0
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v13
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v0
	v_rcp_f32_e32 v17, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v13, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v13, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v13, -v13, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v13, v13, v17, v19
	v_div_fixup_f32 v209, v13, v12, v0
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0x44, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v252, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v15, v14, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v216, v14, s2
	scratch_load_b32 v216, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_ldexp_f32 v15, v15, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v9, v10, v9, v211
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v211, v9, s2
	scratch_load_b32 v211, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v17, v16
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v19, v18
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v194, v16, v15, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v11
	v_fma_f32 v18, -v11, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v11, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v19, v18
	v_div_fmas_f32 v11, v11, v17, v19
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v141
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v141, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v0
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v13
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v0
	v_rcp_f32_e32 v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v13, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v13, -v13, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v251, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v13, v13, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v14, 64, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v192, v13, v12, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_add_nc_u32_e32 v0, 0x54, v2
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v15, v14, v173
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v173, v14, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v14
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v14, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v250, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v17, 0x4c, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v193, v16, v15, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v18, v17, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v171, v17, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v249, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0x48, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v188, v19, v18, v17
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v210
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v210, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v210, v11, v10, v9
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v9, v248, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v23, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v168, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v9
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v25, v24
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v191, v22, v21, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v0
	v_fma_f32 v12, -v0, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v13, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v0, v13, v12
	v_fmac_f32_e32 v13, v14, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v13, v12
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v247, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v0, v11, v13
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0x50, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v187, v11, v10, v9
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v9, v243, v149
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v167
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v167, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v12
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v13
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v13, v13, v12
	v_rcp_f32_e32 v14, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v0, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v12, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v0, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v0, -v0, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v246, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v14, v0, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0x5c, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v184, v14, v13, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v15, v0, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v166, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v16, 1.0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v0
	v_fma_f32 v18, -v0, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v15, v16, v15
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v0, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v245, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v17, v0, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0x58, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v183, v17, v16, v15
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v18, v0, v156
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v156, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v0
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v0, v18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v244, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0x64, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v181, v19, v18, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_add_nc_u32_e32 v0, 0x60, v2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v155
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v155, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v135
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v135, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v25, v24
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v180, v22, v21, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v0
	v_fma_f32 v12, -v0, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v13, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v0, v13, v12
	v_fmac_f32_e32 v13, v14, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v13, v12
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v242, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v0, v11, v13
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0x6c, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v179, v11, v10, v9
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v9, v238, v149
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v48, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v12
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v13
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v13, v13, v12
	v_rcp_f32_e32 v14, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v0, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v12, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v0, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v0, -v0, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v241, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v14, v0, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0x68, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v170, v14, v13, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v15, v0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v93, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v0, v15, v0
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v240, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v17, 0x74, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v172, v16, v15, v0
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_nc_u32_e32 v0, 0x7c, v2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v18, v17, v152
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v152, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v222
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v222, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v0, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v239, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0x70, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v178, v19, v18, v17
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v150
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v150, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v175, v22, v21, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v9
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v10
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v10, v10, v9
	v_rcp_f32_e32 v11, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v0, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v13, v12, v11
	v_fma_f32 v14, -v0, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v11
	v_fma_f32 v0, -v0, v13, v12
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v237, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v0, v11, v13
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0x78, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v169, v11, v10, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v9, v232, v149
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v220, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v0, v12, v0
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v13, v16, v15
	v_fmac_f32_e32 v16, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v13, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v236, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v13, v13, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v14, 0x84, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v157, v13, v12, v0
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_add_nc_u32_e32 v0, 0x94, v2
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v15, v14, v218
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v218, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v216
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v216, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v9, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v235, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v17, 0x80, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v153, v16, v15, v14
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v18, v17, v225
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v225, v17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v17
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v234, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0x8c, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v154, v19, v18, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v42, v20, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v24, v233, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v23, 0x88, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v144, v22, v21, v20
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v23, v24, v23, v151
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v151, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v29, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v26
	v_fma_f32 v25, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v151, v25, v24, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v0
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v10, null, v9, v9, v0
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v13, v12, v11
	v_fma_f32 v14, -v10, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v11
	v_fma_f32 v10, -v10, v13, v12
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v231, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v10, v10, v11, v13
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v11, 0x90, v2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v11, v12, v11, v138
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v138, v11, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v138, v10, v9, v0
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v9, v230, v149 :: v_dual_add_nc_u32 v0, 0x9c, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v11, v12, v11
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v13, v16, v15
	v_fmac_f32_e32 v16, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v16, v15
	v_div_fmas_f32 v13, v13, v14, v16
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v143
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v143, v0, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v143, v13, v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v0
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v10, null, v9, v9, v0
	v_rcp_f32_e32 v14, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v10, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v10, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v10, -v10, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v229, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v10, v10, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v14, 0x98, v2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v15, v14, v137
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v137, v14, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v137, v10, v9, v0
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v9, v227, v149 :: v_dual_add_nc_u32 v0, 0xac, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v228, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v17, 0xa4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v211, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v9
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v18, v17, v131
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v131, v17, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v131, v16, v15, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v17
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v226, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0xa0, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v129, v19, v18, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v130, v20, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v25, v24
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v130, v22, v21, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v0
	v_fma_f32 v12, -v0, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v13, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v0, v13, v12
	v_fmac_f32_e32 v13, v14, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v13, v12
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v224, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v0, v11, v13
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0xa8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v127, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v13, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v0
	v_fma_f32 v15, -v0, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v12, v13, v12
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v0, v16, v15
	v_fmac_f32_e32 v16, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v223, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v14, v0, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0xb4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v15, v0, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v126, v0, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v126, v14, v13, v12
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v16, 1.0, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v0
	v_fma_f32 v18, -v0, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v15, v16, v15
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v0, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v219, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v17, v0, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0xb0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v128, v17, v16, v15
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v18, v0, v125
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v125, v0, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v125, v11, v10, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v9, v214, v149 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v0
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v0, v18, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v221, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0xbc, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v127, v19, v18, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_add_nc_u32_e32 v0, 0xc4, v2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v124
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v124, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v122
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v122, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v9, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v25, v24
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v24, v215, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v23, 0xb8, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v124, v22, v21, v20
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v23, v24, v23, v123
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v123, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, null, v24, v24, v23
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v23, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v26
	v_fma_f32 v29, -v25, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v26
	v_fma_f32 v25, -v25, v28, v27
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	scratch_load_b32 v27, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v25, v25, v26, v28
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	scratch_load_b32 v28, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v123, v25, v24, v23
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v0
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v10, null, v9, v9, v0
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v13, v12, v11
	v_fma_f32 v14, -v10, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v11
	v_fma_f32 v10, -v10, v13, v12
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v213, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v10, v10, v11, v13
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v11, 0xc0, v2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v149
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, v28, v149 :: v_dual_lshlrev_b32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v11, v12, v11, v121
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v121, v11, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v121, v10, v9, v0
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v9, v203, v149 :: v_dual_add_nc_u32 v0, 0xd0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v11, v12, v11
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v13, v16, v15
	v_fmac_f32_e32 v16, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v13, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v212, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v13, v13, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v14, 0xcc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v122, v13, v12, v11
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v117
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v117, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, 0xbfb8aa3b, v0 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v15, v14, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v120, v14, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v208, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v17, 0xc8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v18, v17, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v119, v17, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v108, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0xd4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v119, v19, v18, v17
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v118
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v118, v20, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v118, v16, v15, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v23
	v_fma_f32 v26, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v23
	v_fma_f32 v22, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v120, v22, v21, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v0
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v10, null, v9, v9, v0
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v13, v12, v11
	v_fma_f32 v14, -v10, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v11
	v_fma_f32 v10, -v10, v13, v12
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v202, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v10, v10, v11, v13
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v11, 0xdc, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v117, v10, v9, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v9, v54, v149 :: v_dual_add_nc_u32 v0, 0xec, v2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v11, v12, v11, v116
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v116, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v9, v0, v206
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v206, v0, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v9, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v13, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v11, v12, v11
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v13, v16, v15
	v_fmac_f32_e32 v16, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v13, v16, v15
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v53, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v13, v13, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v14, 0xd8, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v116, v13, v12, v11
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v15, v14, v115
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v115, v14, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v14
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v14, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v198, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v17, 0xe4, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v115, v16, v15, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v18, v17, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v114, v17, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v21, v197, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v20, 0xe0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v20, v21, v20, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v113, v20, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v113, v19, v18, v17
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v24, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v24, v23
	v_div_scale_f32 v24, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v25, v24, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v22, v25, v24
	v_fmac_f32_e32 v25, v26, v23
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	scratch_load_b32 v26, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v22, -v22, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v25
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v114, v22, v21, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v0
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v12, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v9, null, v12, v12, v0
	v_rcp_f32_e32 v10, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v9, v10, 1.0
	v_fmac_f32_e32 v10, v11, v10
	v_div_scale_f32 v11, vcc_lo, v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v13, v11, v10
	v_fma_f32 v14, -v9, v13, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v10
	v_fma_f32 v9, -v9, v13, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v13, v9, v10, v13
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v10, v52, v149 :: v_dual_add_nc_u32 v9, 0xe8, v2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v149
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v9, v10, v9, v111
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v111, v9, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v111, v13, v12, v0
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0xf4, v2
	scratch_load_b32 v13, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v12, v50, v149
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v11
	v_fma_f32 v15, -v11, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v11, v16, v15
	v_fmac_f32_e32 v16, v17, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v16, v15
	v_div_fmas_f32 v11, v11, v14, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v110, v11, v10, v9
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v11, off, off offset:24
	scratch_load_b32 v9, off, off offset:272
	scratch_load_b32 v10, off, off offset:20
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v12, v0, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v13, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v0, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v12
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v13
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v0, null, v13, v13, v12
	v_rcp_f32_e32 v14, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v0, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v12, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v0, v16, v15
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v9, v9, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v0, -v0, v16, v15
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v15, v186, v149
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v14, v0, v14, v16
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v0, 0xf0, v2
	scratch_load_b32 v16, off, off          ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v29, v14, v13, v12
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v12, off, off offset:312
	scratch_load_b32 v14, off, off offset:292
	scratch_load_b32 v13, off, off offset:288
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v0, v15, v0, v16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v16, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v0
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v16, null, v15, v15, v0
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v0, v15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v16, -v16, v19, v18
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v18, v44, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v17, v19
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v17, 0xfc, v2
	v_add_nc_u32_e32 v2, 0xf8, v2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v18, v17, v112
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v112, v17, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v112, v16, v15, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 4, v109
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:128
	scratch_load_b32 v16, off, off offset:124
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v17
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v17
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, null, v18, v18, v17
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v22, v21, v20
	v_fma_f32 v23, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v20
	v_fma_f32 v19, -v19, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v20, v49, v149
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v108, v19, v18, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v2, v20, v2, v107
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v19, off, off offset:96
	scratch_load_b32 v17, off, off offset:220
	scratch_load_b32 v18, off, off offset:108
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v107, v2, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v2
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v21, null, v20, v20, v2
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v2, v20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v23, v22
	v_fma_f32 v25, -v21, v24, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v22
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	scratch_load_b32 v25, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v21, -v21, v24, v23
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v23, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v21, v21, v22, v24
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:84
	scratch_load_b32 v24, off, off offset:68
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v107, v21, v20, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:276
	scratch_load_b32 v20, off, off offset:92
	scratch_load_b32 v21, off, off offset:160
	s_waitcnt vmcnt(12)
	v_mul_f32_e32 v15, v15, v149
	s_waitcnt vmcnt(11)
	v_mul_f32_e32 v16, v16, v149
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v19, v19, v149 :: v_dual_lshlrev_b32 v0, 16, v0
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v17, v17, v149
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v18, v18, v149
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v25, v25, v149
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v23, v23, v149
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v22, v22, v149
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v24, v24, v149
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v2, v2, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v149
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v21, v149
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v2, v0, v11
	.loc	1 232 26 is_stmt 1              ; generate_amdgcn.py:232:26
	v_or_b32_e32 v2, s0, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v11, v0, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v2, v2, s26, 1
	scratch_load_b32 v11, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v5, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v9, v2, v10
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	v_mul_f32_e32 v5, v5, v149
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v10, v2, s2
	scratch_load_b32 v10, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v1, v2, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v2, 20, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v9, v149 :: v_dual_lshlrev_b32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v5, v2, v10
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v5, 16, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v10, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v2, v2, v200
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v9, v5, v196
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e64 v9.h, v149.l
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v196, v5, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e64 v5.h, v149.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v0, v0, v207 :: v_dual_and_b32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v5, v1, v5, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e64 v1.h, v149.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v1, v2, v1, 0x7fff
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e64 v2.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s1
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v0, v2, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_mov_b32_e32 v5, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_cndmask_b32 v5, 0x3276, v5 :: v_dual_cndmask_b32 v2, v1, v0
	v_dual_cndmask_b32 v0, v0, v1 :: v_dual_mov_b32 v1, 0x5410
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v5, 8, v5
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	v_and_b32_e32 v5, 0x760076, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v5, v5, 4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v101, 0x7060706, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v5, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v103, 0x5040504, v1
	v_perm_b32 v1, v0, v2, v103
	v_perm_b32 v2, v0, v2, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 12, v109
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v9, v149
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v5, v5, v149 :: v_dual_lshlrev_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v5, v0, v195
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v5, 8, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v195, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v9, v5, v190
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v190, v5, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v3, v5, v4 :: v_dual_add_nc_u32 v4, 28, v109
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v5, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v9, v149
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v5, v5, v149 :: v_dual_lshlrev_b32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v5, v4, v189
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v5, 24, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v189, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v4, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v9, v5, v185
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e64 v9.h, v149.l
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v185, v5, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v5.l, v3.h
	v_mov_b16_e64 v5.h, v149.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v8, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v3, v5, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_mov_b16_e64 v3.h, v149.l
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v4, v3, 0x7fff
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e64 v4.h, v149.l
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v4, v0, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v5, off, off offset:216
	scratch_load_b32 v9, off, off offset:324
	scratch_load_b32 v10, off, off offset:224
	scratch_load_b32 v6, off, off offset:212
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v4, v0, v3, vcc_lo
	v_cndmask_b32_e32 v0, v3, v0, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v3, v4, v0, v103
	v_perm_b32 v4, v4, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 32, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v8, v8, v149
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v5, v5, v149
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v10, v10, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v6, v6, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v5, v0, v182
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v5, 36, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v182, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v205
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v6, v5, v177
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v6, 52, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v177, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v5, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v7, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v5, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v7, v149 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v7, v6, v176
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v7, 48, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v176, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v6, v199
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v6, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v8, v7, v174
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e64 v8.h, v149.l
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v174, v7, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e64 v7.h, v149.l
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v0, v7, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v5, v209
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v5.l, v6.h
	v_mov_b16_e64 v5.h, v149.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v5, v6, v5, 0x7fff
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e64 v6.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s3
	v_and_b32_e32 v6, 1, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v0, v6, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:236
	scratch_load_b32 v8, off, off offset:232
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v0, v5, vcc_lo
	v_cndmask_b32_e32 v0, v5, v0, vcc_lo
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v5, v6, v0, v103
	v_perm_b32 v6, v6, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 40, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v7, v7, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v7, v0, v148
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v7, 44, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v148, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v201
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v8, v7, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v8, 60, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v9, v7, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v9, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v7, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v30, v162, v149
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v9, v149 :: v_dual_lshlrev_b32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v9, v8, v12
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v9, 56, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v12, v8, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	scratch_load_b32 v12, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v8, v194
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v10, v9, v11
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v149.l
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v7, v10, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v11, v9, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v0.h
	v_mov_b16_e64 v9.h, v149.l
	scratch_load_b32 v11, off, off offset:296 ; 4-byte Folded Reload
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v0, v9, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v7, v210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e64 v7.h, v149.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v7, v8, v7, 0x7fff
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e64 v8.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s3
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:176
	scratch_load_b32 v10, off, off offset:172
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v8, v0, v7, vcc_lo
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo
	v_permlanex16_b32 v8, v8, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v7, v8, v0, v103
	v_perm_b32 v8, v8, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 64, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v9, v9, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v10, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v9, v0, v12
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v9, 0x44, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v12, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v12, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v193
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v10, v9, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v10, 0x54, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v11, v9, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v11, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v9, v192
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v11, v149 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v11, v10, v14
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v11, 0x50, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v14, v10, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	scratch_load_b32 v14, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v10, v187
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v12, v11, v13
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v12.l, v9.h
	v_mov_b16_e64 v12.h, v149.l
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v12, v9, v12, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v13, v11, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v11.l, v0.h
	v_mov_b16_e64 v11.h, v149.l
	scratch_load_b32 v13, off, off offset:280 ; 4-byte Folded Reload
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v0, v11, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v9, v184
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e64 v9.h, v149.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v9, v10, v9, 0x7fff
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e64 v10.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s3
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v0, v10, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:152
	scratch_load_b32 v12, off, off offset:144
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v10, v0, v9, vcc_lo
	v_cndmask_b32_e32 v0, v9, v0, vcc_lo
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v10, v0, v103
	v_perm_b32 v10, v10, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0x4c, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v11, v149 :: v_dual_lshlrev_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v11, v0, v14
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v11, 0x48, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v14, v0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v14, off, off offset:140 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v12, v149
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v188
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v14, v14, v149 :: v_dual_lshlrev_b32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v12, v11, v13
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v12, 0x5c, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v13, v11, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	scratch_load_b32 v13, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v11, v191
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v13, v149 :: v_dual_lshlrev_b32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v13, v12, v100
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v13, 0x58, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v100, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v14, v13, v99
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v14.l, v0.h
	v_mov_b16_e64 v14.h, v149.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v0, v14, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v12, v183
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v99, v13, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e64 v13.h, v149.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v11, v13, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v12, v181
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v12.l, v0.h
	v_mov_b16_e64 v12.h, v149.l
	v_cmp_o_f32_e64 s4, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v0, v12, 0x7fff
	v_mov_b16_e32 v0.l, v11.h
	v_mov_b16_e64 v0.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s3
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v11, v0, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s0
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:136
	scratch_load_b32 v14, off, off offset:132
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v12.l, 0x7fff, v0.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, v11, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v11, vcc_lo
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v0, v12, v103
	v_perm_b32 v12, v0, v12, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0x64, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v13, v13, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v13, v0, v98
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v13, 0x60, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v98, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v180
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v14, v13, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v14, 0x74, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v97, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v13, v13, v179
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v15, v14, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v15, 0x70, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v96, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v14, v178
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v14, v14
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v16, v15, v95
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e64 v16.h, v149.l
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v95, v15, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v15.l, v13.h
	v_mov_b16_e64 v15.h, v149.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v15, 1, v15
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v13, v15, 0x7fff
	v_mov_b16_e32 v13.l, v14.h
	v_mov_b16_e64 v13.h, v149.l
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v14, v13, 0x7fff
	v_mov_b16_e32 v14.l, v0.h
	v_mov_b16_e64 v14.h, v149.l
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v0, v14, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v16.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:120
	scratch_load_b32 v16, off, off offset:116
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v14, v0, v13, vcc_lo
	v_cndmask_b32_e32 v0, v13, v0, vcc_lo
	v_permlanex16_b32 v14, v14, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v14, v0, v103
	v_perm_b32 v14, v14, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0x68, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v16, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v15, v0, v204
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v15, 0x6c, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v204, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v172
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v16, v15, v94
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v16, 0x7c, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v94, v15, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v15, v15, v170
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v15, v15
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v16, v17, v16, v92
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v17, 0x78, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v92, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v16, v16, v169
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v18, v17, v91
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v18.l, v15.h
	v_mov_b16_e64 v18.h, v149.l
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v15, v18, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v91, v17, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v17.l, v0.h
	v_mov_b16_e64 v17.h, v149.l
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v0, v17, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v15, v157
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e64 v15.h, v149.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v16, v15, 0x7fff
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e64 v16.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s3
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v0, v16, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v17.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:104
	scratch_load_b32 v18, off, off offset:100
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v16, v0, v15, vcc_lo
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v16, v16, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v0, v103
	v_perm_b32 v16, v16, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0x84, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v17, v17, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v17, v0, v90
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v17, 0x80, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v90, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v153
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v18, v17, v89
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v18, 0x94, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v89, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v17, v154
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v19, v18, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v19, 0x90, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v88, v18, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v18, v138
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v20, v19, v87
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v149.l
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v20, v0, v20, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v87, v19, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e64 v19.h, v149.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v17, v19, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e64 v17.h, v149.l
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v18, v17, 0x7fff
	v_mov_b16_e32 v18.l, v0.h
	v_mov_b16_e64 v18.h, v149.l
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v0, v18, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:88
	scratch_load_b32 v20, off, off offset:180
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v18, v0, v17, vcc_lo
	v_cndmask_b32_e32 v0, v17, v0, vcc_lo
	v_permlanex16_b32 v18, v18, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v18, v0, v103
	v_perm_b32 v18, v18, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0x88, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v19, v0, v85
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v19, 0x8c, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v85, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v151
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v20, v19, v86
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v20, 0x9c, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v86, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v19, v19, v144
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v21, v20, v84
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v21, 0x98, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v84, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v20, v137
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v22, v21, v83
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v22.l, v19.h
	v_mov_b16_e64 v22.h, v149.l
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v19, v22, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v83, v21, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v21.l, v0.h
	v_mov_b16_e64 v21.h, v149.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v0, v21, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v19, v131
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v19.l, v20.h
	v_mov_b16_e64 v19.h, v149.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v20, v19, 0x7fff
	v_mov_b16_e32 v20.l, v0.h
	v_mov_b16_e64 v20.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s3
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v20, v0, v20, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v21.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:80
	scratch_load_b32 v22, off, off offset:76
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v20, v0, v19, vcc_lo
	v_cndmask_b32_e32 v0, v19, v0, vcc_lo
	v_permlanex16_b32 v20, v20, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v19, v20, v0, v103
	v_perm_b32 v20, v20, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0xa4, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v21, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v22, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v21, v0, v82
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v21, 0xa0, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v82, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v129
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v22, v21, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v22, 0xb4, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v81, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v21, v21, v130
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v23, v22, v80
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v23, 0xb0, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v80, v22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v22, v22, v128
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v24, v23, v79
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v149.l
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v79, v23, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v21.h
	v_mov_b16_e64 v23.h, v149.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v23, 1, v23
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v21, v23, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e64 v21.h, v149.l
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v22, v21, 0x7fff
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e64 v22.h, v149.l
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v22, v0, v22, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v23.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:64
	scratch_load_b32 v24, off, off offset:60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v22, v0, v21, vcc_lo
	v_cndmask_b32_e32 v0, v21, v0, vcc_lo
	v_permlanex16_b32 v22, v22, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v0, v103
	v_perm_b32 v22, v22, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0xa8, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v23, v23, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v23, v0, v78
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v23, 0xac, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v78, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v126
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v24, v23, v77
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v24, 0xbc, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v77, v23, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v23, v23, v125
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v23, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v25, v24, v76
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v25, 0xb8, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v76, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v24, v24, v124
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v24, v24
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v26, v25, v75
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.l, v23.h
	v_mov_b16_e64 v26.h, v149.l
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v23, v26, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v75, v25, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e64 v25.h, v149.l
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v23, v123
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v24.h
	v_mov_b16_e64 v23.h, v149.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v24, v23, 0x7fff
	v_mov_b16_e32 v24.l, v0.h
	v_mov_b16_e64 v24.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s3
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v24, v0, v24, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v26.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v25.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:48
	scratch_load_b32 v26, off, off offset:44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v24, v0, v23, vcc_lo
	v_cndmask_b32_e32 v0, v23, v0, vcc_lo
	v_permlanex16_b32 v24, v24, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v24, v0, v103
	v_perm_b32 v24, v24, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0xc4, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v149
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v25, v0, v73
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v25, 0xc0, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v73, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v121
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v26, v25, v74
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v26, 0xd4, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v74, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v25, v25, v122
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v27, v26, v72
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v27, 0xd0, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v72, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v26, v26, v120
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v26, v26
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v28, v27, v71
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v28.h, v149.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v71, v27, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e64 v27.h, v149.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v0, v0, v117 :: v_dual_and_b32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s4, v0, v0
	v_add3_u32 v27, v25, v27, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e64 v25.h, v149.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v26, v25, 0x7fff
	v_mov_b16_e32 v26.l, v0.h
	v_mov_b16_e64 v26.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s3
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v26, v0, v26, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v28.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v27.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v27, v164, v149
	v_mul_f32_e32 v28, v163, v149
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v26, v0, v25, vcc_lo
	v_cndmask_b32_e32 v0, v25, v0, vcc_lo
	v_permlanex16_b32 v26, v26, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v25, v26, v0, v103
	v_perm_b32 v26, v26, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0xc8, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v27, v0, v70
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v27, 0xcc, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v70, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v119
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v28, v27, v69
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v28, 0xdc, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v69, v27, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v27, v27, v118
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v30, v28, v66
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v30, 0xd8, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v66, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v28, v28, v116
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v28, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v31, v30, v65
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v31.l, v27.h
	v_mov_b16_e64 v31.h, v149.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v31, v27, v31, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v65, v30, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e64 v30.h, v149.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v0, v30, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v27, v115
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v27.l, v28.h
	v_mov_b16_e64 v27.h, v149.l
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v28, v27, 0x7fff
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e64 v28.h, v149.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v30.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:36
	scratch_load_b32 v31, off, off offset:32
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v28, v0, v27, vcc_lo
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo
	v_permlanex16_b32 v28, v28, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v27, v28, v0, v103
	v_perm_b32 v28, v28, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0xe4, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v30, v30, v149
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v31, v149 :: v_dual_lshlrev_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v30, v0, v64
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v30, 0xe0, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v64, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v113
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v31, v30, v63
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v31, 0xf4, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v63, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v30, v30, v114
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v30, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v32, v31, v60
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v32, 0xf0, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v60, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v29, v31, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v31.l, v30.h
	v_mov_b16_e64 v31.h, v149.l
	v_cmp_o_f32_e64 s3, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v30, v31, 0x7fff
	v_mov_b16_e32 v30.l, v29.h
	v_mov_b16_e64 v30.h, v149.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v29, v30, 0x7fff
	v_mov_b16_e64 v29.h, v149.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v33, v32, v59
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v33.l, v0.h
	v_mov_b16_e64 v33.h, v149.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v59, v32, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v32, v160, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v112
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v29, v0, v29, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v31, v161, v149
	v_mul_f32_e32 v33, v158, v149
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v30.l, 0x7fff, v29.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v29, v0, v30 :: v_dual_cndmask_b32 v0, v30, v0
	v_permlanex16_b32 v30, v29, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v29, v30, v0, v103
	v_perm_b32 v30, v30, v0, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v0, 0xec, v109
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v0, v31, v0, v62
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v31, 0xe8, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v62, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v0, v0, v111
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v32, v31, v61
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v32, 0xfc, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v61, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v31, v31, v110
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v31, v31
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v33, v32, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v33, 0xf8, v109
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v58, v32, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v32, v32, v108
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v33, v33, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v33, v34, v33, v57
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v0.h
	v_mov_b16_e64 v34.h, v149.l
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v0, v34, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v57, v33, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v33.l, v31.h
	v_mov_b16_e64 v33.h, v149.l
	v_cmp_o_f32_e64 s2, v32, v32
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v0, v0, v107 :: v_dual_and_b32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v33, v31, v33, 0x7fff
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e64 v31.h, v149.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v32, v31, 0x7fff
	v_mov_b16_e64 v32.h, v149.l
	v_mov_b16_e32 v32.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s2
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v32, v0, v32, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v34.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v33.h, s1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v33, 1, v35
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v34, 0x1e0, v55
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v32, v31, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v31, vcc_lo
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v31, s27, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	s_mov_b32 s27, s11
	v_permlanex16_b32 v0, v0, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v31, s33, s26, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s26, s10
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v33, v31, v33, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_perm_b32 v31, v0, v32, v103
	v_perm_b32 v32, v0, v32, v101
	v_add_nc_u32_e32 v34, 32, v33
	v_add_nc_u32_e32 v0, 64, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v35, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v35, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v34, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v0, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v4, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v1, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v2, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v3, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v4, s[24:27], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 332
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 332
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 37272
; TotalNumSgprs: 52
; NumVgprs: 256
; ScratchSize: 332
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 332
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 154
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
