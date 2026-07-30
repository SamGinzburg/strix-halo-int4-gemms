	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v7, 3, v0
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshrrev_b32_e32 v75, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v78, 15, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v76, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v3, 64, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s16, s13, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s13, s13, s12
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s16
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s13
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s17, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s15, s17
	s_xor_b32 s13, s2, s17
	s_cvt_f32_u32 s18, s15
	s_ashr_i32 s13, s13, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 56, v7
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s15
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s18
	s_abs_i32 s18, s2
	s_add_i32 s12, s6, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_hi_u32 s12, s18, s12
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s26, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_i32 s19, s12, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s18, s15
	s_cmp_ge_u32 s18, s15
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s18, s15
	s_cselect_b32 s15, s19, s12
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s18, s14, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s15, s15, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s19, s14, 0x7f
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s14, s14, s18
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s18, s15, s13
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s12, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s17, s18, s17
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s14, s14, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v8, s12, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s17
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[4:5], null, s14, v2, v[1:2]
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s22, s18, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s34, s18, 7
.Ltmp21:
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_add_i32 s18, s22, s23
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 6
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v8
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 64, v8
	.loc	1 191 34 is_stmt 1              ; generate_amdgcn.py:191:34
	s_mul_i32 s17, s22, s14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_mul_i32 s16, s18, s14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	s_add_i32 s17, s17, s12
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s20, s3, vcc_lo
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v8, s17, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s20
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s18, s33, s14
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_add_i32 s16, s16, s12
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v10, 0x80000000, v8, vcc_lo
	.loc	1 191 34 is_stmt 0              ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[5:6], null, s14, v3, v[1:2]
	.loc	1 189 34 is_stmt 1              ; generate_amdgcn.py:189:34
	v_add3_u32 v6, s12, s18, v4
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	v_add_nc_u32_e32 v4, s16, v4
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s19, 0xff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add_nc_u32_e32 v9, s17, v5
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	v_add_nc_u32_e32 v5, s16, v5
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_mov_b32 s16, -1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v12, 0x80000000, v9, vcc_lo
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_b64 v[8:9], v6, s[4:7], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x3
	buffer_load_b64 v[10:11], v10, s[24:27], 0 offen
	buffer_load_b64 v[12:13], v12, s[24:27], 0 offen
	buffer_load_b64 v[14:15], v4, s[24:27], 0 offen
	buffer_load_b64 v[16:17], v5, s[24:27], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v4, 56, v75
	v_lshlrev_b32_e32 v6, 2, v0
	v_lshlrev_b32_e32 v5, 5, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v4, v7, v4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v95, 0, v4
	v_lshlrev_b32_e32 v4, 6, v78
	s_waitcnt vmcnt(4)
	ds_store_b64 v95, v[8:9] offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v95, v[10:11], v[12:13] offset1:8
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v95, v[14:15], v[16:17] offset0:16 offset1:24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v8, 56, v6
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_or_b32 v80, 0x438, v6, v4
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_mov_b64 s[30:31], s[6:7]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_or3_b32 v79, v5, v8, v4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v84, 8, v80
	v_xor_b32_e32 v85, 16, v80
	v_xor_b32_e32 v86, 24, v80
	v_xor_b32_e32 v87, 32, v80
	v_xor_b32_e32 v88, 40, v80
	v_xor_b32_e32 v89, 48, v80
	v_xor_b32_e32 v91, 56, v80
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v81, 8, v79
	v_xor_b32_e32 v82, 16, v79
	v_xor_b32_e32 v83, 24, v79
	v_xor_b32_e32 v90, 32, v79
	v_xor_b32_e32 v92, 40, v79
	v_xor_b32_e32 v93, 48, v79
	v_xor_b32_e32 v94, 56, v79
	s_mov_b32 s16, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
.LBB0_3:                                ; %Flow321
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v96, 16, v7
	v_bfe_u32 v77, v0, 4, 1
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v68, 0
	s_lshl_b32 s1, s23, 1
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s0, s34, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v80, 0x438, v6, v4
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v6, 56, v6
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_lshl_b32 s17, s13, 8
	s_lshl_b32 s13, s13, 7
	s_max_i32 s16, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_or3_b32 v79, v5, v6, v4
	v_lshl_or_b32 v4, s15, 8, v76
	v_add3_u32 v6, s33, v96, v78
	s_lshl_b32 s15, s15, 7
	s_add_i32 s45, s12, 64
	s_add_i32 s18, s23, s15
	v_add_nc_u32_e32 v5, s1, v4
	v_subrev_nc_u32_e32 v100, s17, v4
	v_add_nc_u32_e32 v4, s18, v2
	v_mul_lo_u32 v10, s34, v6
	v_or_b32_e32 v7, s15, v3
	v_subrev_nc_u32_e32 v99, s17, v5
	v_add_nc_u32_e32 v5, 32, v6
	v_or_b32_e32 v6, s15, v2
	v_subrev_nc_u32_e32 v4, s13, v4
	v_subrev_nc_u32_e32 v7, s13, v7
	v_add_nc_u32_e32 v2, s33, v2
	v_mul_lo_u32 v9, s34, v5
	v_add_nc_u32_e32 v5, s18, v3
	v_subrev_nc_u32_e32 v6, s13, v6
	v_mad_u64_u32 v[3:4], null, s14, v4, s[12:13]
	v_xor_b32_e32 v94, 56, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v5, s13, v5
	v_sub_nc_u32_e32 v97, s14, v1
	s_lshl_b32 s44, s16, 6
	v_xor_b32_e32 v84, 8, v80
	v_xor_b32_e32 v85, 16, v80
	v_mad_u64_u32 v[4:5], null, s14, v5, s[12:13]
	v_mad_u64_u32 v[5:6], null, s14, v6, s[12:13]
	v_mad_u64_u32 v[6:7], null, s14, v7, s[12:13]
	v_mad_u64_u32 v[7:8], null, s14, v2, s[12:13]
	s_mov_b32 s12, 0
	v_add3_u32 v103, v3, v1, 64
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v98, 1, v77
	v_add3_u32 v104, v4, v1, 64
	v_add3_u32 v105, v5, v1, 64
	v_add3_u32 v106, v6, v1, 64
	v_add3_u32 v107, v7, v1, 64
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v86, 24, v80
	v_xor_b32_e32 v87, 32, v80
	v_xor_b32_e32 v88, 40, v80
	v_xor_b32_e32 v89, 48, v80
	v_xor_b32_e32 v91, 56, v80
	v_xor_b32_e32 v81, 8, v79
	v_xor_b32_e32 v82, 16, v79
	v_xor_b32_e32 v83, 24, v79
	v_xor_b32_e32 v90, 32, v79
	v_xor_b32_e32 v92, 40, v79
	v_xor_b32_e32 v93, 48, v79
	v_dual_mov_b32 v8, s19 :: v_dual_lshlrev_b32 v101, 1, v9
	v_dual_mov_b32 v7, s18 :: v_dual_lshlrev_b32 v102, 1, v10
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v108, 0, v94
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v6, s17
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v44, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[8:9]
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s35, s23, 2
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v109, v102, s[40:43], 0 offen
	buffer_load_u16 v110, v101, s[40:43], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	s_add_i32 s8, s45, s12
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v9, s12, v107
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s8, v97
	v_add_nc_u32_e32 v11, 0, v79
	v_add_nc_u32_e32 v127, 0, v85
	v_add_nc_u32_e32 v128, 0, v82
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v102, 2, v102
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_nc_u32 v10, 0, v80
	v_add_nc_u32_e32 v12, 0, v84
	v_add_nc_u32_e32 v13, 0, v81
	v_add_nc_u32_e32 v129, 0, v86
	buffer_load_b64 v[41:42], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[111:114], v10 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[115:118], v11 offset1:16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[119:122], v12 offset0:32 offset1:36
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[123:126], v13 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[111:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[113:114], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[111:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[113:114], v[1:8] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[111:114], v127 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[115:118], v128 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[119:120], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[121:122], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[119:120], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v119, 0, v87
	v_add_nc_u32_e32 v120, 0, v90
	v_add_nc_u32_e32 v121, 0, v88
	v_add_nc_u32_e32 v122, 0, v92
	v_add_nc_u32_e32 v123, 0, v89
	v_add_nc_u32_e32 v124, 0, v93
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[111:112], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[113:114], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[113:114], v[25:32] neg_lo:[1,1,0]
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v109, 16, v109
	v_add_nc_u32_e32 v130, 0, v83
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[111:114], v129 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[115:118], v130 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[111:112], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[113:114], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[113:114], v[25:32] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[111:114], v119 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[115:118], v120 offset1:16
	v_add_nc_u32_e32 v119, 0, v91
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[111:112], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[113:114], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[113:114], v[25:32] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[111:114], v121 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[115:118], v122 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[111:112], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[113:114], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[113:114], v[25:32] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[111:114], v123 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[115:118], v124 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[111:112], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[113:114], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[113:114], v[25:32] neg_lo:[1,1,0]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[111:114], v119 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[115:118], v108 offset1:16
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[111:112], v[17:24] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[111:112], v[9:16] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[113:114], v[33:40] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[113:114], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v120, v98, v100
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v112, v9
	v_cvt_f32_i32_e32 v113, v10
	v_cvt_f32_i32_e32 v114, v11
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v9, v120, s[36:39], 0 offen
	buffer_load_u16 v10, v120, s[36:39], 0 offen offset:4
	buffer_load_u16 v11, v120, s[36:39], 0 offen offset:8
	buffer_load_u16 v116, v120, s[36:39], 0 offen offset:12
	buffer_load_u16 v117, v120, s[36:39], 0 offen offset:16
	buffer_load_u16 v118, v120, s[36:39], 0 offen offset:20
	buffer_load_u16 v119, v120, s[36:39], 0 offen offset:24
	buffer_load_u16 v120, v120, s[36:39], 0 offen offset:28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v115, v12
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v12, 16, v110
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v17, v109, v17
	v_cvt_f32_i32_e32 v37, v37
	v_mul_f32_e32 v33, v12, v33
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v122, s12, v106
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v100, s35, v100
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v74, v33, v9
	v_dual_fmac_f32 v72, v17, v9 :: v_dual_mul_f32 v9, v12, v34
	v_fmac_f32_e32 v71, v9, v10
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v9, v109, v18
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v69, v9, v10 :: v_dual_lshlrev_b32 v10, 16, v11
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v9, v12, v35
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v66, v9, v10
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v9, v109, v19 :: v_dual_mul_f32 v36, v12, v36
	v_mul_f32_e32 v38, v12, v38
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v37, v12, v37 :: v_dual_lshlrev_b32 v116, 16, v116
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v26, v12, v26 :: v_dual_add_nc_u32 v121, s12, v105
	v_dual_mul_f32 v28, v12, v28 :: v_dual_add_nc_u32 v123, s12, v103
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v67, v36, v116 :: v_dual_lshlrev_b32 v36, 16, v117
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_dual_cndmask_b32 v110, 0x80000000, v121 :: v_dual_cndmask_b32 v121, 0x80000000, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v122, 0x80000000, v123, vcc_lo
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v62, v9, v10
	v_dual_fmac_f32 v58, v37, v36 :: v_dual_add_nc_u32 v33, v98, v99
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v20, v109, v20
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_clause 0x7
	buffer_load_u16 v17, v33, s[36:39], 0 offen
	buffer_load_u16 v123, v33, s[36:39], 0 offen offset:4
	buffer_load_u16 v34, v33, s[36:39], 0 offen offset:8
	buffer_load_u16 v35, v33, s[36:39], 0 offen offset:20
	buffer_load_u16 v18, v33, s[36:39], 0 offen offset:12
	buffer_load_u16 v124, v33, s[36:39], 0 offen offset:16
	buffer_load_u16 v19, v33, s[36:39], 0 offen offset:24
	buffer_load_u16 v33, v33, s[36:39], 0 offen offset:28
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b64 v[9:10], v110, s[24:27], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v30, v12, v30 :: v_dual_add_nc_u32 v111, s12, v104
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v39, v12, v39 :: v_dual_mul_f32 v22, v109, v22
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v40, v12, v40 :: v_dual_cndmask_b32 v111, 0x80000000, v111
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v25, v12, v25 :: v_dual_mul_f32 v24, v109, v24
	v_dual_mul_f32 v27, v12, v27 :: v_dual_mul_f32 v110, v109, v112
	v_dual_mul_f32 v29, v12, v29 :: v_dual_mul_f32 v114, v109, v114
	v_mul_f32_e32 v32, v12, v32
	v_dual_mul_f32 v31, v12, v31 :: v_dual_mul_f32 v112, v109, v113
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b64 v[11:12], v121, s[24:27], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v121, v109, v13
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v21, v109, v21
	v_mul_f32_e32 v23, v109, v23
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v113, v109, v115
	v_mul_f32_e32 v115, v109, v14
	v_mul_f32_e32 v125, v109, v16
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	buffer_load_b64 v[13:14], v122, s[24:27], 0 offen
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v54, v21, v36 :: v_dual_add_nc_u32 v99, s35, v99
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s12, s12, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s44, s12
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v117, 16, v119
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v60, v114, v34 :: v_dual_lshlrev_b32 v119, 16, v123
	.loc	1 209 29 is_stmt 0              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v109, v109, v15 :: v_dual_fmac_f32 v44, v39, v117
	.loc	1 197 35 is_stmt 1              ; generate_amdgcn.py:197:35
	buffer_load_b64 v[15:16], v111, s[24:27], 0 offen
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v64, v27, v34 :: v_dual_lshlrev_b32 v35, 16, v35
	v_dual_fmac_f32 v48, v125, v33 :: v_dual_lshlrev_b32 v111, 16, v118
	v_fmac_f32_e32 v68, v112, v119
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v118, 16, v120
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v120, 16, v124
	v_lshlrev_b32_e32 v17, 16, v17
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v46, v24, v118 :: v_dual_add_nc_u32 v101, 2, v101
	v_fmac_f32_e32 v59, v38, v111
	v_fmac_f32_e32 v63, v20, v116
	v_fmac_f32_e32 v45, v23, v117
	v_fmac_f32_e32 v43, v40, v118
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v61, v113, v18
	v_dual_fmac_f32 v52, v121, v120 :: v_dual_fmac_f32 v51, v110, v17
	v_fmac_f32_e32 v73, v25, v17
	v_fmac_f32_e32 v53, v115, v35
	v_fmac_f32_e32 v70, v26, v119
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v55, v22, v111 :: v_dual_fmac_f32 v50, v32, v33
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v65, v28, v18 :: v_dual_fmac_f32 v56, v29, v120
	v_fmac_f32_e32 v47, v109, v19
	v_fmac_f32_e32 v57, v30, v35
	v_fmac_f32_e32 v49, v31, v19
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v95, v[41:42] offset:16384
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v95, v[9:10], v[11:12] offset1:8
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v95, v[13:14], v[15:16] offset0:16 offset1:24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v95, v96, v78
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s4, s33, s34
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s3, s0, 0
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v9, 0, v87
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v96, 32, v95
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s34, v95
	s_add_i32 s4, s4, s3
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v10, 0, v88
	v_add_nc_u32_e32 v5, 0, v86
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v2, s34, v96
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v11, 0, v89
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v3, 0, v85
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s4, v1, 1
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v12, 0, v91
	v_add_nc_u32_e32 v110, 0, v81
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v2, s4, v2, 1
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v111, 0, v79
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v79, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v81, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v33, 0, 1, s2
	v_add_nc_u32_e32 v102, 0, v94
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v97, v1, s[28:31], 0 offen
	buffer_load_u16 v98, v2, s[28:31], 0 offen
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v1, 0, v80
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, 0, v84
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[29:32], v1 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[17:20], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[1:4], v3 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[21:24], v9 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[25:28], v10 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[13:16], v11 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[9:12], v12 offset0:32 offset1:36
	v_mov_b32_e32 v80, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[5:8], v5 offset0:32 offset1:36
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	v_cmp_ne_u32_e64 s0, 1, v33
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v103, 0, v93
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v104, 0, v92
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v105, 0, v90
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v106, 0, v83
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v109, 0, v82
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v35, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[33:34], v111
	ds_load_b64 v[35:36], v110
	ds_load_b64 v[37:38], v109
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v91, s19 :: v_dual_mov_b32 v90, s18
	v_dual_mov_b32 v89, s17 :: v_dual_mov_b32 v88, s16
	v_dual_mov_b32 v87, s15 :: v_dual_mov_b32 v86, s14
	v_dual_mov_b32 v85, s13 :: v_dual_mov_b32 v84, s12
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[41:42], v106
	ds_load_b64 v[78:79], v105
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[33:34], v[29:30], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[33:34], v[31:32], v[84:91] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[33:34], v104
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[35:36], v[17:18], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[35:36], v[19:20], v[84:91] neg_lo:[1,1,0]
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[35:36], v103
	ds_load_b64 v[80:81], v102
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[37:38], v[1:2], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[37:38], v[3:4], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[41:42], v[5:6], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[41:42], v[7:8], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[78:79], v[21:22], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[78:79], v[23:24], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[33:34], v[25:26], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[33:34], v[27:28], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[35:36], v[13:14], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[35:36], v[15:16], v[84:91] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[80:81], v[9:10], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[80:81], v[11:12], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v78, v112
	v_cvt_f32_i32_e32 v80, v113
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v79, v114
	v_cvt_f32_i32_e32 v81, v115
	v_cvt_f32_i32_e32 v41, v116
	v_cvt_f32_i32_e32 v42, v117
	v_cvt_f32_i32_e32 v33, v118
	v_cvt_f32_i32_e32 v34, v119
	v_cvt_f32_i32_e32 v100, v84
	v_cvt_f32_i32_e32 v101, v85
	v_cvt_f32_i32_e32 v92, v86
	v_cvt_f32_i32_e32 v93, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v35, v90
	v_cvt_f32_i32_e32 v36, v91
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v87, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[37:38], v111 offset:8192
	ds_load_b64 v[39:40], v110 offset:8192
	ds_load_b64 v[82:83], v109 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v114, s19 :: v_dual_mov_b32 v113, s18
	v_dual_mov_b32 v112, s17 :: v_dual_mov_b32 v111, s16
	v_dual_mov_b32 v110, s15 :: v_dual_mov_b32 v109, s14
	v_dual_mov_b32 v108, s13 :: v_dual_mov_b32 v107, s12
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[84:85], v106 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[37:38], v[29:30], v[107:114] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[29:30], v105 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[107:114], v[37:38], v[31:32], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[39:40], v[17:18], v[115:122] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[17:18], v104 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[107:114], v[39:40], v[19:20], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[82:83], v[1:2], v[115:122] neg_lo:[1,1,0]
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[1:2], v103 offset:8192
	ds_load_b64 v[19:20], v102 offset:8192
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[107:114], v[82:83], v[3:4], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[84:85], v[5:6], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[84:85], v[7:8], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[29:30], v[21:22], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[29:30], v[23:24], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[17:18], v[25:26], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[17:18], v[27:28], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[1:2], v[13:14], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[1:2], v[15:16], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[19:20], v[9:10], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[19:20], v[11:12], v[107:114] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v40, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v85, v116
	v_cvt_f32_i32_e32 v84, v117
	v_cvt_f32_i32_e32 v86, v118
	v_cvt_f32_i32_e32 v82, v119
	v_cvt_f32_i32_e32 v83, v120
	v_cvt_f32_i32_e32 v37, v121
	v_cvt_f32_i32_e32 v38, v122
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v94, v109
	v_cvt_f32_i32_e32 v99, v110
	v_cvt_f32_i32_e32 v90, v111
	v_cvt_f32_i32_e32 v91, v112
	v_cvt_f32_i32_e32 v39, v113
	v_cvt_f32_i32_e32 v87, v114
.LBB0_10:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	s_waitcnt lgkmcnt(5)
	v_lshrrev_b32_e32 v1, 1, v76
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s3, s3, s1
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s13, s11, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s22, s3
	s_mov_b32 s15, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_or_b32_e32 v1, v77, v1
	.loc	1 208 35                        ; generate_amdgcn.py:208:35
	s_add_i32 s1, s0, s23
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s12, s10
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v7, s0, v1, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v15, s1, v1, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v8, s0, v2, 1
	v_add_lshl_u32 v9, s0, v3, 1
	v_add_lshl_u32 v10, s0, v4, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v17, v7, s[12:15], 0 offen
	buffer_load_u16 v16, v8, s[12:15], 0 offen
	buffer_load_u16 v12, v9, s[12:15], 0 offen
	buffer_load_u16 v14, v10, s[12:15], 0 offen
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v9, 0x80000000, v15, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v6, 10, v1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v19, v9, s[12:15], 0 offen
	buffer_load_u16 v18, v2, s[12:15], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v5, 8, v1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v21, v2, s[12:15], 0 offen
	buffer_load_u16 v23, v3, s[12:15], 0 offen
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v11, 14, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v8, s0, v6, 1
	v_add_lshl_u32 v13, s0, v5, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v4, s1, v6, 1
	v_add_lshl_u32 v5, s1, v5, 1
	v_add_lshl_u32 v6, s1, v11, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v13, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v2, 0x80000000, v4, s2
	v_cndmask_b32_e64 v3, 0x80000000, v5, s2
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x4
	buffer_load_u16 v25, v8, s[12:15], 0 offen
	buffer_load_u16 v24, v7, s[12:15], 0 offen
	buffer_load_u16 v27, v2, s[12:15], 0 offen
	buffer_load_u16 v26, v3, s[12:15], 0 offen
	buffer_load_u16 v28, v4, s[12:15], 0 offen
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v29, 12, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v11, s0, v11, 1
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v4.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v4.h, v98.l
	v_mov_b16_e32 v5.h, v97.l
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v1, s1, v29, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v29, s0, v29, 1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v5.l, v4.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v31, v100, v4 :: v_dual_and_b32 v2, 0x78, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v75, v107, v4 :: v_dual_mul_f32 v80, v80, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v76, v93, v4
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v6, v1, s[12:15], 0 offen
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v1, s23, v96
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v96, 0x80000000, v11, s2
	s_clause 0x1
	buffer_load_u16 v11, v29, s[12:15], 0 offen
	buffer_load_u16 v29, v96, s[12:15], 0 offen
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v93, v94, v4 :: v_dual_mul_f32 v40, v40, v5
	v_dual_mul_f32 v91, v91, v4 :: v_dual_mul_f32 v84, v84, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v77, v92, v4 :: v_dual_mul_f32 v78, v78, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v92, v99, v4 :: v_dual_mul_f32 v81, v81, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v89, v89, v4 :: v_dual_mul_f32 v86, v86, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v87, v87, v4 :: v_dual_mul_f32 v42, v42, v5
	v_dual_mul_f32 v32, v108, v4 :: v_dual_mul_f32 v85, v85, v5
	v_dual_mul_f32 v90, v90, v4 :: v_dual_mul_f32 v83, v83, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v30, v101, v4 :: v_dual_mul_f32 v79, v79, v5
	v_dual_mul_f32 v88, v88, v4 :: v_dual_mul_f32 v41, v41, v5
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.h, v4.l
	v_mov_b16_e32 v7.h, v4.l
	v_mov_b16_e32 v10.h, v4.l
	v_mov_b16_e32 v15.h, v4.l
	v_mov_b16_e32 v13.h, v4.l
	v_mov_b16_e32 v8.h, v4.l
	v_mov_b16_e32 v22.h, v4.l
	v_mov_b16_e32 v20.h, v4.l
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v3, s23, v95
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v95.h, v4.l
	v_mov_b16_e32 v94.h, v4.l
	.loc	1 206 20 is_stmt 1              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v34, v34, v5
	v_mul_f32_e32 v36, v36, v4
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	s_mul_i32 s33, s33, s23
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v2, s33, s22, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v82, v82, v5 :: v_dual_mul_f32 v35, v35, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v31, v17, v74
	v_fma_f32 v17, v78, v17, v72
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v74, v31, s2
	v_cndmask_b32_e64 v17, v72, v17, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v75, v75, v19, v73
	v_fma_f32 v19, v40, v19, v51
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v40, v73, v75, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v19, v51, v19, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v73, v93, v21, v64
	v_fma_f32 v21, v84, v21, v60
	v_fma_f32 v74, v92, v23, v65
	v_fma_f32 v23, v86, v23, v61
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v64, v64, v73, s2
	v_cndmask_b32_e64 v21, v60, v21, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v61, v23, s2
	v_cndmask_b32_e64 v65, v65, v74, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v21
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v72, v76, v14, v67
	v_fma_f32 v76, v89, v25, v59
	v_fma_f32 v25, v42, v25, v55
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v60, 0xbfb8aa3b, v65 :: v_dual_lshlrev_b32 v27, 16, v27
	v_mul_f32_e32 v42, 0xbfb8aa3b, v40
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v81, v14, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v55, v25, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v64
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v32, v32, v18, v70
	v_fma_f32 v18, v85, v18, v68
	v_fma_f32 v78, v91, v27, v57
	v_fma_f32 v27, v83, v27, v53
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v55
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v68, v18, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v53, v27, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v32, v70, v32, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v18
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v30, v16, v71
	v_fma_f32 v16, v80, v16, v69
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_cndmask_b32_e64 v55, 0, 0x42800000, s3
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v69, v16, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v27
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v51, v77, v12, v66
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v77, v90, v26, v56
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v12, v79, v12, v62
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v63, v14, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v56, v56, v77, s2
	v_cndmask_b32_e64 v12, v62, v12, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v62, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v64
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v63, 0xbfb8aa3b, v56
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v26, v82, v26, v52
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v75, v88, v24, v58
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v55, v55
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v69
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v63
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v52, v26, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v32
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v58, v58, v75, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s3
	v_exp_f32_e32 v53, v53
	v_mul_f32_e32 v68, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v52
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v57, v57, v78, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s7
	v_cndmask_b32_e64 v69, 0, 0x42800000, s8
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0x42800000, s1
	v_ldexp_f32 v55, v55, v75
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v51, v66, v51, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v68
	v_dual_mul_f32 v66, 0xbfb8aa3b, v57 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v56
	v_dual_mul_f32 v68, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v61
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v32 :: v_dual_add_f32 v55, 1.0, v55
	v_ldexp_f32 v53, v53, v73
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v40
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v24, v41, v24, v54
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v62
	v_cndmask_b32_e64 v61, 0, 0x42800000, s5
	v_exp_f32_e32 v63, v63
	v_exp_f32_e32 v69, v69
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v42, v42
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v82, null, v55, v55, v64
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v21 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v71, v30, s2
	v_cndmask_b32_e64 v24, v54, v24, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v60
	v_cndmask_b32_e64 v62, 0, 0x42800000, s4
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s8
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v101, v82
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s0
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v42, v42, v70
	v_ldexp_f32 v63, v63, v79
	v_ldexp_f32 v69, v69, v80
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v23
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s5
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v63, 1.0, v63
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v62, v62
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v111, -v82, v101, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v59, v59, v76, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s4
	v_ldexp_f32 v61, v61, v77
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_scale_f32 v90, null, v63, v63, v56
	v_fmac_f32_e32 v101, v111, v101
	v_div_scale_f32 v70, null, v42, v42, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v19 :: v_dual_add_f32 v61, 1.0, v61
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v62, v62, v76
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v76, v70
	v_div_scale_f32 v77, null, v53, v53, v18
	v_rcp_f32_e32 v105, v90
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v67, v67, v72, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v68
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	v_exp_f32_e32 v54, v54
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_scale_f32 v86, null, v61, v61, v21
	v_rcp_f32_e32 v99, v77
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s9
	v_ldexp_f32 v52, v52, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v103, v86
	v_fma_f32 v106, -v70, v76, 1.0
	v_fma_f32 v115, -v90, v105, 1.0
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s9
	v_ldexp_f32 v54, v54, v71
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v91, s9, v56, v63, v56
	v_dual_fmac_f32 v105, v115, v105 :: v_dual_fmac_f32 v76, v106, v76
	v_fma_f32 v106, -v77, v99, 1.0
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v26
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v113, -v86, v103, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v60, v60
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v99, v106, v99
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v68, v68
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v92, null, v69, v69, v27
	v_fmac_f32_e32 v103, v113, v103
	v_div_scale_f32 v72, null, v54, v54, v19
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v66
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v107, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v79, v72
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v68, v68, v81
	.loc	1 209 17 is_stmt 1              ; generate_amdgcn.py:209:17
	v_fma_f32 v41, v87, v28, v50
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, s6
	v_ldexp_f32 v60, v60, v74
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_scale_f32 v87, s7, v21, v61, v21
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v74, null, v52, v52, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v108, -v72, v79, 1.0
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v57
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v96, null, v68, v68, v26
	v_fma_f32 v116, -v92, v107, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v98, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v109, v96
	v_fmac_f32_e32 v79, v108, v79
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v66, v66
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v107, v116, v107
	v_div_scale_f32 v80, null, v60, v60, v65
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s6
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v83, s5, v64, v55, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v100, v80
	v_fma_f32 v110, -v74, v98, 1.0
	v_fma_f32 v117, -v96, v109, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v66, v66, v78
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v71, s0, v40, v42, v40
	v_div_scale_f32 v73, s1, v19, v54, v19
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_fmac_f32 v109, v117, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_add_f32 v66, 1.0, v66 :: v_dual_mul_f32 v115, v83, v101
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v75, vcc_lo, v32, v52, v32
	v_fma_f32 v108, -v80, v100, 1.0
	v_mul_f32_e32 v117, v87, v103
	v_div_scale_f32 v97, s11, v26, v68, v26
	v_dual_fmac_f32 v98, v110, v98 :: v_dual_mul_f32 v119, v91, v105
	v_fma_f32 v123, -v82, v115, v83
	v_mul_f32_e32 v106, v73, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v121, v97, v109
	v_fma_f32 v125, -v86, v117, v87
	v_mul_f32_e32 v110, v71, v76
	v_fma_f32 v127, -v90, v119, v91
	v_fmac_f32_e32 v100, v108, v100
	v_mul_f32_e32 v108, v75, v98
	v_fmac_f32_e32 v115, v123, v101
	v_fma_f32 v113, -v72, v106, v73
	v_fmac_f32_e32 v117, v125, v103
	v_fma_f32 v111, -v70, v110, v71
	v_fma_f32 v122, -v74, v108, v75
	v_div_scale_f32 v84, null, v62, v62, v23
	v_fmac_f32_e32 v106, v113, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v110, v111, v76
	v_fmac_f32_e32 v108, v122, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v102, v84
	v_div_scale_f32 v78, s3, v18, v53, v18
	v_fma_f32 v70, -v70, v110, v71
	v_fma_f32 v71, -v72, v106, v73
	v_fma_f32 v72, -v74, v108, v75
	v_fma_f32 v129, -v96, v121, v97
	v_div_scale_f32 v88, null, v66, v66, v57
	v_div_scale_f32 v81, s4, v65, v60, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v72, v72, v98, v108
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v112, -v84, v102, 1.0
	v_div_fmas_f32 v70, v70, v76, v110
	v_rcp_f32_e32 v104, v88
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v72, v52, v32
	v_dual_fmac_f32 v102, v112, v102 :: v_dual_fmac_f32 v121, v129, v109
	v_div_fixup_f32 v40, v70, v42, v40
	v_dual_mul_f32 v112, v78, v99 :: v_dual_fmac_f32 v119, v127, v105
	v_fma_f32 v75, -v82, v115, v83
	v_div_scale_f32 v85, s6, v23, v62, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v31, v31, v40
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v111, -v77, v112, v78
	v_fma_f32 v114, -v88, v104, 1.0
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v30, v32
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v89, s8, v57, v66, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v112, v111, v99
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.l, v31.h
	v_mov_b16_e32 v10.l, v30.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v93, s10, v27, v69, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v73, -v77, v112, v78
	v_fma_f32 v78, -v86, v117, v87
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v10, 1, v10
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v83, -v96, v121, v97
	v_div_fmas_f32 v73, v73, v99, v112
	s_mov_b32 vcc_lo, s1
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v31, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v52, v71, v79, v106
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v73, v53, v18
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v9, v31, v9, 0x7fff
	v_add3_u32 v10, v30, v10, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v19, v52, v54, v19
	v_fmac_f32_e32 v104, v114, v104
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v16, v16, v18 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s1
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v17, v17, v19
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.l, v16.h
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v17.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v114, v81, v100
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s4, v17, v17
	v_cmp_o_f32_e64 s0, v30, v30
	v_and_b32_e32 v7, 1, v7
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v113, -v80, v114, v81
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v8, v16, v8, 0x7fff
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v35, v35, v11, v44
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_add3_u32 v7, v17, v7, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v114, v113, v100
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s4
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v74, -v80, v114, v81
	v_fma_f32 v81, -v90, v119, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v74, v100, v114
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v32, v75, v101, v115
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v42, v42, v60, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v32, v32, v55, v64
	v_mul_f32_e32 v116, v85, v102
	v_fma_f32 v124, -v84, v116, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v116, v124, v102
	v_fma_f32 v77, -v84, v116, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v77, v102, v116
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v18, v78, v103, v117
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v23, v40, v62, v23
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v40, v67, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v18, v18, v61, v21
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v21, v51, v32 :: v_dual_mul_f32 v14, v14, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v22.l, v40.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v12, v12, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v15.l, v14.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v118, v89, v104
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v120, v93, v107
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v9, 1, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v126, -v88, v118, v89
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v16, 1, v20
	v_and_b32_e32 v13, 1, v13
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v128, -v92, v120, v93
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v7, v14, v9, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v118, v126, v104
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v17, v40, v22, 0x7fff
	v_add3_u32 v9, v12, v13, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v120, v128, v107
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v50, v41, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v80, -v88, v118, v89
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s7, v12, v12
	v_cmp_o_f32_e64 s5, v21, v21
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v82, -v92, v120, v93
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v13
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v19, v80, v104, v118
	s_mov_b32 vcc_lo, s9
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v16, v21, v16, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v42, v81, v105, v119
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v19, v19, v66, v57
	v_div_fmas_f32 v32, v82, v107, v120
	s_mov_b32 vcc_lo, s11
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v12.l, 0x7fff, v16.h, s5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v23, v83, v109, v121
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v18, v32, v69, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s6, v14, v14
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v21, v37, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v23, v23, v68, v26
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v12.h, 0x7fff, v17.h, vcc_lo
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v18, v25, v18 :: v_dual_mul_f32 v17, v39, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v15, v24, v23
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s7
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v94.l, v18.h
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v17, v17, v6, v49
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v95.l, v15.h
	v_cmp_o_f32_e64 s1, v15, v15
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v14, 1, v94
	v_cmp_o_f32_e64 s0, v18, v18
	v_and_b32_e32 v16, 1, v95
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v6, v21, v6, v47
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v14, v18, v14, 0x7fff
	v_mov_b16_e32 v18.h, v4.l
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v49, v17, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v17, v59, v19
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v19, v20
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v20, v38, v5
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s1
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v15
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v47, v6, s2
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v20, v20, v28, v48
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v18.l, v17.h
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v9, v42, v63, v56
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v19, v19, v22
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v48, v20, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v20
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v15
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v25, null, v19, v19, v13
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v6
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v5, v33, v5 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v20
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v16, v16, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v24, v24
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v23, v25
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v22, v22
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 206 13 is_stmt 1              ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v5, v11, v45
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v58, v9
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v21.h, v4.l
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s6
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v26, null, v16, v16, v15
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_ldexp_f32 v17, v24, v30
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v28, -v25, v23, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v22, v22, v27
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v31, v26
	v_div_scale_f32 v24, s0, v13, v19, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_add_f32 v22, 1.0, v22
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v23, v28, v23
	v_div_scale_f32 v38, s1, v15, v16, v15
	v_div_scale_f32 v30, null, v17, v17, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v28, null, v22, v22, v20
	v_fma_f32 v27, -v26, v31, 1.0
	v_mul_f32_e32 v32, v24, v23
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v37, v28
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v21.l, v9.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v31, v27, v31
	v_rcp_f32_e32 v27, v30
	v_fma_f32 v39, -v25, v32, v24
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v45, v5, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_dual_mul_f32 v40, v38, v31 :: v_dual_and_b32 v21, 1, v21
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v32, v39, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v28, v37, 1.0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v42, -v26, v40, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v30, v27, 1.0
	v_fma_f32 v24, -v25, v32, v24
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s3, v20, v22, v20
	v_fmac_f32_e32 v27, v39, v27
	v_div_scale_f32 v39, s4, v6, v17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v41, v37 :: v_dual_fmac_f32 v40, v42, v31
	v_div_fmas_f32 v23, v24, v23, v32
	v_mul_f32_e32 v42, v39, v27
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v28, v25, v41
	v_fma_f32 v26, -v26, v40, v38
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b32_e32 v0, 0x5410
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v32, -v30, v42, v39
	v_fmac_f32_e32 v25, v24, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v24, v26, v31, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v32, v27
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v34, v29, v46
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v11, -v28, v25, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v28, -v30, v42, v39
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v46, v26, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v11, v11, v37, v25
	s_mov_b32 vcc_lo, s4
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v25, v28, v27, v42
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v27, v36, v29, v43
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v11, v11, v22, v20
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v6, v25, v17, v6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v43, v27, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v11, v26, v11
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v44, v35, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v18.l, 0x7fff, v21.h, vcc_lo
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v5, v5, v6
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v6, v23, v19, v13
	v_div_fixup_f32 v13, v24, v16, v15
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v4.l
	v_mov_b16_e32 v16.l, v5.h
	v_mov_b16_e32 v16.h, v4.l
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v9, v6
	v_mul_f32_e32 v9, v17, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v13, 1, v15
	v_mov_b16_e32 v17.h, v4.l
	v_and_b32_e32 v15, 1, v16
	v_mov_b16_e32 v16.l, v6.h
	v_mov_b16_e32 v17.l, v9.h
	v_add3_u32 v4, v11, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v11, v5, v15, 0x7fff
	v_and_b32_e32 v15, 1, v16
	v_and_b32_e32 v13, 1, v17
	v_cmp_o_f32_e64 s2, v9, v9
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s1, v6, v6
	v_add3_u32 v5, v9, v13, 0x7fff
	v_add3_u32 v13, v6, v15, 0x7fff
	v_mov_b32_e32 v15, 0x7632
	v_cndmask_b16 v4.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b32_e64 v6, v14, v8, s0
	v_cndmask_b16 v11.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_cndmask_b32_e64 v9, 0x3276, v15, s0
	v_cndmask_b32_e64 v8, v8, v14, s0
	v_cndmask_b32_e64 v13, v18, v10, s0
	v_lshl_or_b32 v0, v0, 4, v0
	s_mov_b32 s1, 0x76543210
	v_lshl_or_b32 v5, v9, 8, v9
	v_cndmask_b32_e64 v9, v4, v7, s0
	v_cndmask_b32_e64 v4, v7, v4, s0
	v_cndmask_b32_e64 v7, v10, v18, s0
	v_cndmask_b32_e64 v10, v12, v11, s0
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v14, v11, v12, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_permlanex16_b32 v12, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v15, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v8, v6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v11, 0x7060706, v5
	v_perm_b32 v10, v16, v14, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v5, v8, v6, v11
	v_perm_b32 v6, v12, v9, v0
	v_perm_b32 v7, v12, v9, v11
	v_perm_b32 v8, v15, v13, v0
	v_add_lshl_u32 v0, v2, v3, 1
	v_perm_b32 v9, v15, v13, v11
	v_perm_b32 v11, v16, v14, v11
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v1, s[20:23], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 131
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 131
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9048
; TotalNumSgprs: 48
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 131
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
