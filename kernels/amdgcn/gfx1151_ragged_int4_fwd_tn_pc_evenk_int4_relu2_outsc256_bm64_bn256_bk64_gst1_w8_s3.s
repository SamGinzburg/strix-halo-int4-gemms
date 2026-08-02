	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v6, 63, v0
	v_and_b32_e32 v68, 15, v0
	v_lshlrev_b32_e32 v72, 4, v0
	v_lshlrev_b32_e32 v71, 1, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s30, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s30, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[26:27], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[22:23], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s26, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s27, 0, s2
	v_add_nc_u32_e32 v65, s26, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[22:23], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_mov_b32_e32 v2, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s21, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v4, s26 :: v_dual_lshlrev_b32 v5, 1, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s26, v6
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 0xf0, v0
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v70, 4, v68
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v105, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s29, s30, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshrrev_b32_e32 v73, 3, v69
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	v_and_b32_e32 v75, 24, v2
	v_xor3_b32 v3, v71, v3, v2
	v_and_b32_e32 v2, 24, v5
	v_mov_b32_e32 v5, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s29, v70
	v_lshlrev_b32_e32 v4, 5, v68
	v_and_b32_e32 v58, 24, v3
	v_lshrrev_b32_e32 v3, 2, v0
	v_xor_b32_e32 v2, v2, v73
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s3, s21, s20
	v_lshl_add_u32 v57, v6, 5, 0
	v_mov_b32_e32 v7, 0
	v_xor_b32_e32 v3, v71, v3
	v_lshl_or_b32 v76, v68, 9, v2
	v_and_b32_e32 v2, 0xe00, v72
	v_mov_b32_e32 v6, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_and_b32_e32 v3, 24, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[66:67], null, s3, s28, v[1:2]
	v_mov_b32_e32 v1, 0
	v_and_or_b32 v74, v71, 24, v4
	v_or3_b32 v77, v2, v3, v4
	v_xor_b32_e32 v90, 0x88, v76
	v_xor_b32_e32 v91, 0x110, v76
	v_xor_b32_e32 v92, 0x198, v76
	v_xor_b32_e32 v78, 8, v74
	v_xor_b32_e32 v79, 16, v74
	v_xor_b32_e32 v80, 24, v74
	v_xor_b32_e32 v81, 0x208, v74
	v_xor_b32_e32 v82, 0x218, v74
	v_xor_b32_e32 v83, 0x210, v74
	v_xor_b32_e32 v84, 0x410, v74
	v_xor_b32_e32 v85, 0x418, v74
	v_xor_b32_e32 v86, 0x408, v74
	v_xor_b32_e32 v87, 0x618, v74
	v_xor_b32_e32 v88, 0x610, v74
	v_xor_b32_e32 v89, 0x608, v74
	v_xor_b32_e32 v93, 8, v77
	v_xor_b32_e32 v94, 16, v77
	v_xor_b32_e32 v95, 24, v77
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v4, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v67, v57, v58
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_add_nc_u32_e32 v78, 0, v78
	v_add_nc_u32_e32 v79, 0, v79
	v_add_nc_u32_e32 v80, 0, v80
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v82, 0, v82
	v_add_nc_u32_e32 v83, 0, v83
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_or_b32_e32 v96, 1, v73
	v_or_b32_e32 v97, 1, v75
	v_or_b32_e32 v98, 2, v75
	v_or_b32_e32 v99, 3, v75
	v_or_b32_e32 v100, 4, v75
	v_or_b32_e32 v101, 5, v75
	v_or_b32_e32 v102, 6, v75
	v_or_b32_e32 v103, 7, v75
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s1, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v104, s1, v73
	v_or_b32_e32 v106, s1, v96
	v_or_b32_e32 v107, s1, v75
	v_or_b32_e32 v108, s1, v97
	v_or_b32_e32 v111, s1, v98
	v_or_b32_e32 v112, s1, v99
	v_or_b32_e32 v118, s1, v100
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_mad_u64_u32 v[104:105], null, v104, s20, v[66:67]
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v119, s1, v101
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_mad_u64_u32 v[109:110], null, v106, s20, v[66:67]
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[113:114], null, v107, s0, v[65:66]
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v120, s1, v103
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[114:115], null, v108, s0, v[65:66]
	v_mad_u64_u32 v[115:116], null, v111, s0, v[65:66]
	v_mad_u64_u32 v[116:117], null, v112, s0, v[65:66]
	v_mad_u64_u32 v[117:118], null, v118, s0, v[65:66]
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v121, s1, v102
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[118:119], null, v119, s0, v[65:66]
	v_mad_u64_u32 v[119:120], null, v120, s0, v[65:66]
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_b128 v[105:108], v104, s[12:15], 0 offen
	buffer_load_b128 v[109:112], v109, s[12:15], 0 offen
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[120:121], null, v121, s0, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v104, 0x80000000, v113, s2
	v_cndmask_b32_e64 v113, 0x80000000, v114, s2
	v_cndmask_b32_e64 v114, 0x80000000, v115, s2
	v_cndmask_b32_e64 v115, 0x80000000, v119, s2
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v119, 0x80000000, v120, s2
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	s_clause 0x7
	buffer_load_u8 v115, v115, s[4:7], 0 offen
	buffer_load_u8 v118, v118, s[4:7], 0 offen
	buffer_load_u8 v116, v116, s[4:7], 0 offen
	buffer_load_u8 v113, v113, s[4:7], 0 offen
	buffer_load_u8 v119, v119, s[4:7], 0 offen
	buffer_load_u8 v120, v117, s[4:7], 0 offen
	buffer_load_u8 v121, v114, s[4:7], 0 offen
	buffer_load_u8 v122, v104, s[4:7], 0 offen
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	v_add_nc_u32_e32 v128, 0, v76
	v_add_nc_u32_e32 v104, 0, v77
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v127, 0, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s21
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(8)
	v_perm_b32 v114, v109, v105, 0x5010400
	v_perm_b32 v109, v109, v105, 0x7030602
	v_perm_b32 v117, v110, v106, 0x5010400
	v_perm_b32 v110, v110, v106, 0x7030602
	v_perm_b32 v123, v111, v107, 0x5010400
	v_perm_b32 v111, v111, v107, 0x7030602
	v_perm_b32 v124, v112, v108, 0x5010400
	v_perm_b32 v112, v112, v108, 0x7030602
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v105.l, 8, v115.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v125, 8, v114
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v105.h, 8, v118.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v126, 24, v114
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v106.l, 8, v116.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v129, 8, v109
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v106.h, 8, v113.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshrrev_b32_e32 v130, 24, v109
	v_lshrrev_b32_e32 v131, 8, v117
	v_and_b16 v113.l, 0xff, v117.l
	v_lshrrev_b32_e32 v132, 24, v117
	v_and_b16 v113.h, 0xff, v117.h
	v_lshrrev_b32_e32 v133, 8, v110
	v_lshrrev_b32_e32 v134, 24, v110
	v_lshrrev_b32_e32 v135, 8, v123
	v_and_b16 v115.l, 0xff, v123.l
	v_lshrrev_b32_e32 v136, 24, v123
	v_and_b16 v115.h, 0xff, v123.h
	v_lshrrev_b32_e32 v123, 8, v111
	v_and_b16 v116.l, 0xff, v111.l
	v_lshrrev_b32_e32 v137, 24, v111
	v_and_b16 v116.h, 0xff, v111.h
	v_lshrrev_b32_e32 v111, 8, v124
	v_and_b16 v117.l, 0xff, v124.l
	v_lshrrev_b32_e32 v138, 24, v124
	v_and_b16 v117.h, 0xff, v124.h
	v_lshrrev_b32_e32 v124, 8, v112
	v_lshrrev_b32_e32 v139, 24, v112
	v_and_b16 v107.l, 0xff, v114.l
	v_and_b16 v107.h, 0xff, v114.h
	v_and_b16 v114.h, 0xff, v110.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(3)
	v_or_b16 v110.h, v119.l, v105.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshlrev_b16 v105.l, 8, v125.l
	v_and_b16 v114.l, 0xff, v110.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(2)
	v_or_b16 v110.l, v120.l, v105.h
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshlrev_b16 v105.h, 8, v126.l
	v_and_b16 v108.l, 0xff, v109.l
	v_and_b16 v108.h, 0xff, v109.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(1)
	v_or_b16 v109.h, v121.l, v106.l
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshlrev_b16 v106.l, 8, v129.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(0)
	v_or_b16 v109.l, v122.l, v106.h
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshlrev_b16 v106.h, 8, v130.l
	v_and_b16 v118.l, 0xff, v112.l
	v_and_b16 v118.h, 0xff, v112.h
	v_lshlrev_b16 v119.l, 8, v131.l
	v_lshlrev_b16 v119.h, 8, v132.l
	v_lshlrev_b16 v120.l, 8, v133.l
	v_lshlrev_b16 v120.h, 8, v134.l
	v_lshlrev_b16 v121.l, 8, v135.l
	v_lshlrev_b16 v121.h, 8, v136.l
	v_lshlrev_b16 v122.l, 8, v123.l
	v_lshlrev_b16 v122.h, 8, v137.l
	v_lshlrev_b16 v123.l, 8, v111.l
	v_lshlrev_b16 v123.h, 8, v138.l
	v_lshlrev_b16 v124.l, 8, v124.l
	v_lshlrev_b16 v124.h, 8, v139.l
	v_or_b16 v125.l, v107.l, v105.l
	v_or_b16 v125.h, v107.h, v105.h
	v_or_b16 v126.l, v108.l, v106.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_store_b64 v67, v[109:110]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_or_b16 v126.h, v108.h, v106.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_b64 v[129:130], v78
	ds_load_b64 v[131:132], v79
	ds_load_b64 v[133:134], v80
	ds_load_b64 v[135:136], v81
	ds_load_b64 v[137:138], v82
	ds_load_b64 v[139:140], v83
	ds_load_b64 v[141:142], v84
	ds_load_b64 v[143:144], v85
	ds_load_b64 v[145:146], v86
	ds_load_b64 v[147:148], v87
	ds_load_b64 v[149:150], v88
	ds_load_b64 v[151:152], v89
	ds_load_2addr_stride64_b64 v[105:108], v127 offset1:1
	ds_load_2addr_stride64_b64 v[109:112], v127 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_or_b16 v113.l, v113.l, v119.l
	v_or_b16 v113.h, v113.h, v119.h
	v_or_b16 v114.l, v114.l, v120.l
	v_or_b16 v114.h, v114.h, v120.h
	v_or_b16 v115.l, v115.l, v121.l
	v_or_b16 v115.h, v115.h, v121.h
	v_or_b16 v116.l, v116.l, v122.l
	v_or_b16 v116.h, v116.h, v122.h
	v_or_b16 v117.l, v117.l, v123.l
	v_or_b16 v117.h, v117.h, v123.h
	v_or_b16 v118.l, v118.l, v124.l
	v_or_b16 v118.h, v118.h, v124.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v128, v125
	ds_store_b16_d16_hi v128, v125 offset:32
	ds_store_b16 v128, v126 offset:64
	ds_store_b16_d16_hi v128, v126 offset:96
	ds_store_b16 v90, v113
	ds_store_b16_d16_hi v90, v113 offset:32
	ds_store_b16 v90, v114 offset:64
	ds_store_b16_d16_hi v90, v114 offset:96
	ds_store_b16 v91, v115
	ds_store_b16_d16_hi v91, v115 offset:32
	ds_store_b16 v91, v116 offset:64
	ds_store_b16_d16_hi v91, v116 offset:96
	ds_store_b16 v92, v117
	ds_store_b16_d16_hi v92, v117 offset:32
	ds_store_b16 v92, v118 offset:64
	ds_store_b16_d16_hi v92, v118 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[113:116], v104 offset1:8
	ds_load_2addr_stride64_b64 v[117:120], v93 offset1:8
	ds_load_2addr_stride64_b64 v[121:124], v94 offset1:8
	ds_load_2addr_stride64_b64 v[125:128], v95 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[105:106], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[105:106], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[147:148], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[117:118], v[107:108], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[119:120], v[107:108], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[117:118], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[117:118], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[119:120], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[117:118], v[149:150], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[119:120], v[149:150], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[121:122], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[123:124], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[121:122], v[137:138], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[123:124], v[137:138], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[121:122], v[109:110], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[123:124], v[109:110], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[121:122], v[151:152], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[123:124], v[151:152], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[145:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[125:126], v[111:112], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[127:128], v[111:112], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v105, v1
	v_cvt_f32_i32_e32 v104, v2
	v_cvt_f32_i32_e32 v103, v3
	v_cvt_f32_i32_e32 v102, v4
	v_cvt_f32_i32_e32 v101, v5
	v_cvt_f32_i32_e32 v100, v6
	v_cvt_f32_i32_e32 v99, v7
	v_cvt_f32_i32_e32 v98, v8
	v_cvt_f32_i32_e32 v97, v9
	v_cvt_f32_i32_e32 v96, v10
	v_cvt_f32_i32_e32 v95, v11
	v_cvt_f32_i32_e32 v94, v12
	v_cvt_f32_i32_e32 v93, v13
	v_cvt_f32_i32_e32 v92, v14
	v_cvt_f32_i32_e32 v91, v15
	v_cvt_f32_i32_e32 v90, v16
	v_cvt_f32_i32_e32 v89, v17
	v_cvt_f32_i32_e32 v88, v18
	v_cvt_f32_i32_e32 v87, v19
	v_cvt_f32_i32_e32 v86, v20
	v_cvt_f32_i32_e32 v85, v21
	v_cvt_f32_i32_e32 v84, v22
	v_cvt_f32_i32_e32 v83, v23
	v_cvt_f32_i32_e32 v82, v24
	v_cvt_f32_i32_e32 v81, v25
	v_cvt_f32_i32_e32 v80, v26
	v_cvt_f32_i32_e32 v79, v27
	v_cvt_f32_i32_e32 v78, v28
	v_cvt_f32_i32_e32 v77, v29
	v_cvt_f32_i32_e32 v76, v30
	v_cvt_f32_i32_e32 v75, v31
	v_cvt_f32_i32_e32 v74, v32
	v_cvt_f32_i32_e32 v73, v33
	v_cvt_f32_i32_e32 v67, v34
	v_cvt_f32_i32_e32 v66, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v30, v41
	v_cvt_f32_i32_e32 v29, v42
	v_cvt_f32_i32_e32 v28, v43
	v_cvt_f32_i32_e32 v27, v44
	v_cvt_f32_i32_e32 v26, v45
	v_cvt_f32_i32_e32 v25, v46
	v_cvt_f32_i32_e32 v24, v47
	v_cvt_f32_i32_e32 v23, v48
	v_cvt_f32_i32_e32 v22, v49
	v_cvt_f32_i32_e32 v21, v50
	v_cvt_f32_i32_e32 v20, v51
	v_cvt_f32_i32_e32 v19, v52
	v_cvt_f32_i32_e32 v18, v53
	v_cvt_f32_i32_e32 v17, v54
	v_cvt_f32_i32_e32 v16, v55
	v_cvt_f32_i32_e32 v15, v56
	v_cvt_f32_i32_e32 v14, v57
	v_cvt_f32_i32_e32 v13, v58
	v_cvt_f32_i32_e32 v12, v59
	v_cvt_f32_i32_e32 v11, v60
	v_cvt_f32_i32_e32 v10, v61
	v_cvt_f32_i32_e32 v9, v62
	v_cvt_f32_i32_e32 v8, v63
	v_cvt_f32_i32_e32 v2, v64
	v_dual_mov_b32 v4, s26 :: v_dual_mov_b32 v5, v71
	v_mov_b32_e32 v1, v72
	v_mov_b32_e32 v3, v65
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 32, v68
	v_or_b32_e32 v6, 48, v68
	v_or_b32_e32 v38, 16, v68
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s1, s26, v36
	v_add_co_u32 v6, s0, s26, v6
	v_add_co_ci_u32_e64 v37, null, s27, 0, s1
	v_add_co_u32 v38, s1, s26, v38
	v_add_co_ci_u32_e64 v7, null, s27, 0, s0
	v_add_co_ci_u32_e64 v39, null, s27, 0, s1
	v_add_co_u32 v40, s1, s26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v41, null, s27, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[22:23], v[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[38:39]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s6, s[24:25], v[40:41]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[22:23], v[40:41]
	v_cmp_gt_i64_e64 s5, s[22:23], v[38:39]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[36:37]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[22:23], v[36:37]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v7, 1, v40
	v_lshlrev_b32_e32 v37, 1, v38
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	s_and_b32 s4, s4, s5
	s_and_b32 s1, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v37, 0x80000000, v37, s4
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s8
	s_clause 0x3
	buffer_load_u16 v38, v7, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	buffer_load_u16 v39, v6, s[12:15], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v6, s29, v0
	s_mul_i32 s0, s20, s28
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v42, v69, 2, 0
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v6, v6, s0, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v43, v69, 1, 0
	s_mov_b32 s0, 0x76543210
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v40, v6, s[12:15], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v63, v85, v37 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v41, 28, v5
	v_lshlrev_b32_e32 v5, 5, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v46, v102, v38 :: v_dual_and_b32 v55, 3, v0
	v_dual_mul_f32 v47, v101, v38 :: v_dual_and_b32 v106, 0x80, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v51, v97, v38 :: v_dual_and_b32 v44, 32, v5
	v_dual_mul_f32 v50, v98, v38 :: v_dual_and_b32 v107, 4, v0
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v45, v55, 9, 0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp6:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v41, v42, v44, v41
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v53, v95, v38 :: v_dual_lshlrev_b32 v36, 16, v36
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v56, v93, v38 :: v_dual_lshlrev_b32 v39, 16, v39
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v92, v38 :: v_dual_lshlrev_b32 v40, 16, v40
	v_dual_mul_f32 v48, v100, v38 :: v_dual_and_b32 v7, 0x60, v0
	v_dual_mul_f32 v49, v99, v38 :: v_dual_and_b32 v108, 8, v0
	v_dual_mul_f32 v52, v96, v38 :: v_dual_lshlrev_b32 v5, 5, v55
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v112, v107, 2, v45
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v42, v105, v38
	v_mul_f32_e32 v44, v104, v38
	v_mul_f32_e32 v45, v103, v38
	v_mul_f32_e32 v54, v94, v38
	v_dual_mul_f32 v61, v87, v37 :: v_dual_lshlrev_b32 v6, 1, v106
	v_dual_mul_f32 v58, v91, v38 :: v_dual_mul_f32 v71, v82, v37
	v_dual_mul_f32 v38, v90, v38 :: v_dual_mul_f32 v65, v83, v37
	v_mul_f32_e32 v59, v89, v37
	v_dual_mul_f32 v60, v88, v37 :: v_dual_mul_f32 v73, v73, v36
	v_dual_mul_f32 v62, v86, v37 :: v_dual_mul_f32 v67, v67, v36
	v_dual_mul_f32 v64, v84, v37 :: v_dual_mul_f32 v35, v35, v36
	v_dual_mul_f32 v72, v81, v37 :: v_dual_mul_f32 v83, v31, v36
	v_dual_mul_f32 v80, v80, v37 :: v_dual_mul_f32 v81, v33, v36
	v_mul_f32_e32 v79, v79, v37
	v_dual_mul_f32 v78, v78, v37 :: v_dual_mul_f32 v85, v29, v36
	v_dual_mul_f32 v77, v77, v37 :: v_dual_mul_f32 v82, v32, v36
	v_dual_mul_f32 v76, v76, v37 :: v_dual_mul_f32 v87, v27, v36
	v_dual_mul_f32 v75, v75, v37 :: v_dual_mul_f32 v84, v30, v36
	v_dual_mul_f32 v37, v74, v37 :: v_dual_mul_f32 v86, v28, v36
	v_mul_f32_e32 v66, v66, v36
	v_mul_f32_e32 v74, v34, v36
	v_dual_mul_f32 v88, v26, v36 :: v_dual_mul_f32 v21, v21, v39
	v_dual_mul_f32 v89, v25, v36 :: v_dual_mul_f32 v22, v22, v39
	v_mul_f32_e32 v90, v24, v36
	v_dual_mul_f32 v36, v23, v36 :: v_dual_mul_f32 v91, v18, v39
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v41, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v43
	ds_load_b128 v[27:30], v43 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v40, v20, v39
	v_mul_f32_e32 v41, v19, v39
	v_mul_f32_e32 v92, v17, v39
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[17:20], v43 offset:512
	ds_load_b128 v[31:34], v43 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v16, v16, v39
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v14, v14, v39
	v_mul_f32_e32 v13, v13, v39
	v_mul_f32_e32 v12, v12, v39
	v_mul_f32_e32 v11, v11, v39
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v9, v9, v39
	v_mul_f32_e32 v8, v8, v39
	v_mul_f32_e32 v2, v2, v39
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v1, 0x680, v1, v5
	v_lshrrev_b32_e32 v109, 3, v106
	v_lshl_add_u32 v110, v107, 6, 0
.Ltmp10:
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v39, v42, v23 :: v_dual_mul_f32 v42, v44, v24
	v_dual_mul_f32 v43, v45, v25 :: v_dual_mul_f32 v44, v46, v26
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v45, v47, v27 :: v_dual_mul_f32 v46, v48, v28
	v_dual_mul_f32 v47, v49, v29 :: v_dual_mul_f32 v48, v50, v30
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v49, v51, v17 :: v_dual_mul_f32 v50, v52, v18
	v_dual_mul_f32 v51, v53, v19 :: v_dual_mul_f32 v52, v54, v20
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v53, v56, v31 :: v_dual_mul_f32 v54, v57, v32
	v_mul_f32_e32 v56, v58, v33
	v_dual_mul_f32 v38, v38, v34 :: v_dual_mul_f32 v57, v59, v23
	v_dual_mul_f32 v58, v60, v24 :: v_dual_mul_f32 v59, v61, v25
	v_dual_mul_f32 v60, v62, v26 :: v_dual_mul_f32 v77, v77, v31
	v_dual_mul_f32 v61, v63, v27 :: v_dual_mul_f32 v62, v64, v28
	v_mul_f32_e32 v37, v37, v34
	v_dual_mul_f32 v63, v65, v29 :: v_dual_mul_f32 v64, v71, v30
	v_mul_f32_e32 v73, v73, v23
	v_mul_f32_e32 v65, v72, v17
	v_dual_mul_f32 v71, v80, v18 :: v_dual_mul_f32 v72, v79, v19
	v_mul_f32_e32 v79, v81, v28
	v_dual_mul_f32 v78, v78, v20 :: v_dual_mul_f32 v35, v35, v26
	v_dual_mul_f32 v76, v76, v32 :: v_dual_mul_f32 v81, v83, v30
	v_mul_f32_e32 v75, v75, v33
	v_dual_mul_f32 v67, v67, v24 :: v_dual_mul_f32 v66, v66, v25
	v_dual_mul_f32 v74, v74, v27 :: v_dual_mul_f32 v83, v85, v18
	v_dual_mul_f32 v80, v82, v29 :: v_dual_mul_f32 v85, v87, v20
	v_dual_mul_f32 v82, v84, v17 :: v_dual_mul_f32 v87, v89, v32
	v_dual_mul_f32 v84, v86, v19 :: v_dual_mul_f32 v21, v21, v24
	v_dual_mul_f32 v86, v88, v31 :: v_dual_mul_f32 v15, v15, v30
	v_mul_f32_e32 v88, v90, v33
	v_dual_mul_f32 v36, v36, v34 :: v_dual_mul_f32 v11, v11, v20
	v_dual_mul_f32 v22, v22, v23 :: v_dual_mul_f32 v23, v40, v25
	v_dual_mul_f32 v24, v41, v26 :: v_dual_mul_f32 v25, v91, v27
	v_dual_mul_f32 v26, v92, v28 :: v_dual_mul_f32 v13, v13, v18
	v_dual_mul_f32 v16, v16, v29 :: v_dual_mul_f32 v9, v9, v32
	v_mul_f32_e32 v14, v14, v17
	v_dual_mul_f32 v12, v12, v19 :: v_dual_max_f32 v27, 0, v45
	v_dual_mul_f32 v10, v10, v31 :: v_dual_max_f32 v31, 0, v49
	v_dual_mul_f32 v8, v8, v33 :: v_dual_max_f32 v29, 0, v47
	v_dual_mul_f32 v2, v2, v34 :: v_dual_max_f32 v33, 0, v51
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v17, 0, v39 :: v_dual_max_f32 v18, 0, v42
	v_dual_max_f32 v19, 0, v43 :: v_dual_max_f32 v20, 0, v44
	v_max_f32_e32 v43, 0, v54
	v_dual_max_f32 v28, 0, v46 :: v_dual_max_f32 v63, 0, v63
	v_dual_max_f32 v30, 0, v48 :: v_dual_max_f32 v47, 0, v38
	v_dual_max_f32 v32, 0, v50 :: v_dual_max_f32 v89, 0, v65
	v_dual_max_f32 v34, 0, v52 :: v_dual_max_f32 v51, 0, v58
	v_dual_max_f32 v42, 0, v53 :: v_dual_max_f32 v71, 0, v71
	v_dual_max_f32 v46, 0, v56 :: v_dual_max_f32 v91, 0, v78
	v_dual_max_f32 v50, 0, v57 :: v_dual_max_f32 v93, 0, v76
	v_dual_max_f32 v54, 0, v59 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v56, 0, v60 :: v_dual_max_f32 v95, 0, v73
	v_dual_max_f32 v59, 0, v61 :: v_dual_max_f32 v60, 0, v62
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v64, 0, v64
	v_dual_max_f32 v97, 0, v66 :: v_dual_max_f32 v90, 0, v72
	v_dual_max_f32 v99, 0, v79 :: v_dual_max_f32 v92, 0, v77
	v_max_f32_e32 v83, 0, v83
	v_dual_max_f32 v94, 0, v75 :: v_dual_max_f32 v81, 0, v81
	v_dual_max_f32 v96, 0, v67 :: v_dual_max_f32 v85, 0, v85
	v_dual_max_f32 v98, 0, v74 :: v_dual_max_f32 v87, 0, v87
	v_dual_max_f32 v80, 0, v80 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v84, 0, v84 :: v_dual_max_f32 v103, 0, v26
	v_dual_max_f32 v86, 0, v86 :: v_dual_max_f32 v101, 0, v24
	v_dual_max_f32 v88, 0, v88 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v100, 0, v36 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v102, 0, v25 :: v_dual_mul_f32 v39, v18, v18
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v41, v20, v20
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v49, v30, v30
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v45, v28, v28
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v57, v33, v33
	v_dual_max_f32 v2, 0, v2 :: v_dual_mul_f32 v53, v32, v32
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v38, v17, v17 :: v_dual_mul_f32 v61, v42, v42
	v_dual_mul_f32 v40, v19, v19 :: v_dual_mul_f32 v65, v46, v46
	v_dual_mul_f32 v44, v27, v27 :: v_dual_mul_f32 v77, v56, v56
	v_dual_mul_f32 v48, v29, v29 :: v_dual_mul_f32 v73, v51, v51
	v_dual_mul_f32 v52, v31, v31 :: v_dual_mul_f32 v75, v64, v64
	v_dual_mul_f32 v58, v34, v34 :: v_dual_mul_f32 v79, v59, v59
	v_dual_mul_f32 v62, v43, v43 :: v_dual_mul_f32 v67, v89, v89
	v_mul_f32_e32 v66, v47, v47
	v_dual_mul_f32 v72, v50, v50 :: v_dual_mul_f32 v71, v71, v71
	v_dual_mul_f32 v76, v54, v54 :: v_dual_mul_f32 v59, v92, v92
	v_dual_mul_f32 v78, v60, v60 :: v_dual_mul_f32 v47, v35, v35
	v_dual_mul_f32 v74, v63, v63 :: v_dual_mul_f32 v51, v96, v96
	v_dual_mul_f32 v63, v90, v90 :: v_dual_mul_f32 v64, v91, v91
	v_dual_mul_f32 v60, v93, v93 :: v_dual_mul_f32 v43, v99, v99
	v_dual_mul_f32 v56, v94, v94 :: v_dual_mul_f32 v33, v83, v83
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v82, 0, v82 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v11, 0, v11
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v54, v37, v37 :: v_dual_mul_f32 v31, v84, v84
	v_dual_mul_f32 v50, v95, v95 :: v_dual_mul_f32 v27, v88, v88
	v_dual_mul_f32 v46, v97, v97 :: v_dual_mul_f32 v29, v87, v87
	v_dual_mul_f32 v42, v98, v98 :: v_dual_mul_f32 v25, v23, v23
	v_dual_mul_f32 v36, v80, v80 :: v_dual_mul_f32 v23, v101, v101
	v_mul_f32_e32 v37, v81, v81
	v_dual_mul_f32 v32, v85, v85 :: v_dual_mul_f32 v17, v16, v16
	v_dual_mul_f32 v30, v86, v86 :: v_dual_mul_f32 v11, v11, v11
	v_dual_mul_f32 v28, v100, v100 :: v_dual_mul_f32 v19, v14, v14
	v_mul_f32_e32 v24, v21, v21
	v_mul_f32_e32 v18, v15, v15
	v_mul_f32_e32 v16, v12, v12
	v_mul_f32_e32 v12, v10, v10
	v_dual_mul_f32 v14, v8, v8 :: v_dual_mul_f32 v15, v2, v2
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v38, v39
	v_max3_f32 v8, v41, v44, v45
	v_max3_f32 v10, v53, v57, v58
	v_max3_f32 v35, v61, v62, v65
	v_max_f32_e32 v80, v72, v73
	v_max3_f32 v81, v77, v79, v78
	v_max3_f32 v83, v71, v63, v64
	v_max3_f32 v84, v59, v60, v56
.Ltmp12:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v34, v82, v82 :: v_dual_mul_f32 v21, v103, v103
	v_mul_f32_e32 v26, v22, v22
	v_dual_mul_f32 v20, v13, v13 :: v_dual_max_f32 v85, v50, v51
	v_mul_f32_e32 v13, v9, v9
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v48, v49, v52
	v_max3_f32 v82, v74, v75, v67
	v_max3_f32 v86, v47, v42, v43
	v_max3_f32 v88, v33, v31, v32
	v_max3_f32 v89, v30, v29, v27
	v_max3_f32 v2, v2, v40, v8
	v_max3_f32 v8, v10, v35, v66
	v_max3_f32 v10, v80, v76, v81
	v_max3_f32 v35, v83, v84, v54
	v_max3_f32 v87, v36, v37, v34
	v_max3_f32 v80, v85, v46, v86
	v_max3_f32 v81, v88, v89, v28
	v_max3_f32 v2, v2, v9, v8
	v_max3_f32 v8, v10, v82, v35
	v_max_f32_e32 v90, v26, v24
	v_max3_f32 v93, v20, v16, v11
	v_max3_f32 v9, v80, v87, v81
	v_max3_f32 v94, v12, v13, v14
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v81, v8, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v22, v102, v102
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v80, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v82, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v84, v93, v94, v15
	v_max_f32_e32 v81, v81, v81
	v_max3_f32 v91, v23, v22, v21
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v111, v5, v7
	v_lshl_add_u32 v35, v108, 4, v112
	v_xor_b32_e32 v1, v1, v7
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v8, v81
	v_max3_f32 v92, v17, v18, v19
	v_max3_f32 v83, v90, v25, v91
	v_max_f32_e32 v80, v80, v80
	v_max_f32_e32 v82, v82, v82
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v35, v35, v6, v111
	v_add3_u32 v1, v110, v109, v1
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, v83, v92, v84
	v_max_f32_e32 v80, v2, v80
	v_max_f32_e32 v82, v9, v82
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_permlanex16_b32 v83, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v85, 5, v107
	v_lshl_add_u32 v55, v55, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v83, v83
	v_max_f32_e32 v83, v10, v83
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v35, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v1, v80 :: v_dual_mov_b32 v8, v81
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v83, v83
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v81, v81
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v83, v83 :: v_dual_mov_b32 v10, v82
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v80, v82, v82
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v82, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v35, v81
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v2, v1 :: v_dual_max_f32 v8, v8, v8
.Ltmp36:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v7, v70, v7
	v_lshlrev_b32_e32 v70, 6, v0
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v9, v8 :: v_dual_mov_b32 v9, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v5, 0x1b00, v70, v5
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v5, v5, v69, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v9, v35, v9 :: v_dual_max_f32 v10, v10, v10
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v35, v9 :: v_dual_max_f32 v8, v80, v10
	v_mov_b32_e32 v10, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v81, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v8, v8, v81
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v83, v8 :: v_dual_mov_b32 v80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v86, v83, v83
	v_dual_max_f32 v80, v80, v80 :: v_dual_max_f32 v83, v9, v35
.Ltmp48:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v80
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v1, v1, v10 :: v_dual_lshlrev_b32 v84, 3, v108
	v_dual_max_f32 v81, v2, v81 :: v_dual_add_nc_u32 v10, 0, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v1
	v_add3_u32 v10, v10, v82, v84
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v8, v86
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v8, 4, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, v35.h
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 48, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
	v_max_f32_e32 v80, v1, v80
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v55, v85, v84
.Ltmp59:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, v35.h
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v55, 32, v8
	v_or_b32_e32 v84, 16, v8
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v10, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v1
.Ltmp61:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s26, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s27, 0, s0
	v_add_co_u32 v9, s0, s26, v9
	v_add_co_ci_u32_e64 v10, null, s27, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[22:23], v[1:2]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v82, v82, v82 :: v_dual_max_f32 v81, v81, v81
	v_max_f32_e32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v89, 0x2b8cbccc, v82 :: v_dual_max_f32 v88, 0x2b8cbccc, v81
	v_max_f32_e32 v90, 0x2b8cbccc, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v92, null, 0x40e00000, 0x40e00000, v89
	v_div_scale_f32 v93, null, 0x40e00000, 0x40e00000, v88
	v_div_scale_f32 v99, s1, v89, 0x40e00000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v95, v92
	v_rcp_f32_e32 v96, v93
	v_div_scale_f32 v94, null, 0x40e00000, 0x40e00000, v90
	v_div_scale_f32 v100, s3, v88, 0x40e00000, v88
	v_div_scale_f32 v103, s4, v90, 0x40e00000, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v83, -v92, v95, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v93, v96, 1.0
	v_dual_fmac_f32 v95, v83, v95 :: v_dual_fmac_f32 v96, v101, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v102, -v94, v97, 1.0
	v_mul_f32_e32 v101, v99, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v97, v102, v97 :: v_dual_mul_f32 v102, v100, v96
	v_fma_f32 v106, -v92, v101, v99
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v104, v103, v97
	v_fma_f32 v107, -v93, v102, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v101, v106, v95
	v_max_f32_e32 v87, 0x2b8cbccc, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s0, s26, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v81, null, s27, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v87
	v_div_scale_f32 v98, vcc_lo, v87, 0x40e00000, v87
	v_fmac_f32_e32 v102, v107, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v55, v91
	v_fma_f32 v2, -v92, v101, v99
	v_fma_f32 v108, -v94, v104, v103
	v_fma_f32 v82, -v91, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v82, v55
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s0, s26, v84
	v_add_co_ci_u32_e64 v83, null, s27, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v84, v98, v55
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[24:25], v[9:10]
	v_cmp_le_i64_e64 s7, s[24:25], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[22:23], v[82:83]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v105, -v91, v84, v98
	v_fmac_f32_e32 v84, v105, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v91, v84, v98
	v_fma_f32 v91, -v93, v102, v100
	v_div_fmas_f32 v1, v1, v55, v84
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[22:23], v[9:10]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v95, v101
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v1, 0x40e00000, v87
	v_div_fmas_f32 v55, v91, v96, v102
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[24:25], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[22:23], v[80:81]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v1.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v10, v55, 0x40e00000, v88
	v_div_fixup_f32 v2, v2, 0x40e00000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v9, 1, v85
	v_mov_b16_e32 v86.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v35.l, v2.h
	v_add3_u32 v9, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v80, 1, v86
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v81, v81, v38
	v_div_scale_f32 v86, null, v81, v81, v40
	v_div_scale_f32 v87, s10, v40, v81, v40
	v_rcp_f32_e32 v95, v82
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v104, v108, v97
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v81, v81, v41
	v_div_scale_f32 v85, s9, v39, v81, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v92, -v94, v104, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v98, v88
	v_div_scale_f32 v91, s12, v44, v81, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v103, -v82, v95, 1.0
	v_div_scale_f32 v89, s11, v41, v81, v41
	v_div_scale_f32 v94, null, v81, v81, v48
	v_fmac_f32_e32 v95, v103, v95
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v84, v92, v97, v104
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v97, v86
	v_div_scale_f32 v83, vcc_lo, v38, v81, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v106, -v88, v98, 1.0
	v_div_scale_f32 v92, null, v81, v81, v45
	v_mul_f32_e32 v103, v83, v95
	v_rcp_f32_e32 v102, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v98, v106, v98
	v_rcp_f32_e32 v100, v92
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v105, -v86, v97, 1.0
	v_fma_f32 v109, -v82, v103, v83
	v_div_scale_f32 v101, null, v81, v81, v49
	v_mul_f32_e32 v106, v89, v98
	v_fmac_f32_e32 v97, v105, v97
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v55, v84, 0x40e00000, v90
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v81, v81, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v112, -v88, v106, v89
	v_mul_f32_e32 v105, v87, v97
	v_fmac_f32_e32 v103, v109, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v99, v90
	v_fma_f32 v108, -v92, v100, 1.0
	v_fmac_f32_e32 v106, v112, v98
	v_fma_f32 v111, -v86, v105, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v84, 1, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v82, v103, v83
	v_div_scale_f32 v93, s13, v45, v81, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v105, v111, v97
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v84, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v81, v81, v39
	v_fma_f32 v107, -v90, v99, 1.0
	v_div_fmas_f32 v82, v82, v95, v103
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v96, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.l, v55.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v107, v99
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v82, v81, v38
	v_div_scale_f32 v82, s9, v48, v81, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v107, v91, v99 :: v_dual_and_b32 v80, 0xffff0000, v10
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v35, 1, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v104, -v84, v96, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v113, -v90, v107, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v55, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v104, v96 :: v_dual_and_b32 v55, 0xffff0000, v1
	v_fmac_f32_e32 v107, v113, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v104, v85, v96 :: v_dual_and_b32 v35, 0xffff0000, v2
	v_fma_f32 v110, -v84, v104, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v110, v96
	v_fma_f32 v83, -v84, v104, v85
	v_fma_f32 v84, -v86, v105, v87
	v_fma_f32 v85, -v88, v106, v89
	v_fma_f32 v87, -v94, v102, 1.0
	v_rcp_f32_e32 v88, v101
	v_div_fmas_f32 v83, v83, v96, v104
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v89, -v90, v107, v91
	v_div_fmas_f32 v84, v84, v97, v105
	v_fmac_f32_e32 v102, v87, v102
	v_fmac_f32_e32 v100, v108, v100
	v_div_fixup_f32 v39, v83, v81, v39
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v40, v84, v81, v40
	v_fma_f32 v83, -v101, v88, 1.0
	v_div_scale_f32 v84, null, v81, v81, v52
	v_dual_mul_f32 v87, v82, v102 :: v_dual_mul_f32 v108, v93, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v83, v88
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v90, null, v81, v81, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v92, v108, v93
	v_fma_f32 v91, -v94, v87, v82
	v_rcp_f32_e32 v95, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v108, v86, v100 :: v_dual_fmac_f32 v87, v91, v102
	v_div_scale_f32 v91, null, v81, v81, v57
	v_fma_f32 v86, -v92, v108, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v84, v83, 1.0
	v_fma_f32 v82, -v94, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v94, v91
	v_fmac_f32_e32 v83, v93, v83
	v_div_fmas_f32 v85, v85, v98, v106
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v98, null, v81, v81, v58
	v_fma_f32 v93, -v90, v95, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v41, v85, v81, v41
	v_div_fmas_f32 v85, v89, v99, v107
	v_div_scale_f32 v89, s10, v49, v81, v49
	s_mov_b32 vcc_lo, s13
	v_fmac_f32_e32 v95, v93, v95
	v_div_fmas_f32 v86, v86, v100, v108
	v_mul_f32_e32 v92, v89, v88
	v_div_fixup_f32 v44, v85, v81, v44
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, s12, v53, v81, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v101, v92, v89
	v_div_fixup_f32 v45, v86, v81, v45
	v_div_scale_f32 v86, s11, v52, v81, v52
	v_div_fmas_f32 v82, v82, v102, v87
	v_fmac_f32_e32 v92, v85, v88
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v86, v83
	v_fma_f32 v97, -v91, v94, 1.0
	v_div_fixup_f32 v48, v82, v81, v48
	v_fma_f32 v87, -v101, v92, v89
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v84, v85, v86
	v_fmac_f32_e32 v94, v97, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v87, v87, v88, v92
	v_rcp_f32_e32 v88, v98
	v_fmac_f32_e32 v85, v89, v83
	v_div_scale_f32 v92, s9, v57, v81, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v49, v87, v81, v49
	v_div_scale_f32 v87, null, v81, v81, v61
	v_fma_f32 v82, -v84, v85, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v92, v94
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v86, -v98, v88, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v83, v85
	v_fma_f32 v85, -v91, v84, v92
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v86, v88
	v_mul_f32_e32 v96, v93, v95
	v_rcp_f32_e32 v86, v87
	v_fmac_f32_e32 v84, v85, v94
	v_div_fixup_f32 v52, v82, v81, v52
	v_fma_f32 v89, -v90, v96, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v91, v84, v92
	v_div_scale_f32 v91, s11, v61, v81, v61
	v_fmac_f32_e32 v96, v89, v95
	v_div_scale_f32 v89, s10, v58, v81, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v90, v96, v93
	v_div_scale_f32 v90, null, v81, v81, v62
	v_mul_f32_e32 v93, v89, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v83, v83, v95, v96
	v_rcp_f32_e32 v85, v90
	v_fma_f32 v95, -v87, v86, 1.0
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v53, v83, v81, v53
	v_fma_f32 v83, -v98, v93, v89
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v81, v81, v65
	v_div_fmas_f32 v82, v82, v94, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v85, 1.0
	v_fmac_f32_e32 v93, v83, v88
	v_mul_f32_e32 v83, v91, v86
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v94, null, v81, v81, v66
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s9, v62, v81, v62
	v_div_fixup_f32 v57, v82, v81, v57
	v_fma_f32 v82, -v98, v93, v89
	v_fma_f32 v89, -v87, v83, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v96, v92, v85
	v_rcp_f32_e32 v97, v94
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v98, -v95, v84, 1.0
	v_div_fmas_f32 v82, v82, v88, v93
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v88, -v90, v96, v92
	v_div_scale_f32 v89, s10, v65, v81, v65
	v_fmac_f32_e32 v84, v98, v84
	v_div_fixup_f32 v58, v82, v81, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v94, v97, 1.0
	v_fma_f32 v82, -v87, v83, v91
	v_fmac_f32_e32 v96, v88, v85
	v_div_scale_f32 v91, null, v80, v80, v72
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v87, v89, v84
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v88, s12, v66, v81, v66
	v_div_fmas_f32 v82, v82, v86, v83
	v_fma_f32 v83, -v90, v96, v92
	v_rcp_f32_e32 v90, v91
	v_div_scale_f32 v93, null, v80, v80, v73
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v95, v87, v89
	v_mul_f32_e32 v92, v88, v97
	v_div_fmas_f32 v83, v83, v85, v96
	v_rcp_f32_e32 v85, v93
	v_div_fixup_f32 v61, v82, v81, v61
	v_fmac_f32_e32 v87, v86, v84
	v_fma_f32 v86, -v94, v92, v88
	v_fma_f32 v96, -v91, v90, 1.0
	v_div_fixup_f32 v62, v83, v81, v62
	v_div_scale_f32 v83, s9, v72, v80, v72
	v_fma_f32 v82, -v95, v87, v89
	v_fmac_f32_e32 v92, v86, v97
	v_fmac_f32_e32 v90, v96, v90
	v_fma_f32 v86, -v93, v85, 1.0
	v_div_scale_f32 v89, null, v80, v80, v76
	s_mov_b32 vcc_lo, s10
	v_div_fmas_f32 v82, v82, v84, v87
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v87, v83, v90
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v88, s10, v73, v80, v73
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v91, v87, v83
	v_div_scale_f32 v94, null, v80, v80, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v88, v85
	v_div_fixup_f32 v66, v84, v81, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v89, v86, 1.0
	v_fmac_f32_e32 v87, v92, v90
	v_div_scale_f32 v84, null, v80, v80, v79
	v_div_fixup_f32 v65, v82, v81, v65
	v_fma_f32 v81, -v93, v95, v88
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v82, s11, v76, v80, v76
	v_fma_f32 v83, -v91, v87, v83
	v_rcp_f32_e32 v91, v84
	v_rcp_f32_e32 v97, v94
	v_fmac_f32_e32 v95, v81, v85
	v_mul_f32_e32 v81, v82, v86
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v96, null, v80, v80, v78
	v_div_fmas_f32 v83, v83, v90, v87
	v_fma_f32 v87, -v93, v95, v88
	v_fma_f32 v88, -v89, v81, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v84, v91, 1.0
	v_fma_f32 v92, -v94, v97, 1.0
	v_div_fixup_f32 v72, v83, v80, v72
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v81, v88, v86
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s9, v79, v80, v79
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s12, v77, v80, v77
	v_fma_f32 v82, -v89, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v93, v91
	v_div_fmas_f32 v85, v87, v85, v95
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v87, v96
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v86, -v84, v83, v93
	v_mul_f32_e32 v90, v92, v97
	v_div_fixup_f32 v73, v85, v80, v73
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v76, v81, v80, v76
	v_fmac_f32_e32 v83, v86, v91
	v_fma_f32 v88, -v94, v90, v92
	v_div_scale_f32 v89, s10, v78, v80, v78
	v_fma_f32 v85, -v96, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v84, v83, v93
	v_fmac_f32_e32 v90, v88, v97
	v_div_scale_f32 v88, null, v80, v80, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v85, v87
	v_div_scale_f32 v84, s11, v74, v80, v74
	v_fma_f32 v82, -v94, v90, v92
	v_div_scale_f32 v92, null, v80, v80, v75
	v_rcp_f32_e32 v85, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v97, v90
	v_rcp_f32_e32 v86, v92
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v81, v81, v91, v83
	v_div_scale_f32 v91, s9, v75, v80, v75
	v_div_fixup_f32 v77, v82, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v79, v81, v80, v79
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v92, v86, 1.0
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v80, v80, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, null, v80, v80, v71
	v_rcp_f32_e32 v83, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v95, v91, v86 :: v_dual_mul_f32 v90, v89, v87
	v_fma_f32 v82, -v96, v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v97, -v94, v83, 1.0
	v_fmac_f32_e32 v90, v82, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v82, v84, v85 :: v_dual_fmac_f32 v83, v97, v83
	v_div_scale_f32 v97, null, v80, v80, v54
	v_fma_f32 v81, -v96, v90, v89
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v88, v82, v84
	v_div_fmas_f32 v81, v81, v87, v90
	v_fma_f32 v87, -v92, v95, v91
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v78, v81, v80, v78
	v_fma_f32 v90, -v93, v96, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, v87, v86
	v_div_scale_f32 v87, s12, v71, v80, v71
	v_fmac_f32_e32 v96, v90, v96
	v_fmac_f32_e32 v82, v89, v85
	v_div_scale_f32 v89, s10, v67, v80, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v88, v82, v84
	v_mul_f32_e32 v84, v89, v83
	v_div_scale_f32 v88, null, v80, v80, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v85, v82
	v_fma_f32 v82, -v92, v95, v91
	v_fma_f32 v85, -v94, v84, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v92, null, v80, v80, v64
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v84, v85, v83
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v93, v91, v87
	v_div_fixup_f32 v74, v81, v80, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v90, 1.0
	v_fma_f32 v81, -v94, v84, v89
	v_div_fixup_f32 v75, v82, v80, v75
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s9, v63, v80, v63
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v86, -v92, v85, 1.0
	v_div_scale_f32 v89, null, v80, v80, v59
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v83, v84
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v84, v82, v90
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v87, s10, v64, v80, v64
	v_div_scale_f32 v93, null, v80, v80, v60
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v84, v82
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v86, 1.0
	v_div_fixup_f32 v67, v81, v80, v67
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v90
	v_div_scale_f32 v91, null, v80, v80, v56
	v_div_fixup_f32 v71, v83, v80, v71
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v83, s11, v59, v80, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v82, -v88, v84, v82
	v_fmac_f32_e32 v94, v81, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v83, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s12, v60, v80, v60
	v_div_fmas_f32 v82, v82, v90, v84
	v_fma_f32 v84, -v92, v94, v87
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v89, v81, v83
	v_mul_f32_e32 v90, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v90, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s9, v56, v80, v56
	v_div_fixup_f32 v63, v82, v80, v63
	v_div_fixup_f32 v64, v84, v80, v64
	v_fma_f32 v82, -v89, v81, v83
	v_fmac_f32_e32 v90, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v55, v55, v50
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s10, v54, v80, v54
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v90, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v55, v55, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v59, v81, v80, v59
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v90
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v60, v82, v80, v60
	v_fma_f32 v82, -v97, v90, v89
	v_div_scale_f32 v91, s11, v50, v55, v50
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v55, v55, v46
	v_div_fmas_f32 v81, v81, v88, v83
	v_fmac_f32_e32 v90, v82, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v55, v55, v47
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s9, v51, v55, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v56, v81, v80, v56
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v90
	v_fmac_f32_e32 v82, v89, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s10, v46, v55, v46
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v54, v81, v80, v54
	v_fma_f32 v80, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v85, s12, v47, v55, v47
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, null, v55, v55, v42
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v81, v89
	v_mul_f32_e32 v90, v85, v96
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v55, v55, v43
	v_div_fmas_f32 v82, v82, v86, v95
	v_fmac_f32_e32 v81, v84, v83
	v_fma_f32 v86, -v92, v90, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v91
	v_div_fixup_f32 v50, v80, v55, v50
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v80, -v94, v81, v89
	v_fmac_f32_e32 v90, v86, v96
	v_div_scale_f32 v89, null, v55, v55, v36
	v_fma_f32 v93, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v90, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v89
	v_div_fixup_f32 v51, v82, v55, v51
	v_fmac_f32_e32 v88, v93, v88
	v_div_scale_f32 v82, s9, v42, v55, v42
	v_fma_f32 v86, -v91, v84, 1.0
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v92, null, v55, v55, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s10, v43, v55, v43
	v_div_fmas_f32 v81, v81, v96, v90
	v_fma_f32 v94, -v89, v85, 1.0
	v_fma_f32 v90, -v87, v83, v82
	v_rcp_f32_e32 v95, v92
	v_div_fixup_f32 v46, v80, v55, v46
	v_div_fixup_f32 v47, v81, v55, v47
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v81, s11, v36, v55, v36
	v_mul_f32_e32 v93, v86, v84
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v55, v55, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v80, -v91, v93, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v87, v83, v82
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v95, v94, v95
	v_dual_fmac_f32 v93, v80, v84 :: v_dual_mul_f32 v80, v81, v85
	v_div_scale_f32 v94, s12, v37, v55, v37
	v_div_fmas_f32 v82, v82, v88, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v96, null, v55, v55, v33
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v86, -v89, v80, v81
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v88, v94
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s9, v34, v55, v34
	v_div_fixup_f32 v42, v82, v55, v42
	v_div_fixup_f32 v43, v83, v55, v43
	v_fma_f32 v81, -v89, v80, v81
	v_fmac_f32_e32 v88, v86, v95
	v_mul_f32_e32 v82, v91, v87
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v55, v55, v31
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s10, v33, v55, v33
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v94
	v_fma_f32 v85, -v90, v82, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v55, v55, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v36, v80, v55, v36
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v95, v88
	v_mul_f32_e32 v88, v89, v84
	v_fma_f32 v80, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v37, v81, v55, v37
	v_fma_f32 v81, -v96, v88, v89
	v_div_scale_f32 v90, s11, v31, v55, v31
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v55, v55, v30
	v_div_fmas_f32 v80, v80, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v81, v84 :: v_dual_fmac_f32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v55, v55, v29
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s9, v32, v55, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v34, v80, v55, v34
	v_fma_f32 v80, -v96, v88, v89
	v_fma_f32 v89, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v88
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s10, v30, v55, v30
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v33, v80, v55, v33
	v_fma_f32 v80, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v55, v55, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s12, v29, v55, v29
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v92, null, v55, v55, v28
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v31, v80, v55, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v32, v81, v55, v32
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s9, v27, v55, v27
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v93, null, v35, v35, v24
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v35, v35, v26
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v86, s10, v28, v55, v28
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v86, v83
	v_div_fixup_f32 v30, v80, v55, v30
	v_div_fixup_f32 v29, v82, v55, v29
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v80, -v92, v91, v86
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v35, v35, v23
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v81, -v89, v84, v81
	v_div_scale_f32 v89, null, v35, v35, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v80, v83 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s11, v26, v35, v26
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v80, v88
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v87, s9, v24, v35, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v80
	v_fma_f32 v92, -v89, v90, 1.0
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v83, v84, v83, v91
	v_mul_f32_e32 v96, v87, v82
	v_fmac_f32_e32 v86, v94, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s12, v25, v35, v25
	v_div_fixup_f32 v27, v81, v55, v27
	v_div_fixup_f32 v28, v83, v55, v28
	v_fma_f32 v55, -v85, v86, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v91, v92, v90
	v_div_scale_f32 v83, null, v35, v35, v22
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v81, -v95, v97, 1.0
	v_fma_f32 v80, -v89, v91, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v84, v82 :: v_dual_fmac_f32 v97, v81, v97
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s10, v23, v35, v23
	v_div_fmas_f32 v55, v55, v88, v86
	v_fma_f32 v84, -v93, v96, v87
	v_div_scale_f32 v86, null, v35, v35, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v81, v97
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v26, v55, v35, v26
	v_fma_f32 v87, -v83, v80, 1.0
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v89, v91, v92
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v89, -v95, v85, v81
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s9, v22, v35, v22
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v85, v89, v97
	v_div_fmas_f32 v84, v84, v90, v91
	v_mul_f32_e32 v55, v87, v80
	v_div_fixup_f32 v24, v82, v35, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v88, 1.0
	v_fma_f32 v81, -v95, v85, v81
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v89, -v83, v55, v87
	v_div_fixup_f32 v25, v84, v35, v25
	v_div_scale_f32 v84, null, v35, v35, v17
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s11, v21, v35, v21
	v_div_fmas_f32 v81, v81, v97, v85
	v_fmac_f32_e32 v55, v89, v80
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v82, v88
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v23, v81, v35, v23
	v_fma_f32 v81, -v83, v55, v87
	v_div_scale_f32 v89, null, v35, v35, v18
	v_fma_f32 v83, -v86, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v81, v80, v55
	v_div_scale_f32 v80, null, v35, v35, v19
	v_fma_f32 v87, -v84, v90, 1.0
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v80
	v_div_scale_f32 v81, s9, v17, v35, v17
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v35, v35, v20
	v_div_fixup_f32 v22, v55, v35, v22
	v_fma_f32 v82, -v86, v85, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v89, v91, 1.0
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v80, v83, 1.0
	v_mul_f32_e32 v86, v81, v90
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v55, v91
	v_div_scale_f32 v55, s10, v18, v35, v18
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v35, v35, v16
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v84, v86, v81
	v_mul_f32_e32 v88, v55, v91
	v_div_scale_f32 v94, s11, v19, v35, v19
	v_fma_f32 v95, -v87, v93, 1.0
	v_rcp_f32_e32 v96, v92
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v55
	v_mul_f32_e32 v97, v94, v83
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s12, v20, v35, v20
	v_div_fixup_f32 v21, v82, v35, v21
	v_fma_f32 v81, -v84, v86, v81
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v82, -v80, v97, v94
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v55, -v89, v88, v55
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s9, v16, v35, v16
	v_div_fmas_f32 v81, v81, v90, v86
	v_div_scale_f32 v86, null, v35, v35, v11
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v80, -v80, v97, v94
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	v_div_fmas_f32 v55, v55, v91, v88
	v_rcp_f32_e32 v88, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v81, v35, v17
	v_div_fmas_f32 v80, v80, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	v_div_fixup_f32 v18, v55, v35, v18
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v19, v80, v35, v19
	v_div_scale_f32 v80, null, v35, v35, v12
	v_fmac_f32_e32 v82, v87, v96
	v_fma_f32 v81, -v86, v88, 1.0
	v_div_fmas_f32 v83, v83, v93, v84
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v35, v35, v15
	v_fma_f32 v55, -v92, v82, v85
	v_fmac_f32_e32 v88, v81, v88
	v_div_scale_f32 v81, null, v35, v35, v13
	v_div_fixup_f32 v20, v83, v35, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v55, v55, v96, v82
	v_rcp_f32_e32 v82, v80
	v_rcp_f32_e32 v85, v81
	v_div_scale_f32 v84, vcc_lo, v11, v35, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v55, v35, v16
	v_div_scale_f32 v83, null, v35, v35, v14
	v_mul_f32_e32 v89, v84, v88
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v80, v82, 1.0
	v_fma_f32 v91, -v81, v85, 1.0
	v_fma_f32 v93, -v86, v89, v84
	v_rcp_f32_e32 v87, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v55, v82
	v_div_scale_f32 v55, s9, v12, v35, v12
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s10, v13, v35, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v95, v55, v82
	v_fmac_f32_e32 v89, v93, v88
	v_fma_f32 v94, -v83, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v97, v91, v85
	v_fma_f32 v96, -v90, v92, 1.0
	v_fma_f32 v93, -v80, v95, v55
	v_fma_f32 v84, -v86, v89, v84
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v86, -v81, v97, v91
	v_div_scale_f32 v94, s11, v14, v35, v14
	v_fmac_f32_e32 v95, v93, v82
	v_div_fmas_f32 v84, v84, v88, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v97, v86, v85
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v55, -v80, v95, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v63, v63, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v81, v97, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v82, v95
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s12, v15, v35, v15
	v_div_fmas_f32 v81, v81, v85, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v94, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v13, v81, v35, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v37
	v_and_b32_e32 v37, 15, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v96, v92
	v_fma_f32 v93, -v83, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v84, v35, v11
	v_div_fixup_f32 v12, v55, v35, v12
	v_fma_f32 v80, -v90, v99, v96
	v_fmac_f32_e32 v98, v93, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v80, v92
	v_fma_f32 v80, -v83, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v90, v99, v96
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v92, v99
	v_div_fixup_f32 v14, v80, v35, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v58, v62
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v15, v82, v35, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v49
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v61
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v72
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v76, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v79, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v73
	v_rndne_f32_e32 v73, v77
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v97, v18
	v_cvt_i32_f32_e32 v101, v11
	v_and_b32_e32 v11, 15, v35
	v_and_b32_e32 v18, 15, v48
	v_and_b32_e32 v35, 15, v67
	v_and_b32_e32 v48, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v67, 10, v0
	v_and_b32_e32 v79, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_cvt_i32_f32_e32 v82, v34
	v_and_b32_e32 v34, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v67, 0x1800, v67
	v_lshlrev_b32_e32 v75, 6, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v74, v74, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v90, v26
	v_cvt_i32_f32_e32 v91, v24
	v_cvt_i32_f32_e32 v92, v25
	v_cvt_i32_f32_e32 v93, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v67, 0, v67, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v84, v31
	v_cvt_i32_f32_e32 v85, v32
	v_cvt_i32_f32_e32 v98, v19
	v_cvt_i32_f32_e32 v99, v20
	v_cvt_i32_f32_e32 v100, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v30
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v88, v27
	v_cvt_i32_f32_e32 v89, v28
	v_cvt_i32_f32_e32 v96, v17
	v_cvt_i32_f32_e32 v102, v12
	v_cvt_i32_f32_e32 v103, v13
	v_cvt_i32_f32_e32 v104, v14
	v_cvt_i32_f32_e32 v105, v15
	v_and_b32_e32 v13, 15, v39
	v_and_b32_e32 v14, 15, v40
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v16, 15, v44
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v27, 15, v65
	v_and_b32_e32 v28, 15, v66
	v_and_b32_e32 v29, 15, v72
	v_and_b32_e32 v30, 15, v73
	v_and_b32_e32 v39, 15, v59
	v_and_b32_e32 v40, 15, v60
	v_and_b32_e32 v43, 15, v50
	v_and_b32_e32 v44, 15, v51
	v_and_b32_e32 v45, 15, v46
	v_and_b32_e32 v46, 15, v47
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v60, 15, v91
	v_and_b32_e32 v61, 15, v92
	v_and_b32_e32 v62, 15, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v6, v67, v7, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v38
	v_cvt_i32_f32_e32 v78, v42
	v_cvt_i32_f32_e32 v80, v36
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v95, v21
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v20, 15, v52
	v_and_b32_e32 v21, 15, v53
	v_and_b32_e32 v22, 15, v55
	v_and_b32_e32 v23, 15, v57
	v_and_b32_e32 v24, 15, v58
	v_and_b32_e32 v33, 15, v74
	v_and_b32_e32 v36, 15, v71
	v_and_b32_e32 v38, 15, v64
	v_and_b32_e32 v42, 15, v54
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v53, 15, v84
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v71, 15, v98
	v_and_b32_e32 v72, 15, v99
	v_and_b32_e32 v73, 15, v100
	v_and_b32_e32 v74, 15, v101
	v_med3_f32 v76, v76, s9, 0x40e00000
	v_med3_f32 v77, v77, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v6, v[11:14]
	ds_store_b128 v6, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v5
	ds_load_b128 v[19:22], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[27:30]
	ds_store_b128 v6, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v5
	ds_load_b128 v[35:38], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[43:46]
	ds_store_b128 v6, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v5
	ds_load_b128 v[51:54], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[59:62]
	ds_store_b128 v6, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v5
	ds_load_b128 v[69:72], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[15:18]
	ds_store_b128 v6, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v5
	ds_load_b128 v[23:26], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v77, v77
	v_and_b32_e32 v41, 15, v56
	v_and_b32_e32 v47, 15, v78
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v31, 15, v76
	v_and_b32_e32 v32, 15, v77
	v_and_b32_e32 v50, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[31:34]
	ds_store_b128 v6, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v5
	ds_load_b128 v[39:42], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v57, 15, v88
	v_and_b32_e32 v58, 15, v89
	v_and_b32_e32 v63, 15, v94
	v_and_b32_e32 v64, 15, v95
	v_and_b32_e32 v65, 15, v96
	v_and_b32_e32 v66, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[47:50]
	ds_store_b128 v6, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v5
	ds_load_b128 v[55:58], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v102
	v_and_b32_e32 v76, 15, v103
	v_and_b32_e32 v77, 15, v104
	v_and_b32_e32 v78, 15, v105
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v24, v38, 4, v30
	v_lshl_or_b32 v30, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v68
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, v8, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[63:66]
	ds_store_b128 v6, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v5
	ds_load_b128 v[73:76], v5 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s20, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s30, 7, v44
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s9, s20, s9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v20, 4, v12
	v_lshl_or_b32 v20, v22, 4, v14
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[4:5]
	v_mad_u64_u32 v[11:12], null, v11, s9, v[4:5]
	v_mad_u64_u32 v[12:13], null, v13, s9, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v35, 4, v27
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v23, v37, 4, v29
	v_lshl_or_b32 v25, v39, 4, v31
	v_lshl_or_b32 v26, v40, 4, v32
	v_lshl_or_b32 v27, v41, 4, v33
	v_lshl_or_b32 v28, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s9, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v4.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v55, 4, v47
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	v_lshl_or_b32 v36, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v4.h, v4.l
	v_or_b16 v15.h, v5.h, v5.l
	v_or_b16 v15.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v21.l
	v_lshlrev_b16 v5.l, 8, v28.l
	v_and_b16 v5.h, 0xff, v27.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	s_mov_b32 s12, s16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v51, 4, v43
	v_lshl_or_b32 v31, v53, 4, v45
	v_lshl_or_b32 v32, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v73, 4, v63
	v_lshl_or_b32 v42, v74, 4, v64
	v_lshl_or_b32 v43, v75, 4, v65
	v_lshl_or_b32 v45, v76, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[14:15], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v5.h, 0xff, v35.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v69, 4, v59
	v_lshl_or_b32 v38, v70, 4, v60
	v_lshl_or_b32 v39, v71, 4, v61
	v_lshl_or_b32 v40, v72, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v4.l, 8, v30.l
	v_and_b16 v4.h, 0xff, v29.l
	buffer_store_b64 v[7:8], v11, s[12:15], 0 offen
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v5.h, 0xff, v43.l
	v_lshlrev_b16 v6.l, 8, v42.l
	v_and_b16 v6.h, 0xff, v41.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v40.l
	v_and_b16 v2.l, 0xff, v39.l
	v_lshlrev_b16 v4.l, 8, v38.l
	v_and_b16 v4.h, 0xff, v37.l
	v_cndmask_b32_e32 v14, 0x80000000, v12, vcc_lo
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v0
	v_lshrrev_b32_e32 v6, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v2.l, v1.l
	v_or_b16 v11.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v13, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v5, 2, v5
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s20, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v14, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v4, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v44
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e32 v1.l, v9.h
	v_add3_u32 v5, v6, v5, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s20, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s30, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp62:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 153
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 153
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14796
; TotalNumSgprs: 33
; NumVgprs: 153
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 153
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     153
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
