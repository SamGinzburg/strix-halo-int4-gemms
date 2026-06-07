	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v10, 2, v0
	v_bfe_u32 v73, v0, 4, 4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v74, 2, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v11, v0, 7, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v12, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v14, 0x88, v11
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v16, 0x88, v12
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s24, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[0:1], s[0:1], 0x20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_xor_b32 s7, s2, s16
	s_mul_i32 s19, s19, s18
	s_ashr_i32 s26, s7, 31
	s_mul_hi_u32 s12, s18, s19
	s_mov_b32 s7, 0x31027000
	s_add_i32 s18, s18, s12
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s23, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s6, s14, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s6, s17
	s_sub_i32 s12, s14, s12
	s_add_i32 s14, s6, 1
	s_sub_i32 s18, s12, s17
	s_cmp_ge_u32 s12, s17
	s_cselect_b32 s14, s14, s6
	s_cselect_b32 s6, s18, s12
	s_add_i32 s12, s14, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s14
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s28, s12, s26
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s28, s26
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s27, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s14, s16
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s22, s6
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s12, s2, s15
	.loc	1 107 23 is_stmt 1              ; generate_amdgcn.py:107:23
	s_lshl_b32 s2, s3, 4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s24, s12, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s14, 7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s12, s24, s27
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v65, 15, v0
	v_and_b32_e32 v66, 12, v10
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s14, s3, s27
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s13, 34
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[1:2], null, s27, v73, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v72, s2, s12, v1
	s_mov_b32 s12, 0
	.loc	1 113 22 is_stmt 0              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v72, vcc_lo
	.loc	1 115 30 is_stmt 1              ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[2:3], null, s27, v74, v[66:67]
	v_bfe_i32 v67, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, s2, s14, v2
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v2, 0x80000000, v71, vcc_lo
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v75, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v76, v2, s[20:23], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v13, 0x7f, v0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v15, 0x77c, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v1 :: v_dual_lshlrev_b32 v68, 4, v0
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v2, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v69, v14, v13
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v16, v16, v15
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v69, 0, v69
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v70, 0, v16
	v_mov_b32_e32 v16, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v69, v75 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v70, v76
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v95, v72, s[4:7], 0 offen offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v96, v71, s[20:23], 0 offen offset:16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x70, v68
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v14, s17
	v_mov_b32_e32 v10, s13
	v_mov_b32_e32 v12, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x88, v67, v1
	v_mov_b32_e32 v11, s14
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v16, s19
	v_mov_b32_e32 v15, s18
	v_add_nc_u32_e32 v71, 0, v1
	v_xor_b32_e32 v2, 8, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[91:92], v71 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[23:26], v71 offset1:32
	v_add_nc_u32_e32 v72, 0, v2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[93:94], v72 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[39:42], v71 offset0:64 offset1:96
	ds_load_2addr_b64 v[55:58], v71 offset0:128 offset1:160
	ds_load_2addr_b64 v[33:36], v72 offset1:32
	ds_load_2addr_b64 v[75:78], v72 offset0:64 offset1:96
	ds_load_2addr_b64 v[79:82], v71 offset0:192 offset1:224
	ds_load_2addr_b64 v[83:86], v72 offset0:128 offset1:160
	ds_load_2addr_b64 v[87:90], v72 offset0:192 offset1:224
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s29, s27, 15
.Ltmp13:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s29, s29, 4
.Ltmp15:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s12, s29, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v69, v95 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v70, v96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[91:92], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[79:80], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[93:94], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[93:94], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[93:94], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[93:94], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s12, 2
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v74, s28, 7, v74
	s_lshl_b32 s13, s26, 7
	v_add_nc_u32_e32 v75, s24, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v74, s13, v74
	v_mad_u64_u32 v[73:74], null, s27, v74, s[2:3]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[74:75], null, s27, v75, s[2:3]
	s_add_i32 s2, s12, -2
	v_add3_u32 v66, v73, v66, 32
	v_add3_u32 v73, v74, v65, 32
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v110, v73, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v111, v66, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[106:107], v71 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[74:77], v71 offset1:32
	ds_load_2addr_b64 v[78:81], v71 offset0:64 offset1:96
	ds_load_2addr_b64 v[82:85], v71 offset0:128 offset1:160
	ds_load_2addr_b64 v[86:89], v71 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[108:109], v72 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[90:93], v72 offset1:32
	ds_load_2addr_b64 v[94:97], v72 offset0:64 offset1:96
	ds_load_2addr_b64 v[98:101], v72 offset0:128 offset1:160
	ds_load_2addr_b64 v[102:105], v72 offset0:192 offset1:224
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v66, 16, v66
	v_add_nc_u32_e32 v73, 16, v73
	s_add_i32 s2, s2, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s2, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v69, v110 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v70, v111
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[106:107], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[80:81], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[82:83], v[106:107], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[84:85], v[106:107], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[106:107], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[90:91], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[94:95], v[108:109], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[108:109], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[108:109], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[108:109], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v66, 0x70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v70, 0x88, v67, v66
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v78, 0, v70
	v_xad_u32 v94, v70, 8, 0
	ds_load_2addr_b64 v[66:69], v78 offset1:32
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[98:99], v78 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[70:73], v78 offset0:64 offset1:96
	ds_load_2addr_b64 v[74:77], v78 offset0:128 offset1:160
	ds_load_2addr_b64 v[78:81], v78 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[100:101], v94 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[82:85], v94 offset1:32
	ds_load_2addr_b64 v[86:89], v94 offset0:64 offset1:96
	ds_load_2addr_b64 v[90:93], v94 offset0:128 offset1:160
	ds_load_2addr_b64 v[94:97], v94 offset0:192 offset1:224
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[66:67], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[98:99], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[70:71], v[98:99], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[98:99], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[98:99], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[98:99], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[98:99], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[100:101], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[100:101], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[100:101], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[94:95], v[100:101], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[96:97], v[100:101], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v67, s24, v65
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_lshlrev_b32_e32 v67, 1, v67
	s_mov_b32 s4, s8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v66, 4, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	.loc	1 129 22 is_stmt 0              ; generate_amdgcn.py:129:22
	v_and_or_b32 v66, v66, 1, s3
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_mov_b32 s4, s10
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s24, s24, s25
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v38, v38
	s_mov_b32 s2, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v68, 4, v66
	v_or_b32_e32 v69, 8, v66
	v_or_b32_e32 v70, 12, v66
	v_or_b32_e32 v71, 16, v66
	v_or_b32_e32 v72, 20, v66
	v_or_b32_e32 v73, 24, v66
	v_or_b32_e32 v99, 28, v66
	s_clause 0x7
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	buffer_load_u16 v100, v66, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v70, v67, v70 :: v_dual_lshlrev_b32 v73, 16, v73
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v4, v70, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v73, v67, v73 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v68, v67, v68 :: v_dual_lshlrev_b32 v71, 16, v71
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v71, v67, v71 :: v_dual_lshlrev_b32 v100, 16, v100
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v7, v73, v7 :: v_dual_mul_f32 v2, v68, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v100, v67, v100
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v5, v71, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v69, v67, v69
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v124, 0xe0, v66
	v_or_b32_e32 v125, 0xe4, v66
	v_or_b32_e32 v126, 0xe8, v66
	v_or_b32_e32 v127, 0xec, v66
	v_or_b32_e32 v74, 32, v66
	v_or_b32_e32 v75, 36, v66
	v_or_b32_e32 v76, 40, v66
	v_or_b32_e32 v77, 44, v66
	v_or_b32_e32 v78, 48, v66
	v_or_b32_e32 v79, 52, v66
	v_or_b32_e32 v80, 56, v66
	v_or_b32_e32 v81, 60, v66
	v_or_b32_e32 v82, 64, v66
	v_or_b32_e32 v83, 0x44, v66
	v_or_b32_e32 v84, 0x48, v66
	v_or_b32_e32 v85, 0x4c, v66
	v_or_b32_e32 v86, 0x50, v66
	v_or_b32_e32 v87, 0x54, v66
	v_or_b32_e32 v88, 0x58, v66
	v_or_b32_e32 v89, 0x5c, v66
	v_or_b32_e32 v90, 0x60, v66
	v_or_b32_e32 v91, 0x64, v66
	v_or_b32_e32 v92, 0x68, v66
	v_or_b32_e32 v93, 0x6c, v66
	v_or_b32_e32 v94, 0x70, v66
	v_or_b32_e32 v95, 0x74, v66
	v_or_b32_e32 v96, 0x78, v66
	v_or_b32_e32 v97, 0x7c, v66
	v_or_b32_e32 v98, 0x80, v66
	v_or_b32_e32 v101, 0x84, v66
	v_or_b32_e32 v102, 0x88, v66
	v_or_b32_e32 v103, 0x8c, v66
	v_or_b32_e32 v104, 0x90, v66
	v_or_b32_e32 v105, 0x94, v66
	v_or_b32_e32 v106, 0x98, v66
	v_or_b32_e32 v107, 0x9c, v66
	v_or_b32_e32 v108, 0xa0, v66
	v_or_b32_e32 v109, 0xa4, v66
	v_or_b32_e32 v110, 0xa8, v66
	v_or_b32_e32 v111, 0xac, v66
	v_or_b32_e32 v112, 0xb0, v66
	v_or_b32_e32 v113, 0xb4, v66
	v_or_b32_e32 v114, 0xb8, v66
	v_or_b32_e32 v115, 0xbc, v66
	v_or_b32_e32 v116, 0xc0, v66
	v_or_b32_e32 v117, 0xc4, v66
	v_or_b32_e32 v118, 0xc8, v66
	v_or_b32_e32 v119, 0xcc, v66
	v_or_b32_e32 v120, 0xd0, v66
	v_or_b32_e32 v121, 0xd4, v66
	v_or_b32_e32 v122, 0xd8, v66
	v_or_b32_e32 v123, 0xdc, v66
	v_or_b32_e32 v128, 0xf0, v66
	v_or_b32_e32 v129, 0xf4, v66
	v_or_b32_e32 v130, 0xf8, v66
	v_or_b32_e32 v66, 0xfc, v66
	s_clause 0x1f
	buffer_load_u16 v124, v124, s[4:7], 0 offen
	buffer_load_u16 v125, v125, s[4:7], 0 offen
	buffer_load_u16 v126, v126, s[4:7], 0 offen
	buffer_load_u16 v127, v127, s[4:7], 0 offen
	buffer_load_u16 v128, v128, s[4:7], 0 offen
	buffer_load_u16 v129, v129, s[4:7], 0 offen
	buffer_load_u16 v130, v130, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v116, v116, s[4:7], 0 offen
	buffer_load_u16 v117, v117, s[4:7], 0 offen
	buffer_load_u16 v118, v118, s[4:7], 0 offen
	buffer_load_u16 v119, v119, s[4:7], 0 offen
	buffer_load_u16 v120, v120, s[4:7], 0 offen
	buffer_load_u16 v121, v121, s[4:7], 0 offen
	buffer_load_u16 v122, v122, s[4:7], 0 offen
	buffer_load_u16 v123, v123, s[4:7], 0 offen
	buffer_load_u16 v108, v108, s[4:7], 0 offen
	buffer_load_u16 v109, v109, s[4:7], 0 offen
	buffer_load_u16 v110, v110, s[4:7], 0 offen
	buffer_load_u16 v111, v111, s[4:7], 0 offen
	buffer_load_u16 v112, v112, s[4:7], 0 offen
	buffer_load_u16 v113, v113, s[4:7], 0 offen
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v101, v101, s[4:7], 0 offen
	buffer_load_u16 v102, v102, s[4:7], 0 offen
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	buffer_load_u16 v104, v104, s[4:7], 0 offen
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	buffer_load_u16 v106, v106, s[4:7], 0 offen
	buffer_load_u16 v107, v107, s[4:7], 0 offen
	s_clause 0x17
	buffer_load_u16 v90, v90, s[4:7], 0 offen
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	buffer_load_u16 v92, v92, s[4:7], 0 offen
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v96, v96, s[4:7], 0 offen
	buffer_load_u16 v97, v97, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v71, 0, v5
	s_waitcnt vmcnt(51)
	v_dual_max_f32 v73, 0, v7 :: v_dual_lshlrev_b32 v128, 16, v128
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v129, 16, v129
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v130, 16, v130
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v128, v67, v128
	v_dual_mul_f32 v129, v67, v129 :: v_dual_lshlrev_b32 v126, 16, v126
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v127, 16, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v13, v128, v13 :: v_dual_mul_f32 v126, v67, v126
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v127, v67, v127 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v125, 16, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v11, v126, v11 :: v_dual_mul_f32 v124, v67, v124
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(41)
	v_dual_mul_f32 v125, v67, v125 :: v_dual_lshlrev_b32 v122, 16, v122
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v12, v127, v12 :: v_dual_lshlrev_b32 v123, 16, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v9, v124, v9 :: v_dual_mul_f32 v122, v67, v122
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v123, v67, v123 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v121, 16, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v63, v122, v63 :: v_dual_mul_f32 v120, v67, v120
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v121, v67, v121 :: v_dual_lshlrev_b32 v118, 16, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v64, v123, v64 :: v_dual_lshlrev_b32 v119, 16, v119
	v_dual_mul_f32 v61, v120, v61 :: v_dual_mul_f32 v118, v67, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v119, v67, v119 :: v_dual_lshlrev_b32 v116, 16, v116
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v62, v121, v62 :: v_dual_lshlrev_b32 v117, 16, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v59, v118, v59 :: v_dual_mul_f32 v116, v67, v116
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v117, v67, v117 :: v_dual_lshlrev_b32 v114, 16, v114
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v60, v119, v60 :: v_dual_lshlrev_b32 v115, 16, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v57, v116, v57 :: v_dual_mul_f32 v114, v67, v114
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v115, v67, v115 :: v_dual_lshlrev_b32 v112, 16, v112
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v58, v117, v58 :: v_dual_lshlrev_b32 v113, 16, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v55, v114, v55 :: v_dual_mul_f32 v112, v67, v112
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v113, v67, v113 :: v_dual_lshlrev_b32 v110, 16, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v56, v115, v56 :: v_dual_lshlrev_b32 v111, 16, v111
	v_dual_mul_f32 v53, v112, v53 :: v_dual_mul_f32 v110, v67, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v111, v67, v111 :: v_dual_lshlrev_b32 v108, 16, v108
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v54, v113, v54 :: v_dual_lshlrev_b32 v109, 16, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v51, v110, v51 :: v_dual_mul_f32 v108, v67, v108
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v109, v67, v109 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v52, v111, v52 :: v_dual_lshlrev_b32 v107, 16, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v51, 0, v51 :: v_dual_mul_f32 v106, v67, v106
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v107, v67, v107 :: v_dual_lshlrev_b32 v104, 16, v104
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v50, v109, v50 :: v_dual_lshlrev_b32 v105, 16, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_max_f32_e32 v52, 0, v52
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v104, v67, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v105, v67, v105 :: v_dual_lshlrev_b32 v102, 16, v102
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v48, v107, v48 :: v_dual_lshlrev_b32 v103, 16, v103
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_max_f32_e32 v50, 0, v50
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v102, v67, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v103, v67, v103 :: v_dual_lshlrev_b32 v98, 16, v98
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v46, v105, v46 :: v_dual_lshlrev_b32 v101, 16, v101
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_max_f32_e32 v48, 0, v48
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v98, v67, v98
	s_waitcnt vmcnt(17)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v101, v67, v101 :: v_dual_lshlrev_b32 v96, 16, v96
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	s_waitcnt vmcnt(16)
	v_dual_max_f32 v46, 0, v46 :: v_dual_lshlrev_b32 v97, 16, v97
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v41, v98, v41 :: v_dual_mul_f32 v96, v67, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v97, v67, v97 :: v_dual_lshlrev_b32 v94, 16, v94
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v44, v103, v44 :: v_dual_lshlrev_b32 v95, 16, v95
	v_dual_mul_f32 v39, v96, v39 :: v_dual_mul_f32 v94, v67, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v95, v67, v95 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v39, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v37, v94, v37 :: v_dual_mul_f32 v92, v67, v92
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v93, v67, v93 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v91, 16, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v37, 0, v37
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v35, v92, v35 :: v_dual_mul_f32 v90, v67, v90
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v91, v67, v91 :: v_dual_lshlrev_b32 v88, 16, v88
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v89, 16, v89
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v35, 0, v35
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v33, v90, v33 :: v_dual_mul_f32 v88, v67, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v89, v67, v89 :: v_dual_lshlrev_b32 v86, 16, v86
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v33, 0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v31, v88, v31 :: v_dual_mul_f32 v86, v67, v86
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v87, v67, v87 :: v_dual_lshlrev_b32 v84, 16, v84
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v85, 16, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v31, 0, v31
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v29, v86, v29 :: v_dual_mul_f32 v84, v67, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v85, v67, v85 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v29, 0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v27, v84, v27 :: v_dual_mul_f32 v82, v67, v82
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v83, v67, v83 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, v85, v28 :: v_dual_lshlrev_b32 v81, 16, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v25, v82, v25 :: v_dual_mul_f32 v80, v67, v80
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v81, v67, v81 :: v_dual_lshlrev_b32 v78, 16, v78
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v26, v83, v26 :: v_dual_lshlrev_b32 v79, 16, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v23, v80, v23 :: v_dual_mul_f32 v78, v67, v78
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v79, v67, v79 :: v_dual_lshlrev_b32 v76, 16, v76
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v68, v69, v3 :: v_dual_lshlrev_b32 v77, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v21, v78, v21 :: v_dual_mul_f32 v76, v67, v76
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v77, v67, v77 :: v_dual_lshlrev_b32 v74, 16, v74
	v_dual_mul_f32 v66, v67, v66 :: v_dual_lshlrev_b32 v75, 16, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v19, v76, v19 :: v_dual_mul_f32 v74, v67, v74
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v75, v67, v75 :: v_dual_lshlrev_b32 v72, 16, v72
	v_mul_f32_e32 v130, v67, v130
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v10, v125, v10
	v_mul_f32_e32 v16, v66, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v72, v67, v72
	v_mul_f32_e32 v99, v67, v99
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v67, v100, v1 :: v_dual_mul_f32 v20, v77, v20
	v_mul_f32_e32 v24, v81, v24
	v_mul_f32_e32 v6, v72, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v99, v8
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v66, 0, v67 :: v_dual_max_f32 v21, 0, v21
	v_max_f32_e32 v67, 0, v68
	v_max_f32_e32 v68, 0, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v77, 0, v19
	v_dual_max_f32 v72, 0, v6 :: v_dual_max_f32 v81, 0, v25
	v_max_f32_e32 v19, 0, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v6, 0, v16
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v16, v67, v67
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v79, v22
	v_mul_f32_e32 v69, v129, v14
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v79, 0, v23 :: v_dual_max_f32 v80, 0, v24
	v_max_f32_e32 v82, 0, v26
	v_dual_max_f32 v26, 0, v57 :: v_dual_mul_f32 v5, v2, v2
	v_max_f32_e32 v24, 0, v60
	v_max_f32_e32 v14, 0, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v16.h
	v_mov_b16_e32 v60.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v10, 0, v11 :: v_dual_mul_f32 v11, v66, v66
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v17, v74, v17 :: v_dual_mul_f32 v18, v75, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v2.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v11.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v70, v130, v15 :: v_dual_max_f32 v75, 0, v17
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v76, 0, v18
	v_max_f32_e32 v25, 0, v58
	v_dual_max_f32 v23, 0, v59 :: v_dual_max_f32 v18, 0, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v2
	v_and_b32_e32 v58, 1, v4
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v59, v68, v68
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v74, 0, v8 :: v_dual_max_f32 v27, 0, v27
	v_max_f32_e32 v8, 0, v13
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v13, s25, v65
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v11, v58, 0x7fff
	v_add3_u32 v5, v5, v57, 0x7fff
	v_mov_b16_e32 v4.l, v59.h
	.loc	1 138 19 is_stmt 1              ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v57, v72, v72
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v78, 0, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v11.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v20, 0, v61 :: v_dual_max_f32 v7, 0, v70
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s24, s3, v13
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v60
	v_and_b32_e32 v11, 1, v4
	v_mov_b16_e32 v4.l, v57.h
	.loc	1 138 19 is_stmt 1              ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v58, v71, v71
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v12, 0, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v16, v13, 0x7fff
	v_mov_b16_e32 v16.h, v4.h
	v_add3_u32 v11, v59, v11, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v59, v74, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v4
	v_mov_b16_e32 v16.l, v58.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v22, 0, v22
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v60, v73, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v59.h
	v_mov_b16_e32 v11.l, v13.h
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v13, v57, v61, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v61, v75, v75
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v17, 0, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.h, v4.h
	v_add3_u32 v16, v58, v16, 0x7fff
	v_and_b32_e32 v58, 1, v4
	v_mov_b16_e32 v64.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v27, v27, v27
	v_mul_f32_e32 v29, v29, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v16.h
	v_add3_u32 v16, v59, v58, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v59, v78, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v58.l, v61.h
	v_mov_b16_e32 v58.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v30, v87, v30
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v31, v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v62
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v62, v76, v76
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v28, 0, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v32, v89, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v60, v57, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v60, v77, v77
	v_mul_f32_e32 v28, v28, v28
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v41, 0, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v57.h
	v_and_b32_e32 v57, 1, v58
	v_mov_b16_e32 v4.l, v62.h
	v_mov_b16_e32 v63.l, v60.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v33, v33, v33
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v40, v97, v40 :: v_dual_mul_f32 v47, v106, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v58, 1, v4
	v_mov_b16_e32 v4.l, v59.h
	v_add3_u32 v57, v61, v57, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v61, v21, v21
	v_mul_f32_e32 v35, v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v21, v62, v58, 0x7fff
	v_and_b32_e32 v58, 1, v4
	v_and_b32_e32 v62, 1, v63
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v63, v22, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.l, v61.h
	v_mov_b16_e32 v21.l, v57.h
	v_add3_u32 v22, v59, v58, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v59, v80, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v60, v62, 0x7fff
	v_mov_b16_e32 v4.l, v63.h
	v_and_b32_e32 v58, 1, v64
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v60, v79, v79
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v34, v91, v34 :: v_dual_mul_f32 v43, v102, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v57.h
	v_and_b32_e32 v57, 1, v4
	v_add3_u32 v58, v61, v58, 0x7fff
	v_mov_b16_e32 v4.l, v59.h
	v_mov_b16_e32 v61.l, v60.h
	v_mov_b16_e32 v61.h, v4.h
	v_add3_u32 v57, v63, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v63, v82, v82 :: v_dual_and_b32 v64, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v58.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v32, 0, v32 :: v_dual_and_b32 v61, 1, v61
	v_max_f32_e32 v43, 0, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v63.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v62, v81, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v60, v61, 0x7fff
	v_add3_u32 v59, v59, v64, 0x7fff
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v40, 0, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v4
	v_mov_b16_e32 v65.l, v62.h
	v_mov_b16_e32 v59.l, v58.h
	v_mov_b16_e32 v4.l, v28.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v30, v30, v30
	v_mul_f32_e32 v32, v32, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v60, 1, v65
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v36, v93, v36 :: v_dual_mul_f32 v45, v104, v45
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v34, 0, v34
	v_dual_max_f32 v44, 0, v44 :: v_dual_max_f32 v55, 0, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v62, v60, 0x7fff
	v_add3_u32 v60, v63, v61, 0x7fff
	v_mov_b16_e32 v61.l, v27.h
	v_mov_b16_e32 v61.h, v4.h
	v_mov_b16_e32 v62.l, v29.h
	v_mov_b16_e32 v60.l, v58.h
	v_mov_b16_e32 v62.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v47, 0, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v58, 1, v61
	v_and_b32_e32 v61, 1, v4
	v_mov_b16_e32 v4.l, v30.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v45, 0, v45 :: v_dual_mul_f32 v42, v101, v42
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v49, v108, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v27, v58, 0x7fff
	v_add3_u32 v28, v28, v61, 0x7fff
	v_and_b32_e32 v61, 1, v62
	v_and_b32_e32 v58, 1, v4
	v_mov_b16_e32 v62.l, v31.h
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v4.l, v32.h
	v_add3_u32 v27, v29, v61, 0x7fff
	v_add3_u32 v29, v30, v58, 0x7fff
	v_and_b32_e32 v30, 1, v62
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v34, v34, v34
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v42, 0, v42 :: v_dual_max_f32 v53, 0, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v27.h
	v_and_b32_e32 v27, 1, v4
	v_add3_u32 v30, v31, v30, 0x7fff
	v_mov_b16_e32 v4.l, v34.h
	v_mov_b16_e32 v31.l, v33.h
	v_mov_b16_e32 v31.h, v4.h
	v_add3_u32 v27, v32, v27, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v32, v36, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v4
	v_mov_b16_e32 v58.l, v35.h
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v58.h, v4.h
	v_mov_b16_e32 v4.l, v32.h
	v_mov_b16_e32 v27.l, v30.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v38, v95, v38 :: v_dual_and_b32 v3, 16, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v33, v31, 0x7fff
	v_add3_u32 v31, v34, v36, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v36, v37, v37 :: v_dual_and_b32 v33, 1, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v4
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v49, 0, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v35, v33, 0x7fff
	v_mov_b16_e32 v31.l, v30.h
	v_add3_u32 v32, v32, v34, 0x7fff
	v_mov_b16_e32 v34.l, v36.h
	v_mov_b16_e32 v34.h, v4.h
	v_mov_b16_e32 v32.l, v33.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v35, v40, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v37, v39, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v33, 1, v34
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v39, v42, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v42.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v15, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v36, v33, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v36, v41, v41
	v_mul_f32_e32 v26, v26, v26
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v56, 0, v56 :: v_dual_max_f32 v9, 0, v69
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v23, v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.l, v36.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v30, v38, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v38.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v18, v18, v18 :: v_dual_mul_f32 v25, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v30.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v17, v17, v17 :: v_dual_and_b32 v38, 1, v38
	v_mul_f32_e32 v14, v14, v14
	v_dual_mul_f32 v24, v24, v24 :: v_dual_mul_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v4
	v_mov_b16_e32 v4.l, v35.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v15, v15, v15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v30, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v34, 1, v4
	v_mov_b16_e32 v30.l, v33.h
	v_add3_u32 v33, v37, v38, 0x7fff
	v_mov_b16_e32 v4.l, v39.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v38, v43, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v35, v34, 0x7fff
	v_and_b32_e32 v35, 1, v40
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v37, v44, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v34.l, v33.h
	v_and_b32_e32 v33, 1, v4
	v_mov_b16_e32 v43.h, v4.h
	v_add3_u32 v35, v36, v35, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v4.h
	v_mov_b16_e32 v4.l, v37.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v40, v45, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v39, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v39, v46, v46 :: v_dual_and_b32 v36, 1, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v40.h
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e32 v4.l, v39.h
	v_add3_u32 v35, v38, v36, 0x7fff
	v_add3_u32 v36, v37, v41, 0x7fff
	v_and_b32_e32 v37, 1, v42
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v42, v49, v49
	v_dual_mul_f32 v41, v47, v47 :: v_dual_and_b32 v38, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v35.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v35, v48, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v40, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v38, v39, v38, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v4.h
	v_mov_b16_e32 v4.l, v35.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v40, v50, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v43.l, v42.h
	v_and_b32_e32 v37, 1, v39
	v_and_b32_e32 v39, 1, v4
	v_mov_b16_e32 v4.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v44, v52, v52 :: v_dual_and_b32 v43, 1, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v41, v37, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v41, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v35, v39, 0x7fff
	v_and_b32_e32 v39, 1, v4
	v_mov_b16_e32 v45.h, v4.h
	v_mov_b16_e32 v35.l, v37.h
	v_mov_b16_e32 v45.l, v41.h
	v_add3_u32 v37, v42, v43, 0x7fff
	v_mov_b16_e32 v4.l, v44.h
	v_add3_u32 v39, v40, v39, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v42, v54, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v45
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v43, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v37.h
	v_and_b32_e32 v37, 1, v4
	v_mov_b16_e32 v4.l, v42.h
	v_add3_u32 v40, v41, v40, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v45, v55, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v44, v37, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v44, v56, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v4
	v_and_b32_e32 v41, 1, v41
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e32 v47.h, v4.h
	v_mov_b16_e32 v4.l, v44.h
	v_mov_b16_e32 v37.l, v40.h
	v_add3_u32 v40, v43, v41, 0x7fff
	v_add3_u32 v41, v42, v46, 0x7fff
	v_and_b32_e32 v42, 1, v47
	v_and_b32_e32 v43, 1, v4
	v_mov_b16_e32 v4.l, v25.h
	v_mov_b16_e32 v41.l, v40.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v9, v9, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v45, v42, 0x7fff
	v_add3_u32 v42, v44, v43, 0x7fff
	v_mov_b16_e32 v43.l, v26.h
	v_mov_b16_e32 v43.h, v4.h
	v_mov_b16_e32 v44.l, v23.h
	v_mov_b16_e32 v42.l, v40.h
	v_mov_b16_e32 v44.h, v4.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_and_b32_e32 v40, 1, v43
	v_and_b32_e32 v43, 1, v4
	v_mov_b16_e32 v4.l, v24.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v26, v26, v40, 0x7fff
	v_add3_u32 v25, v25, v43, 0x7fff
	v_and_b32_e32 v43, 1, v44
	v_mov_b16_e32 v44.l, v20.h
	v_and_b32_e32 v40, 1, v4
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e32 v4.l, v19.h
	v_add3_u32 v23, v23, v43, 0x7fff
	v_and_b32_e32 v26, 1, v44
	v_add3_u32 v24, v24, v40, 0x7fff
	v_mov_b16_e32 v40.l, v15.h
	v_mov_b16_e32 v40.h, v4.h
	v_mov_b16_e32 v24.l, v23.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e32 v26.h, v4.h
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v18.h
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x1e0, v0
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v19, v19, v23, 0x7fff
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v14.h
	v_mov_b16_e32 v19.l, v20.h
	v_add3_u32 v17, v17, v26, 0x7fff
	v_and_b32_e32 v20, 1, v40
	v_add3_u32 v18, v18, v23, 0x7fff
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v17.l, v10.h
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e32 v17.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v12, v12, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v14, v23, 0x7fff
	v_mov_b16_e32 v23.l, v7.h
	v_mov_b16_e32 v23.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v15, v20, 0x7fff
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v4.l, v12.h
	v_mov_b16_e32 v20.h, v4.h
	v_and_b32_e32 v23, 1, v23
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v14.l, v15.h
	v_and_b32_e32 v15, 1, v4
	v_mov_b16_e32 v4.l, v9.h
	v_add3_u32 v10, v10, v17, 0x7fff
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v7, v7, v23, 0x7fff
	v_cndmask_b32_e32 v23, v34, v32, vcc_lo
	v_and_b32_e32 v17, 1, v4
	v_mov_b16_e32 v4.l, v6.h
	v_add3_u32 v8, v8, v20, 0x7fff
	v_cndmask_b32_e32 v20, v28, v27, vcc_lo
	v_add3_u32 v12, v12, v15, 0x7fff
	v_add3_u32 v3, v9, v17, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_mov_b16_e32 v3.l, v8.h
	v_mov_b16_e32 v12.l, v10.h
	v_dual_cndmask_b32 v8, v11, v16 :: v_dual_cndmask_b32 v9, v57, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v6, v4, 0x7fff
	v_mov_b16_e32 v4.l, v7.h
	v_cndmask_b32_e32 v6, v13, v5, vcc_lo
	v_cndmask_b32_e32 v5, v5, v13, vcc_lo
	v_dual_cndmask_b32 v7, v16, v11 :: v_dual_cndmask_b32 v10, v21, v57
	v_cndmask_b32_e32 v11, v59, v22, vcc_lo
	v_cndmask_b32_e32 v13, v22, v59, vcc_lo
	v_dual_cndmask_b32 v15, v29, v60 :: v_dual_cndmask_b32 v26, v32, v34
	v_dual_cndmask_b32 v16, v60, v29 :: v_dual_cndmask_b32 v17, v27, v28
	v_dual_cndmask_b32 v28, v33, v38 :: v_dual_cndmask_b32 v21, v30, v31
	v_dual_cndmask_b32 v22, v31, v30 :: v_dual_cndmask_b32 v27, v38, v33
	v_dual_cndmask_b32 v34, v37, v42 :: v_dual_cndmask_b32 v29, v35, v36
	v_dual_cndmask_b32 v30, v36, v35 :: v_dual_cndmask_b32 v33, v42, v37
	v_dual_cndmask_b32 v38, v4, v12 :: v_dual_cndmask_b32 v35, v19, v25
	v_dual_cndmask_b32 v36, v18, v24 :: v_dual_cndmask_b32 v19, v25, v19
	v_cndmask_b32_e32 v18, v24, v18, vcc_lo
	v_dual_cndmask_b32 v37, v3, v14 :: v_dual_mov_b32 v24, 0x7632
	v_dual_cndmask_b32 v3, v14, v3 :: v_dual_cndmask_b32 v4, v12, v4
	v_dual_mov_b32 v14, 0x5410 :: v_dual_cndmask_b32 v31, v41, v39
	v_cndmask_b32_e32 v32, v39, v41, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v5, v5, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v12, 0x1054, v14, vcc_lo
	v_cndmask_b32_e32 v14, 0x3276, v24, vcc_lo
	v_permlanex16_b32 v8, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v14, v14, 8, v14
	v_permlanex16_b32 v20, v20, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v28, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x540054, v12
	v_and_b32_e32 v14, 0x760076, v14
	v_permlanex16_b32 v26, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v32, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v12, v12, 4, v12
	v_lshl_or_b32 v14, v14, 4, v14
	v_permlanex16_b32 v32, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v1
	v_and_b32_e32 v34, 0x5040504, v12
	v_and_b32_e32 v39, 0x7060706, v14
	v_permlanex16_b32 v16, v16, s2, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 64, v1
	v_permlanex16_b32 v40, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v5, v6, v34
	v_perm_b32 v4, v5, v6, v39
	v_perm_b32 v5, v8, v7, v34
	v_perm_b32 v6, v8, v7, v39
	v_perm_b32 v7, v10, v9, v34
	v_perm_b32 v8, v10, v9, v39
	v_perm_b32 v9, v13, v11, v34
	v_perm_b32 v10, v13, v11, v39
	v_perm_b32 v13, v20, v17, v34
	v_perm_b32 v14, v20, v17, v39
	v_perm_b32 v17, v24, v23, v34
	v_perm_b32 v18, v24, v23, v39
	v_perm_b32 v19, v25, v27, v34
	v_perm_b32 v20, v25, v27, v39
	v_perm_b32 v23, v28, v31, v34
	v_perm_b32 v24, v28, v31, v39
	v_perm_b32 v27, v32, v35, v34
	v_perm_b32 v28, v32, v35, v39
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_perm_b32 v11, v16, v15, v34
	v_perm_b32 v12, v16, v15, v39
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_permlanex16_b32 v22, v22, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[0:3], 0 offen
	buffer_store_b128 v[7:10], v0, s[0:3], 0 offen
	buffer_store_b128 v[11:14], v2, s[0:3], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_add_nc_u32_e32 v2, 0x80, v1
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_perm_b32 v15, v22, v21, v34
	v_perm_b32 v16, v22, v21, v39
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v21, v26, v29, v34
	v_perm_b32 v22, v26, v29, v39
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v25, v30, v33, v34
	v_perm_b32 v26, v30, v33, v39
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v29, v40, v36, v34
	v_perm_b32 v30, v40, v36, v39
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v31, v41, v37, v34
	v_perm_b32 v32, v41, v37, v39
	v_perm_b32 v33, v42, v38, v34
	v_perm_b32 v34, v42, v38, v39
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[0:3], 0 offen
	buffer_store_b128 v[19:22], v2, s[0:3], 0 offen
	buffer_store_b128 v[23:26], v3, s[0:3], 0 offen
	buffer_store_b128 v[27:30], v4, s[0:3], 0 offen
	buffer_store_b128 v[31:34], v1, s[0:3], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 131
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7332
; TotalNumSgprs: 32
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 32
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
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
