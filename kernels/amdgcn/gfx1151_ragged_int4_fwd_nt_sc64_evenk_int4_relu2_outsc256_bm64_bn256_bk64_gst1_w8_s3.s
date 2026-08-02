	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v19, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s11, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s11
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s11
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s9, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_load_b64 s[12:13], s[0:1], 0x38
	s_xor_b32 s10, s3, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s45, s10, s9
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_mov_b32 s8, 0
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s12, s2
	s_addc_u32 s7, s13, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v5, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[40:41], s[4:5], 0x0
	s_load_b64 s[42:43], s[6:7], 0x0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v16, 15, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v17, 0xf0, v0
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v18, 3, v0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v50, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v11, 2, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 32
	v_add_co_u32 v3, s0, s34, v11
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s24, s4, s2
	s_addc_u32 s25, s5, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[40:41], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[42:43], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v3, s34, v16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[7:8]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[7:8]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s5, s8
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s5, s[24:25], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[42:43], v[5:6]
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v8, 1, v0
	v_bfe_u32 v9, v0, 4, 1
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v5, 32, v3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s7, s10, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[42:43], v[1:2]
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v2, 1, v0
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v12, 3, v0
	v_and_or_b32 v9, v7, 30, v9
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v13, 24, v8
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s33, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v8, s5, s7, v8
	s_mul_i32 s6, s5, s44
	v_mul_lo_u32 v5, s44, v5
	v_add3_u32 v14, s6, s7, v0
	s_lshl_b32 s6, s9, 8
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v10, 24, v7
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v1, 4, v2
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v4, 16, v3
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v6, 48, v3
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v25, 2, v9
	v_xor_b32_e32 v9, v12, v13
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v13, 2, v17
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	v_subrev_nc_u32_e32 v8, s6, v8
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v11, s34, v11
	v_lshl_or_b32 v10, v16, 5, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, 0, v13, v2
	v_subrev_nc_u32_e32 v13, s6, v14
	v_mul_lo_u32 v6, s44, v6
	v_mul_lo_u32 v4, s44, v4
	v_mul_lo_u32 v3, s44, v3
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v59, 1, v5
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v5, 0x80, v8
	v_mul_lo_u32 v11, v11, s11
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v7, 28, v7
	v_xor_b32_e32 v12, 8, v10
	v_xor_b32_e32 v21, 16, v10
	v_xor_b32_e32 v22, 24, v10
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v23, 1, v17
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s8, 0
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v56, 1, v13
	v_mad_u64_u32 v[13:14], null, s11, v5, v[1:2]
	v_mad_u64_u32 v[14:15], null, s11, v8, v[1:2]
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v58, 1, v6
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v60, 1, v4
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v62, 1, v3
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v86, v2, v7
	v_mov_b32_e32 v1, s8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	v_xor_b32_e32 v30, 4, v25
	v_cmp_eq_u32_e64 s4, 0, v19
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v64, v18, 3, v11
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v73, 0, v9
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v74, 0, v10
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v75, 0, v12
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v77, 0, v21
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v79, 0, v22
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v88, 0, v23
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v3, s10
	v_mov_b32_e32 v5, s12
	v_mov_b32_e32 v7, s14
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s5, s33, 1
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[9:12], v14, s[28:31], 0 offen
	buffer_load_b128 v[98:101], v13, s[28:31], 0 offen
	v_dual_cndmask_b32 v102, 0x80000000, v64 :: v_dual_add_nc_u32 v13, 32, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s44, s44, -1
	v_add_nc_u32_e32 v64, 32, v64
	v_add_nc_u32_e32 v14, 32, v14
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b64 v[102:103], v102, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s44, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v104, v25, v9
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v112, v25, v98
	ds_bpermute_b32 v98, v30, v98
	ds_bpermute_b32 v113, v25, v99
	ds_bpermute_b32 v99, v30, v99
	ds_bpermute_b32 v105, v25, v10
	ds_bpermute_b32 v106, v25, v11
	ds_bpermute_b32 v107, v25, v12
	ds_bpermute_b32 v108, v30, v9
	ds_bpermute_b32 v109, v30, v10
	ds_bpermute_b32 v110, v30, v11
	ds_bpermute_b32 v111, v30, v12
	ds_bpermute_b32 v160, v25, v100
	ds_bpermute_b32 v161, v30, v100
	ds_bpermute_b32 v162, v25, v101
	ds_bpermute_b32 v163, v30, v101
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v73, v[102:103]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v74 offset1:1
	ds_load_2addr_stride64_b64 v[130:133], v75 offset1:1
	ds_load_2addr_stride64_b64 v[134:137], v74 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[138:141], v77 offset1:1
	ds_load_2addr_stride64_b64 v[142:145], v79 offset1:1
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v154, v98, v112, s4
	v_cndmask_b32_e64 v156, v112, v98, s4
	v_cndmask_b32_e64 v155, v99, v113, s4
	v_cndmask_b32_e64 v157, v113, v99, s4
	v_cndmask_b32_e64 v146, v108, v104, s4
	v_cndmask_b32_e64 v148, v104, v108, s4
	v_cndmask_b32_e64 v147, v109, v105, s4
	v_cndmask_b32_e64 v149, v105, v109, s4
	v_cndmask_b32_e64 v150, v110, v106, s4
	v_cndmask_b32_e64 v152, v106, v110, s4
	v_cndmask_b32_e64 v151, v111, v107, s4
	v_cndmask_b32_e64 v153, v107, v111, s4
	v_cndmask_b32_e64 v158, v161, v160, s4
	v_cndmask_b32_e64 v159, v163, v162, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[154:155], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[146:147], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[146:147], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[154:155], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[158:159], v[130:131], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[150:151], v[130:131], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[150:151], v[132:133], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[158:159], v[132:133], v[122:129] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v130, v160, v161, s4
	v_cndmask_b32_e64 v131, v162, v163, s4
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[156:157], v[138:139], v[106:113] neg_lo:[1,1,0]
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[9:12], v75 offset0:2 offset1:3
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[114:121], v[148:149], v[140:141], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[156:157], v[140:141], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[148:149], v[138:139], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[130:131], v[142:143], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[152:153], v[144:145], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[144:145], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[152:153], v[142:143], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v106
	v_cvt_f32_i32_e32 v145, v107
	v_cvt_f32_i32_e32 v160, v108
	v_cvt_f32_i32_e32 v161, v109
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[106:109], v77 offset0:2 offset1:3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v110
	v_cvt_f32_i32_e32 v163, v111
	v_cvt_f32_i32_e32 v164, v112
	v_cvt_f32_i32_e32 v165, v113
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[110:113], v79 offset0:2 offset1:3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v98
	v_cvt_f32_i32_e32 v133, v99
	v_cvt_f32_i32_e32 v138, v100
	v_cvt_f32_i32_e32 v139, v101
	v_cvt_f32_i32_e32 v140, v102
	v_cvt_f32_i32_e32 v141, v103
	v_cvt_f32_i32_e32 v142, v104
	v_cvt_f32_i32_e32 v143, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[146:147], v[134:135], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[150:151], v[9:10], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[148:149], v[106:107], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[152:153], v[110:111], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v166, v98
	v_cvt_f32_i32_e32 v167, v99
	v_cvt_f32_i32_e32 v168, v100
	v_cvt_f32_i32_e32 v169, v101
	v_cvt_f32_i32_e32 v170, v102
	v_cvt_f32_i32_e32 v171, v103
	v_cvt_f32_i32_e32 v172, v104
	v_cvt_f32_i32_e32 v173, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[154:155], v[134:135], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[158:159], v[9:10], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[156:157], v[106:107], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[130:131], v[110:111], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v9, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v99
	v_cvt_f32_i32_e32 v134, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v135, v101
	v_cvt_f32_i32_e32 v174, v102
	v_cvt_f32_i32_e32 v175, v103
	v_cvt_f32_i32_e32 v176, v104
	v_cvt_f32_i32_e32 v177, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[146:147], v[136:137], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[150:151], v[11:12], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[148:149], v[108:109], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[152:153], v[112:113], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v147, v99
	v_cvt_f32_i32_e32 v178, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v179, v101
	v_cvt_f32_i32_e32 v180, v102
	v_cvt_f32_i32_e32 v181, v103
	v_cvt_f32_i32_e32 v182, v104
	v_cvt_f32_i32_e32 v183, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[98:105], v[154:155], v[136:137], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[158:159], v[11:12], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[156:157], v[108:109], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[130:131], v[112:113], v[98:105] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v11, v98
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v98, 0x80000000, v62, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v12, v99
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v99, 0x80000000, v60, s1
	s_clause 0x1
	buffer_load_u16 v98, v98, s[36:39], 0 offen
	buffer_load_u16 v106, v99, s[36:39], 0 offen
	v_cndmask_b32_e64 v99, 0x80000000, v59, s2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v101
	v_cvt_f32_i32_e32 v158, v104
	v_cvt_f32_i32_e32 v159, v105
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v59, 2, v59
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v130, v99, s[36:39], 0 offen
	v_cndmask_b32_e64 v99, 0x80000000, v58, s3
	buffer_load_u16 v131, v99, s[36:39], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v99, v56, s[16:19], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v100
	v_cvt_f32_i32_e32 v156, v102
	v_cvt_f32_i32_e32 v157, v103
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v60, 2, v60
	v_add_nc_u32_e32 v56, s5, v56
	v_add_nc_u32_e32 v58, 2, v58
	v_add_nc_u32_e32 v62, 2, v62
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v109, 16, v106
	v_lshlrev_b32_e32 v101, 16, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v149, v117, v109
	v_mul_f32_e32 v104, v160, v101
	v_mul_f32_e32 v160, v114, v109
	v_mul_f32_e32 v184, v132, v101
	v_mul_f32_e32 v117, v125, v109
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v186, v138, v101 :: v_dual_lshlrev_b32 v125, 16, v130
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v112, v142, v101 :: v_dual_lshlrev_b32 v99, 16, v99
	v_mul_f32_e32 v105, v161, v101
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v154, v166, v125
	v_mul_f32_e32 v161, v115, v109
	v_mul_f32_e32 v119, v119, v109
	v_mul_f32_e32 v114, v122, v109
	v_mul_f32_e32 v115, v123, v109
	v_mul_f32_e32 v106, v126, v109
	v_mul_f32_e32 v107, v127, v109
	v_mul_f32_e32 v108, v128, v109
	v_mul_f32_e32 v151, v169, v125
	v_mul_f32_e32 v121, v121, v109
	v_mul_f32_e32 v138, v170, v125
	v_mul_f32_e32 v120, v120, v109
	v_mul_f32_e32 v118, v118, v109
	v_mul_f32_e32 v148, v116, v109
	v_mul_f32_e32 v116, v124, v109
	v_mul_f32_e32 v109, v129, v109
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v129, 16, v131
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v86, v99
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v185, v133, v101
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v130, v9, v125
	v_mul_f32_e32 v131, v10, v125
	v_mul_f32_e32 v132, v134, v125
	v_mul_f32_e32 v133, v135, v125
	v_mul_f32_e32 v134, v11, v129
	v_mul_f32_e32 v135, v12, v129
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[9:12], v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v187, v139, v101
	v_mul_f32_e32 v111, v141, v101
	v_mul_f32_e32 v113, v143, v101
	v_mul_f32_e32 v102, v144, v101
	v_mul_f32_e32 v103, v145, v101
	v_mul_f32_e32 v152, v146, v129
	v_mul_f32_e32 v146, v178, v129
	v_mul_f32_e32 v142, v180, v129
	v_mul_f32_e32 v143, v181, v129
	v_mul_f32_e32 v144, v182, v129
	v_mul_f32_e32 v137, v137, v129
	v_mul_f32_e32 v145, v183, v129
	v_mul_f32_e32 v126, v156, v129
	v_mul_f32_e32 v124, v176, v125
	v_mul_f32_e32 v122, v174, v125
	v_mul_f32_e32 v136, v136, v129
	v_mul_f32_e32 v141, v173, v125
	v_mul_f32_e32 v153, v147, v129
	v_mul_f32_e32 v147, v179, v129
	v_mul_f32_e32 v127, v157, v129
	v_mul_f32_e32 v128, v158, v129
	v_mul_f32_e32 v129, v159, v129
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[156:159], v88 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v50, v151, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v155, v167, v125
	v_mul_f32_e32 v98, v162, v101
	v_dual_mul_f32 v99, v163, v101 :: v_dual_fmac_f32 v96, v186, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v160, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v110, v140, v101 :: v_dual_fmac_f32 v97, v185, v10
	v_mul_f32_e32 v100, v164, v101
	v_mul_f32_e32 v123, v175, v125
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v20, v184, v9 :: v_dual_fmac_f32 v95, v187, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v53, v154, v9 :: v_dual_fmac_f32 v68, v121, v159
	v_fmac_f32_e32 v52, v155, v10
	v_fmac_f32_e32 v72, v149, v12
	v_fmac_f32_e32 v78, v161, v10
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[160:163], v88 offset:512
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v150, v168, v125 :: v_dual_fmac_f32 v49, v138, v156
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v120, v158
	v_fmac_f32_e32 v71, v118, v156
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v101, v165, v101 :: v_dual_fmac_f32 v76, v148, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v150, v11
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[148:151], v88 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v140, v172, v125
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v94, v110, v156 :: v_dual_fmac_f32 v93, v111, v157
	v_dual_fmac_f32 v92, v112, v158 :: v_dual_fmac_f32 v91, v113, v159
	v_dual_fmac_f32 v70, v119, v157 :: v_dual_fmac_f32 v47, v140, v158
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v24, v137, v163
	v_dual_fmac_f32 v29, v145, v159 :: v_dual_fmac_f32 v90, v102, v160
	v_fmac_f32_e32 v89, v103, v161
	v_fmac_f32_e32 v87, v104, v162
	v_fmac_f32_e32 v37, v152, v9
	v_fmac_f32_e32 v85, v105, v163
	v_fmac_f32_e32 v67, v114, v160
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v55, v108, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v139, v171, v125 :: v_dual_fmac_f32 v28, v134, v160
	v_dual_mul_f32 v125, v177, v125 :: v_dual_fmac_f32 v84, v98, v148
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v32, v143, v157
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v139, v157
	v_fmac_f32_e32 v83, v99, v149
	v_fmac_f32_e32 v81, v101, v151
	v_fmac_f32_e32 v43, v132, v162
	v_fmac_f32_e32 v31, v144, v158
	v_fmac_f32_e32 v61, v106, v148
	v_fmac_f32_e32 v45, v130, v160
	v_fmac_f32_e32 v33, v142, v156
	v_fmac_f32_e32 v65, v116, v162
	v_dual_fmac_f32 v35, v146, v11 :: v_dual_fmac_f32 v82, v100, v150
	v_fmac_f32_e32 v44, v131, v161
	v_dual_fmac_f32 v57, v107, v149 :: v_dual_fmac_f32 v54, v109, v151
	v_fmac_f32_e32 v42, v133, v163
	v_dual_fmac_f32 v34, v147, v12 :: v_dual_fmac_f32 v63, v117, v163
	v_fmac_f32_e32 v40, v123, v149
	v_dual_fmac_f32 v38, v125, v151 :: v_dual_fmac_f32 v27, v135, v161
	v_dual_fmac_f32 v22, v127, v149 :: v_dual_fmac_f32 v21, v128, v150
	v_fmac_f32_e32 v15, v129, v151
	v_fmac_f32_e32 v23, v126, v148
	v_fmac_f32_e32 v39, v124, v150
	v_dual_fmac_f32 v41, v122, v148 :: v_dual_fmac_f32 v26, v136, v162
	v_fmac_f32_e32 v46, v141, v159
	v_fmac_f32_e32 v36, v153, v10
	v_fmac_f32_e32 v66, v115, v161
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v58, v76, v76 :: v_dual_max_f32 v59, v70, v70
	v_dual_max_f32 v56, v78, v78 :: v_dual_max_f32 v1, v20, v20
	v_max_f32_e32 v2, v97, v97
	v_dual_max_f32 v20, v82, v82 :: v_dual_max_f32 v25, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v81, 0, v59 :: v_dual_max_f32 v60, 0, v56
	v_max_f32_e32 v63, v63, v63
	v_dual_max_f32 v11, v87, v87 :: v_dual_max_f32 v12, v85, v85
	v_dual_max_f32 v30, v80, v80 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v59, v65, v65
	v_dual_max_f32 v56, v72, v72 :: v_dual_max_f32 v61, v61, v61
	v_dual_max_f32 v68, v68, v68 :: v_dual_max_f32 v87, 0, v63
	v_max_f32_e32 v62, 0, v58
	v_dual_max_f32 v58, v71, v71 :: v_dual_max_f32 v53, v53, v53
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v36, v36, v36
	v_dual_max_f32 v7, v92, v92 :: v_dual_max_f32 v8, v91, v91
	v_max_f32_e32 v30, 0, v30
	v_dual_max_f32 v74, 0, v58 :: v_dual_max_f32 v55, v55, v55
	v_max_f32_e32 v58, v66, v66
	v_dual_max_f32 v64, v69, v69 :: v_dual_max_f32 v69, 0, v56
	v_dual_max_f32 v86, 0, v59 :: v_dual_max_f32 v49, v49, v49
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v45, v45, v45
	v_dual_max_f32 v56, v67, v67 :: v_dual_max_f32 v117, 0, v26
	v_dual_max_f32 v108, 0, v36 :: v_dual_max_f32 v21, v21, v21
	v_dual_max_f32 v3, v96, v96 :: v_dual_max_f32 v4, v95, v95
	v_dual_max_f32 v5, v94, v94 :: v_dual_max_f32 v6, v93, v93
	v_dual_max_f32 v9, v90, v90 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, v89, v89
	v_dual_max_f32 v13, v84, v84 :: v_dual_max_f32 v92, 0, v53
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v93, 0, v52
	v_dual_max_f32 v84, 0, v56 :: v_dual_max_f32 v51, v51, v51
	v_dual_max_f32 v96, 0, v49 :: v_dual_max_f32 v39, v39, v39
	v_max_f32_e32 v46, v46, v46
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v31, v31, v31
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v121, 0, v21
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	v_max_f32_e32 v14, v83, v83
	v_dual_max_f32 v88, 0, v61 :: v_dual_max_f32 v47, v47, v47
	v_max_f32_e32 v54, v54, v54
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v101, 0, v43
	v_max_f32_e32 v56, v57, v57
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v41, v41, v41
	v_dual_max_f32 v94, 0, v51 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v44, v44, v44
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v29, v29, v29
	v_dual_max_f32 v104, 0, v40 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v105, 0, v39 :: v_dual_max_f32 v98, 0, v46
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	v_max_f32_e32 v23, v23, v23
	v_dual_max_f32 v115, 0, v28 :: v_dual_max_f32 v110, 0, v34
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v24, v24, v24
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v59, v6, v6
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v22, v22, v22 :: v_dual_mul_f32 v65, v8, v8
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v83, 0, v68
	v_dual_max_f32 v90, 0, v55 :: v_dual_max_f32 v99, 0, v45
	v_max_f32_e32 v95, 0, v50
	v_max_f32_e32 v89, 0, v56
	v_dual_max_f32 v85, 0, v58 :: v_dual_max_f32 v48, 0, v48
	v_max_f32_e32 v103, 0, v41
	v_dual_max_f32 v97, 0, v47 :: v_dual_max_f32 v82, 0, v64
	v_max_f32_e32 v91, 0, v54
	v_dual_max_f32 v102, 0, v42 :: v_dual_max_f32 v111, 0, v33
	v_dual_max_f32 v106, 0, v38 :: v_dual_max_f32 v113, 0, v31
	v_dual_max_f32 v107, 0, v37 :: v_dual_max_f32 v100, 0, v44
	v_dual_max_f32 v109, 0, v35 :: v_dual_max_f32 v112, 0, v32
	v_dual_max_f32 v119, 0, v23 :: v_dual_max_f32 v114, 0, v29
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v53, v2, v2 :: v_dual_max_f32 v116, 0, v27
	v_mul_f32_e32 v57, v4, v4
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v118, 0, v24 :: v_dual_mul_f32 v67, v9, v9
	v_dual_max_f32 v120, 0, v22 :: v_dual_mul_f32 v71, v12, v12
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v50, v1, v1
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v79, v20, v20 :: v_dual_mul_f32 v56, v3, v3
	v_mul_f32_e32 v75, v13, v13
	v_dual_mul_f32 v58, v5, v5 :: v_dual_mul_f32 v77, v60, v60
	v_dual_mul_f32 v64, v7, v7 :: v_dual_mul_f32 v73, v62, v62
	v_dual_mul_f32 v68, v10, v10 :: v_dual_mul_f32 v61, v84, v84
	v_mul_f32_e32 v70, v11, v11
	v_dual_mul_f32 v76, v14, v14 :: v_dual_mul_f32 v51, v89, v89
	v_dual_mul_f32 v80, v25, v25 :: v_dual_mul_f32 v63, v82, v82
	v_dual_mul_f32 v78, v30, v30 :: v_dual_mul_f32 v47, v91, v91
	v_dual_mul_f32 v72, v69, v69 :: v_dual_mul_f32 v55, v86, v86
	v_dual_mul_f32 v69, v74, v74 :: v_dual_mul_f32 v66, v81, v81
	v_dual_mul_f32 v49, v90, v90 :: v_dual_mul_f32 v62, v83, v83
	v_mul_f32_e32 v45, v93, v93
	v_dual_mul_f32 v60, v85, v85 :: v_dual_mul_f32 v43, v95, v95
	v_dual_mul_f32 v54, v87, v87 :: v_dual_mul_f32 v41, v48, v48
	v_dual_mul_f32 v52, v88, v88 :: v_dual_mul_f32 v39, v98, v98
	v_dual_mul_f32 v46, v92, v92 :: v_dual_mul_f32 v35, v102, v102
	v_dual_mul_f32 v44, v94, v94 :: v_dual_mul_f32 v37, v100, v100
	v_dual_mul_f32 v42, v96, v96 :: v_dual_mul_f32 v31, v106, v106
	v_dual_mul_f32 v40, v97, v97 :: v_dual_mul_f32 v33, v104, v104
	v_dual_mul_f32 v38, v99, v99 :: v_dual_mul_f32 v29, v108, v108
	v_dual_mul_f32 v36, v101, v101 :: v_dual_mul_f32 v27, v110, v110
	v_dual_mul_f32 v34, v103, v103 :: v_dual_mul_f32 v25, v112, v112
	v_dual_mul_f32 v32, v105, v105 :: v_dual_mul_f32 v23, v114, v114
	v_dual_mul_f32 v30, v107, v107 :: v_dual_mul_f32 v21, v116, v116
	v_dual_mul_f32 v28, v109, v109 :: v_dual_mul_f32 v11, v119, v119
	v_dual_mul_f32 v26, v111, v111 :: v_dual_mul_f32 v9, v121, v121
	v_dual_mul_f32 v24, v113, v113 :: v_dual_mov_b32 v5, v19
	v_mul_f32_e32 v22, v115, v115
	v_mul_f32_e32 v20, v117, v117
	v_mul_f32_e32 v12, v118, v118
	v_mul_f32_e32 v10, v120, v120
	v_mul_f32_e32 v8, v15, v15
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v53, v53 :: v_dual_max_f32 v2, v50, v50
	v_max3_f32 v4, v68, v70, v71
	v_max3_f32 v6, v75, v76, v79
	v_max3_f32 v3, v57, v58, v59
	v_max_f32_e32 v7, v78, v78
	v_max_f32_e32 v1, v2, v1
	v_max3_f32 v15, v60, v55, v54
	v_max3_f32 v4, v4, v6, v80
	v_max_f32_e32 v6, v46, v46
	v_max_f32_e32 v2, v77, v77
	v_max3_f32 v19, v52, v51, v49
	v_max3_f32 v48, v37, v36, v35
	v_max3_f32 v74, v34, v33, v32
	v_max3_f32 v13, v64, v65, v67
	v_max_f32_e32 v2, v7, v2
	v_max3_f32 v1, v1, v56, v3
	v_max_f32_e32 v3, v45, v45
	v_max3_f32 v7, v72, v69, v66
	v_max3_f32 v14, v63, v62, v61
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v1, v1, v13, v4
	v_max3_f32 v13, v21, v20, v12
	v_max3_f32 v2, v2, v73, v7
	v_max3_f32 v7, v15, v19, v47
	v_max_f32_e32 v19, v29, v29
	v_max_f32_e32 v3, v6, v3
	v_max3_f32 v6, v43, v42, v41
	v_max3_f32 v15, v40, v39, v38
	v_max3_f32 v2, v2, v14, v7
	v_max3_f32 v14, v11, v10, v9
	v_max3_f32 v7, v24, v23, v22
	v_max3_f32 v3, v3, v44, v6
	v_max3_f32 v6, v48, v74, v31
	v_max_f32_e32 v48, v30, v30
	v_max3_f32 v13, v13, v14, v8
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v74, 8, v0
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v15, v6
	v_max_f32_e32 v4, v48, v19
	v_max3_f32 v6, v27, v26, v25
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v48, 0x80, v0
	v_permlanex16_b32 v19, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v28, v6
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v83, 3, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v7, v13
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v14, v15, v15
	v_max_f32_e32 v15, v19, v19
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v13, 5, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v6
	v_dual_max_f32 v2, v2, v14 :: v_dual_max_f32 v3, v3, v15
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 4, v0
	v_lshl_add_u32 v14, v18, 9, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_lshlrev_b32 v15, 4, v0
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v19, 0x60, v0
	v_lshl_add_u32 v14, v7, 2, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v81, 0x680, v15, v13
	v_lshlrev_b32_e32 v15, 1, v48
	v_lshl_add_u32 v84, v7, 6, 0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v6
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v82, v13, v19
	v_lshl_add_u32 v14, v74, 4, v14
	v_xor_b32_e32 v81, v81, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v14, v15, v82
	v_add3_u32 v14, v84, v83, v81
	ds_store_b128 v6, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v14, v2 :: v_dual_mov_b32 v81, v3
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v74, 3, v74
	v_add_nc_u32_e32 v48, 0, v48
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v82, v4, v4
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v6
	v_max_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v6, v81, v81 :: v_dual_mov_b32 v81, v2
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v3, v3, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v6, v3 :: v_dual_max_f32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v14, v1 :: v_dual_max_f32 v3, v3, v6
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v6, v3
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v4, v82, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v2, v2, v81 :: v_dual_mov_b32 v81, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v3, v6 :: v_dual_lshlrev_b32 v6, 5, v7
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshl_add_u32 v7, v18, 4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v81, v81 :: v_dual_mov_b32 v82, v4
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v6, v7, v6, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v81
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v81, 1, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v82, v82
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v2
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v82
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v14
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v14, v48, v81, v74
	ds_store_b128 v14, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v6
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v14, 4, v17
	v_and_b32_e32 v6, 63, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v14
	v_or_b32_e32 v74, 32, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v81, v81
	v_max_f32_e32 v3, v83, v83
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v81, 16, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v7, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v83, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v6
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v7
	v_div_scale_f32 v87, vcc_lo, v7, 0x40e00000, v7
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v83
	v_rcp_f32_e32 v48, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v3, -v18, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v3, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v4
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v90, v87, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s0, s34, v74
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v74, v82, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[42:43], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v18, v90, v87
	v_max_f32_e32 v74, 0x2b8cbccc, v74
	v_max_f32_e32 v82, v84, v84
	v_fma_f32 v84, -v88, v89, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v3, v48
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v74
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v81
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v81, 0x2b8cbccc, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v18, -v18, v90, v87
	v_fmac_f32_e32 v89, v84, v89
	v_rcp_f32_e32 v82, v91
	v_div_scale_f32 v84, s6, v83, 0x40e00000, v83
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v81
	v_div_fmas_f32 v18, v18, v48, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v84, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v90, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[85:86]
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v85, -v91, v82, 1.0
	v_div_fixup_f32 v7, v18, 0x40e00000, v7
	v_fma_f32 v18, -v88, v48, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v85, v82
	v_div_scale_f32 v85, s7, v74, 0x40e00000, v74
	v_fmac_f32_e32 v48, v18, v89
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v18.l, v7.h
	v_mov_b16_e32 v18.h, v86.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v92, -v87, v90, 1.0
	v_mul_f32_e32 v93, v85, v82
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[42:43], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v88, v48, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s8, v81, 0x40e00000, v81
	v_fma_f32 v18, -v91, v93, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v7, v7, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v84, v92, v90
	v_div_fmas_f32 v48, v3, v89, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v18, v82 :: v_dual_and_b32 v88, 0xffff0000, v7
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v18, -v87, v84, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v48, v48, 0x40e00000, v83
	v_fma_f32 v83, -v91, v93, v85
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v88, v88, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v18, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v48.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v18, v83, v82, v93
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v85
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v83, -v87, v84, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v18, v18, 0x40e00000, v74
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v74, v83, v90, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v88, v88, v53
	v_fma_f32 v87, -v85, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v84, 1, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v81
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v18.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v50, v88, v50
	v_rcp_f32_e32 v89, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.h, v86.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v48, v84, 0x7fff
	v_mov_b16_e32 v86.l, v74.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v84, v87, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v88, v88, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v81, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v85, v84, v87
	v_div_scale_f32 v92, null, v88, v88, v57
	v_fma_f32 v48, -v83, v89, 1.0
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v86, v82
	v_rcp_f32_e32 v86, v92
	v_div_scale_f32 v93, s8, v53, v88, v53
	v_fmac_f32_e32 v89, v48, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v85, v84, v87
	v_div_scale_f32 v97, null, v88, v88, v58
	v_mul_f32_e32 v94, v93, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v90, v91, 1.0
	v_fma_f32 v96, -v92, v86, 1.0
	v_div_fmas_f32 v82, v85, v82, v84
	v_rcp_f32_e32 v85, v97
	v_fma_f32 v87, -v83, v94, v93
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s9, v56, v88, v56
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v96, null, v88, v88, v59
	v_fmac_f32_e32 v94, v87, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v84, v95, v91
	v_div_scale_f32 v87, s10, v57, v88, v57
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v50, v82, v88, v50
	v_fma_f32 v82, -v83, v94, v93
	v_fma_f32 v83, -v90, v84, v95
	v_mul_f32_e32 v93, v87, v86
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v99, -v97, v85, 1.0
	v_div_fmas_f32 v82, v82, v89, v94
	v_fmac_f32_e32 v84, v83, v91
	v_fma_f32 v83, -v92, v93, v87
	v_fma_f32 v94, -v96, v98, 1.0
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v89, s8, v58, v88, v58
	v_div_fixup_f32 v53, v82, v88, v53
	v_fma_f32 v82, -v90, v84, v95
	v_fmac_f32_e32 v93, v83, v86
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, null, v88, v88, v64
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v83, v89, v85
	v_div_scale_f32 v90, s11, v59, v88, v59
	v_div_fmas_f32 v82, v82, v91, v84
	v_fma_f32 v84, -v92, v93, v87
	v_rcp_f32_e32 v91, v94
	v_div_scale_f32 v95, null, v88, v88, v65
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v97, v83, v89
	v_mul_f32_e32 v92, v90, v98
	v_div_fmas_f32 v84, v84, v86, v93
	v_rcp_f32_e32 v86, v95
	v_div_fixup_f32 v56, v82, v88, v56
	v_fmac_f32_e32 v83, v87, v85
	v_fma_f32 v87, -v96, v92, v90
	v_fma_f32 v93, -v94, v91, 1.0
	v_div_fixup_f32 v57, v84, v88, v57
	v_div_scale_f32 v84, s9, v64, v88, v64
	v_fma_f32 v82, -v97, v83, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v92, v87, v98 :: v_dual_fmac_f32 v91, v93, v91
	v_fma_f32 v87, -v95, v86, 1.0
	v_div_scale_f32 v89, null, v88, v88, v67
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v93, null, v88, v88, v68
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v96, v92, v90
	v_dual_mul_f32 v85, v84, v91 :: v_dual_fmac_f32 v86, v87, v86
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v90, s8, v65, v88, v65
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v58, v82, v88, v58
	v_div_fmas_f32 v83, v83, v98, v92
	v_fma_f32 v92, -v94, v85, v84
	v_mul_f32_e32 v96, v90, v86
	v_rcp_f32_e32 v98, v93
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v89, v87, 1.0
	v_fmac_f32_e32 v85, v92, v91
	v_fma_f32 v82, -v95, v96, v90
	v_div_fixup_f32 v59, v83, v88, v59
	v_div_scale_f32 v83, s10, v67, v88, v67
	v_fmac_f32_e32 v87, v97, v87
	v_fma_f32 v84, -v94, v85, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v93, v98, 1.0
	v_fmac_f32_e32 v96, v82, v86
	v_div_scale_f32 v99, null, v88, v88, v71
	v_mul_f32_e32 v82, v83, v87
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s11, v68, v88, v68
	v_div_fmas_f32 v84, v84, v91, v85
	v_fma_f32 v85, -v95, v96, v90
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v90, -v89, v82, v83
	v_mul_f32_e32 v91, v97, v98
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v6, s34, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v86, v96
	v_rcp_f32_e32 v86, v99
	v_fmac_f32_e32 v82, v90, v87
	v_fma_f32 v90, -v93, v91, v97
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v65, v85, v88, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v89, v82, v83
	v_fmac_f32_e32 v91, v90, v98
	v_div_scale_f32 v90, s9, v71, v88, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v99, v86, 1.0
	v_div_fmas_f32 v82, v83, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v93, v91, v97
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v83, v98, v91
	v_mul_f32_e32 v91, v90, v86
	v_div_scale_f32 v92, null, v88, v88, v70
	v_div_fixup_f32 v64, v84, v88, v64
	v_div_scale_f32 v89, null, v88, v88, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v94, v92
	v_div_scale_f32 v93, null, v88, v88, v76
	v_rcp_f32_e32 v85, v89
	v_div_fixup_f32 v67, v82, v88, v67
	v_div_fixup_f32 v68, v83, v88, v68
	v_fma_f32 v83, -v99, v91, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v95, -v92, v94, 1.0
	v_fmac_f32_e32 v91, v83, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v89, v85, 1.0
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s8, v70, v88, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v96, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v88, v88, v79
	v_mul_f32_e32 v84, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v92, v84, v95
	v_fmac_f32_e32 v84, v87, v94
	v_rcp_f32_e32 v87, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v92, v84, v95
	v_div_scale_f32 v92, s10, v75, v88, v75
	v_div_fmas_f32 v82, v82, v94, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v93, v87, 1.0
	v_mul_f32_e32 v83, v92, v85
	v_div_scale_f32 v94, s8, v76, v88, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v70, v82, v88, v70
	v_fmac_f32_e32 v87, v95, v87
	v_div_scale_f32 v95, null, v88, v88, v80
	v_fma_f32 v82, -v99, v91, v90
	v_fma_f32 v90, -v89, v83, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v94, v87
	v_rcp_f32_e32 v98, v95
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v84, v96
	v_div_fmas_f32 v82, v82, v86, v91
	v_fmac_f32_e32 v83, v90, v85
	v_fma_f32 v86, -v93, v97, v94
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v79, v88, v79
	v_div_fixup_f32 v71, v82, v88, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v95, v98, 1.0
	v_fma_f32 v82, -v89, v83, v92
	v_fmac_f32_e32 v97, v86, v87
	v_div_scale_f32 v89, s11, v80, v88, v80
	v_fmac_f32_e32 v98, v91, v98
	v_fma_f32 v99, -v96, v84, 1.0
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v93, v97, v94
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v93, v89, v98
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v18, v18, v4, 0x7fff
	v_add3_u32 v4, v74, v81, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v99, v84
	v_div_fmas_f32 v83, v83, v87, v97
	v_fma_f32 v87, -v95, v93, v89
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v75, v82, v88, v75
	v_mul_f32_e32 v86, v90, v84
	v_div_fixup_f32 v76, v83, v88, v76
	v_fmac_f32_e32 v93, v87, v98
	v_div_scale_f32 v91, null, v81, v81, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v96, v86, v90
	v_div_scale_f32 v94, null, v81, v81, v77
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v83, s8, v78, v81, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	v_rcp_f32_e32 v85, v94
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v96, v86, v90
	v_div_scale_f32 v90, null, v81, v81, v73
	v_fma_f32 v97, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v87, -v94, v85, 1.0
	v_fma_f32 v84, -v95, v93, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v97, v92
	v_div_scale_f32 v89, s9, v77, v81, v77
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v92
	v_div_scale_f32 v95, null, v81, v81, v72
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v96, v89, v85
	v_div_fmas_f32 v84, v84, v98, v93
	v_fma_f32 v93, -v91, v86, v83
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v79, v82, v88, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_fma_f32 v82, -v94, v96, v89
	v_fmac_f32_e32 v86, v93, v92
	v_div_fixup_f32 v80, v84, v88, v80
	v_div_scale_f32 v84, s10, v73, v81, v73
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v88, null, v81, v81, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_fmac_f32_e32 v96, v82, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v91, v88
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s11, v72, v81, v72
	v_div_fmas_f32 v83, v83, v92, v86
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v97, null, v81, v81, v66
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v90, v82, v84
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v85, v86, v85, v96
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v94, -v88, v91, 1.0
	v_fmac_f32_e32 v82, v89, v87
	v_fma_f32 v89, -v95, v92, v93
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v48, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v77, v85, v81, v77
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s8, v69, v81, v69
	v_fmac_f32_e32 v92, v89, v98
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v97, v86, 1.0
	v_div_scale_f32 v89, null, v81, v81, v63
	v_div_fixup_f32 v78, v83, v81, v78
	v_fma_f32 v83, -v90, v82, v84
	v_mul_f32_e32 v84, v94, v91
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v89
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v66, v81, v66
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v95, v92, v93
	v_fma_f32 v87, -v88, v84, v94
	v_div_scale_f32 v93, null, v81, v81, v62
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v85, 1.0
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v92, v90, v86
	v_div_fixup_f32 v73, v82, v81, v73
	v_fma_f32 v82, -v88, v84, v94
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v61
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v72, v83, v81, v72
	v_fma_f32 v83, -v97, v92, v90
	v_div_scale_f32 v88, s10, v63, v81, v63
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v82, v82, v91, v84
	v_rcp_f32_e32 v84, v95
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v92, v83, v86 :: v_dual_mul_f32 v83, v88, v85
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v91, s8, v62, v81, v62
	v_div_scale_f32 v94, null, v81, v81, v60
	v_div_fixup_f32 v69, v82, v81, v69
	v_fma_f32 v82, -v97, v92, v90
	v_fma_f32 v90, -v89, v83, v88
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v82, v82, v86, v92
	v_fma_f32 v86, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v61, v81, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v66, v82, v81, v66
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v82, -v89, v83, v88
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v86, v90, v84
	v_div_scale_f32 v89, null, v81, v81, v55
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s11, v60, v81, v60
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v93, v96, v91
	v_fma_f32 v85, -v95, v86, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v81, v81, v54
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v63, v82, v81, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v82, -v95, v86, v90
	v_div_fixup_f32 v62, v83, v81, v62
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s8, v55, v81, v55
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v85, 1.0
	v_div_scale_f32 v90, null, v81, v81, v52
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v98, null, v81, v81, v47
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v86, v83, v91
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s9, v54, v81, v54
	v_div_scale_f32 v94, null, v81, v81, v51
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v88, v85
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v86, v83
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v61, v82, v81, v61
	v_fma_f32 v82, -v93, v95, v88
	v_fmac_f32_e32 v86, v92, v91
	v_div_fixup_f32 v60, v84, v81, v60
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s10, v52, v81, v52
	v_div_scale_f32 v92, null, v81, v81, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v83, -v89, v86, v83
	v_fmac_f32_e32 v95, v82, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v51, v81, v51
	v_div_fmas_f32 v83, v83, v91, v86
	v_fma_f32 v86, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v90, v82, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v55, v83, v81, v55
	v_div_fmas_f32 v85, v86, v85, v95
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v54, v85, v81, v54
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s8, v49, v81, v49
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v74, v74, v46
	v_fma_f32 v83, -v90, v82, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s9, v47, v81, v47
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_div_scale_f32 v94, null, v74, v74, v45
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v52, v82, v81, v52
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v83, v83, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v82, -v92, v84, v93
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v74, v74, v44
	v_div_fixup_f32 v51, v83, v81, v51
	v_fma_f32 v83, -v98, v91, v90
	v_div_scale_f32 v92, s10, v46, v74, v46
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v82, v82, v89, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v91, v83, v86
	v_mul_f32_e32 v83, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v89, s8, v45, v74, v45
	v_div_scale_f32 v93, null, v74, v74, v43
	v_div_fixup_f32 v49, v82, v81, v49
	v_fma_f32 v82, -v98, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v82, v82, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s9, v44, v74, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v82, v81, v47
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v81, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v82, v90, v84
	v_div_scale_f32 v88, null, v74, v74, v42
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s11, v43, v74, v43
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v82, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v74, v74, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v97 :: v_dual_fmac_f32 v82, v85, v84
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v46, v81, v74, v46
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v81, -v95, v82, v90
	v_div_fixup_f32 v45, v83, v74, v45
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v83, s8, v42, v74, v42
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v74, v74, v40
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s9, v41, v74, v41
	v_div_scale_f32 v93, null, v74, v74, v39
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v88, v84, v83
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v44, v81, v74, v44
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v74, v74, v38
	v_div_fixup_f32 v43, v82, v74, v43
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s10, v40, v74, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v83, -v88, v84, v83
	v_fmac_f32_e32 v94, v81, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v81, v82, v86 :: v_dual_fmac_f32 v96, v95, v96
	v_div_scale_f32 v95, s11, v39, v74, v39
	v_div_fmas_f32 v83, v83, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v74, v74, v37
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v90, v81, v82
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v38, v74, v38
	v_div_fixup_f32 v42, v83, v74, v42
	v_div_fixup_f32 v41, v84, v74, v41
	v_fma_f32 v82, -v90, v81, v82
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v74, v74, v36
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, s9, v37, v74, v37
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v74, v74, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v40, v81, v74, v40
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v82, v74, v39
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s10, v36, v74, v36
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v74, v74, v34
	v_div_fmas_f32 v81, v81, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v74, v74, v33
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s8, v35, v74, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v38, v81, v74, v38
	v_fma_f32 v81, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s9, v34, v74, v34
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v37, v81, v74, v37
	v_fma_f32 v81, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v74, v74, v32
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s11, v33, v74, v33
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v74, v74, v31
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v36, v81, v74, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v81, -v94, v85, v89
	v_div_fixup_f32 v35, v82, v74, v35
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s8, v32, v74, v32
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v48, v48, v29
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v48, v48, v30
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, s9, v31, v74, v31
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v34, v81, v74, v34
	v_div_fixup_f32 v33, v83, v74, v33
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v81, -v93, v92, v87
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v48, v48, v27
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v48, v48, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_scale_f32 v81, s10, v30, v48, v30
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v95, -v94, v83, 1.0
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v93, v92, v87
	v_mul_f32_e32 v87, v81, v89
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v88, s8, v29, v48, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v86, v87, v81
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v28, v48, v28
	v_div_fixup_f32 v32, v82, v74, v32
	v_div_fixup_f32 v31, v84, v74, v31
	v_fma_f32 v74, -v86, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_scale_f32 v84, null, v48, v48, v26
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	v_fma_f32 v81, -v90, v92, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s9, v27, v48, v27
	v_div_fmas_f32 v74, v74, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_div_scale_f32 v87, null, v48, v48, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v82, v98
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v30, v74, v48, v30
	v_fma_f32 v88, -v84, v81, 1.0
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s8, v26, v48, v26
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	v_mul_f32_e32 v74, v88, v81
	v_div_fixup_f32 v29, v83, v48, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v90, -v84, v74, v88
	v_div_fixup_f32 v28, v85, v48, v28
	v_div_scale_f32 v85, null, v48, v48, v24
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s10, v25, v48, v25
	v_div_fmas_f32 v82, v82, v98, v86
	v_fmac_f32_e32 v74, v90, v81
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v82, v48, v27
	v_fma_f32 v82, -v84, v74, v88
	v_div_scale_f32 v90, null, v48, v48, v23
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v82, v81, v74
	v_div_scale_f32 v81, null, v48, v48, v22
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s8, v24, v48, v24
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v48, v48, v21
	v_div_fixup_f32 v26, v74, v48, v26
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v74, v92
	v_div_scale_f32 v74, s9, v23, v48, v23
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v48, v48, v20
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v74, v92
	v_div_scale_f32 v95, s10, v22, v48, v22
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v74
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s11, v21, v48, v21
	v_div_fixup_f32 v25, v83, v48, v25
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v74, -v90, v89, v74
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s8, v20, v48, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	v_div_fmas_f32 v82, v82, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v48, v48, v12
	v_div_fmas_f32 v74, v74, v92, v89
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v24, v82, v48, v24
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v23, v74, v48, v23
	v_div_fixup_f32 v22, v81, v48, v22
	v_div_scale_f32 v81, null, v48, v48, v11
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v91, null, v48, v48, v8
	v_div_fmas_f32 v84, v84, v94, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v74, -v93, v83, v86
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v87, v89, 1.0
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v21, v84, v48, v21
	v_div_fmas_f32 v74, v74, v97, v83
	v_rcp_f32_e32 v83, v81
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v85, vcc_lo, v12, v48, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v74, v48, v20
	v_div_scale_f32 v82, null, v48, v48, v10
	v_mul_f32_e32 v90, v85, v89
	v_div_scale_f32 v84, null, v48, v48, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v81, v83, 1.0
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v87, v90, v85
	v_rcp_f32_e32 v88, v84
	v_fma_f32 v97, -v91, v93, 1.0
	v_fmac_f32_e32 v83, v74, v83
	v_div_scale_f32 v74, s8, v11, v48, v11
	v_fmac_f32_e32 v90, v94, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v93, v97, v93 :: v_dual_mul_f32 v96, v74, v83
	v_fma_f32 v92, -v82, v86, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v85, -v87, v90, v85
	v_fma_f32 v95, -v84, v88, 1.0
	v_div_scale_f32 v97, s11, v8, v48, v8
	v_fma_f32 v94, -v81, v96, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v86, v92, v86
	v_fmac_f32_e32 v96, v94, v83
	v_div_scale_f32 v92, s9, v10, v48, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v95, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v81, v96, v74
	v_div_scale_f32 v95, s10, v9, v48, v9
	v_mul_f32_e32 v98, v92, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v74, v83, v96
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v102, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v100, v97, v93 :: v_dual_mul_f32 v99, v95, v88
	v_fma_f32 v87, -v82, v98, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v74, v48, v11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v91, v100, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v84, v99, v95
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v31, v31
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v96, v29
	v_cvt_i32_f32_e32 v104, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v87, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v29, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v74, 10, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v100, v81, v93 :: v_dual_fmac_f32 v99, v94, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v77, v77, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v91, v100, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v91, v34
	v_and_b32_e32 v34, 15, v73
	v_and_b32_e32 v73, 15, v104
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v92, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v99, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v94, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v85, v48, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v40
	v_and_b32_e32 v40, 15, v61
	v_and_b32_e32 v61, 15, v92
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v98
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v38
	v_and_b32_e32 v38, 15, v63
	v_and_b32_e32 v63, 15, v94
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v33, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v77, 0x1800, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	v_div_fixup_f32 v10, v82, v48, v10
	v_div_fixup_f32 v9, v81, v48, v9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v83, v48, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v50
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v64
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v65, v67
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v71
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v75, v79
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v78, v78, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v31, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v76, 4, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v79, v46
	v_cvt_i32_f32_e32 v93, v32
	v_cvt_i32_f32_e32 v95, v30
	v_and_b32_e32 v30, 15, v75
	v_and_b32_e32 v32, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v78, 6, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v12, v76, v19
	v_lshlrev_b32_e32 v19, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v80, v45
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v82, v43
	v_cvt_i32_f32_e32 v97, v28
	v_cvt_i32_f32_e32 v98, v27
	v_cvt_i32_f32_e32 v109, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v13, 0x1b00, v19, v13
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v8, 15, v48
	v_and_b32_e32 v48, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v79, 0, v77, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v88, v37
	v_cvt_i32_f32_e32 v89, v36
	v_cvt_i32_f32_e32 v90, v35
	v_cvt_i32_f32_e32 v103, v22
	v_cvt_i32_f32_e32 v105, v20
	v_cvt_i32_f32_e32 v86, v39
	v_cvt_i32_f32_e32 v100, v25
	v_cvt_i32_f32_e32 v101, v24
	v_cvt_i32_f32_e32 v106, v11
	v_cvt_i32_f32_e32 v107, v10
	v_cvt_i32_f32_e32 v108, v9
	v_and_b32_e32 v9, 15, v50
	v_and_b32_e32 v10, 15, v53
	v_and_b32_e32 v11, 15, v56
	v_and_b32_e32 v20, 15, v57
	v_and_b32_e32 v21, 15, v58
	v_and_b32_e32 v22, 15, v59
	v_and_b32_e32 v23, 15, v64
	v_and_b32_e32 v24, 15, v65
	v_and_b32_e32 v25, 15, v67
	v_and_b32_e32 v35, 15, v72
	v_and_b32_e32 v36, 15, v69
	v_and_b32_e32 v37, 15, v66
	v_and_b32_e32 v39, 15, v62
	v_and_b32_e32 v45, 15, v51
	v_and_b32_e32 v46, 15, v49
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v64, 15, v95
	v_and_b32_e32 v65, 15, v96
	v_and_b32_e32 v66, 15, v97
	v_and_b32_e32 v67, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v12, v79, v12, v15
	v_xad_u32 v13, v13, v17, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v42
	v_cvt_i32_f32_e32 v84, v41
	v_cvt_i32_f32_e32 v99, v26
	v_and_b32_e32 v26, 15, v68
	v_and_b32_e32 v27, 15, v70
	v_and_b32_e32 v28, 15, v71
	v_and_b32_e32 v41, 15, v60
	v_and_b32_e32 v42, 15, v55
	v_and_b32_e32 v43, 15, v54
	v_and_b32_e32 v44, 15, v52
	v_and_b32_e32 v47, 15, v47
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v57, 15, v88
	v_and_b32_e32 v58, 15, v89
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v72, 15, v103
	v_and_b32_e32 v74, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[8:11]
	ds_store_b128 v12, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v13
	ds_load_b128 v[24:27], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[32:35]
	ds_store_b128 v12, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v13
	ds_load_b128 v[40:43], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[48:51]
	ds_store_b128 v12, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v13
	ds_load_b128 v[56:59], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[64:67]
	ds_store_b128 v12, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v13
	ds_load_b128 v[72:75], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[20:23]
	ds_store_b128 v12, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v13
	ds_load_b128 v[28:31], v13 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[36:39]
	ds_store_b128 v12, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v13
	ds_load_b128 v[44:47], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v53, 15, v84
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v60, 15, v91
	v_and_b32_e32 v62, 15, v93
	v_and_b32_e32 v68, 15, v99
	v_and_b32_e32 v69, 15, v100
	v_and_b32_e32 v70, 15, v101
	v_and_b32_e32 v71, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[52:55]
	ds_store_b128 v12, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v13
	ds_load_b128 v[60:63], v13 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v106
	v_and_b32_e32 v77, 15, v107
	v_and_b32_e32 v78, 15, v108
	v_and_b32_e32 v79, 15, v109
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v31, 4, v22
	v_lshl_or_b32 v31, v47, 4, v39
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v47, 3, v16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v27, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, s34, v14
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v12, v[68:71]
	ds_store_b128 v12, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v13
	ds_load_b128 v[76:79], v13 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v24, 4, v8
	v_lshl_or_b32 v9, v25, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v8, s45, 7, v47
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 16, v11
	v_add_nc_u32_e32 v14, 32, v11
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v10, v26, 4, v10
	v_lshl_or_b32 v19, v28, 4, v19
	v_lshl_or_b32 v20, v29, 4, v20
	v_lshl_or_b32 v21, v30, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v11
	v_mad_u64_u32 v[11:12], null, v11, s8, v[8:9]
	v_mad_u64_u32 v[12:13], null, v13, s8, v[8:9]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[8:9]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s8, v[8:9]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v4.l, 0xff, v10.l
	v_lshlrev_b16 v7.l, 8, v9.l
	v_and_b16 v8.l, 0xff, v17.l
	v_lshlrev_b16 v8.h, 8, v22.l
	v_and_b16 v9.l, 0xff, v21.l
	v_lshlrev_b16 v9.h, 8, v20.l
	v_and_b16 v10.l, 0xff, v19.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v27, v43, 4, v35
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_or_b16 v15.l, v8.l, v7.l
	v_or_b16 v16.h, v9.l, v8.h
	v_or_b16 v16.l, v10.l, v9.h
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_lshlrev_b16 v8.h, 8, v31.l
	v_and_b16 v9.l, 0xff, v30.l
	v_lshlrev_b16 v9.h, 8, v29.l
	v_and_b16 v10.l, 0xff, v28.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v76, 4, v68
	v_lshl_or_b32 v45, v77, 4, v69
	v_lshl_or_b32 v46, v78, 4, v70
	v_lshl_or_b32 v48, v79, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v27.l
	v_and_b16 v4.l, 0xff, v26.l
	v_lshlrev_b16 v7.l, 8, v25.l
	v_and_b16 v8.l, 0xff, v24.l
	buffer_store_b64 v[15:16], v11, s[8:11], 0 offen
	v_or_b16 v16.h, v9.l, v8.h
	v_or_b16 v16.l, v10.l, v9.h
	v_lshlrev_b16 v8.h, 8, v39.l
	v_and_b16 v9.l, 0xff, v38.l
	v_lshlrev_b16 v9.h, 8, v37.l
	v_and_b16 v10.l, 0xff, v36.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v43, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_or_b16 v15.l, v8.l, v7.l
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v3.l, 8, v35.l
	v_and_b16 v4.l, 0xff, v34.l
	v_lshlrev_b16 v7.l, 8, v33.l
	v_and_b16 v8.l, 0xff, v32.l
	v_or_b16 v12.h, v9.l, v8.h
	v_or_b16 v12.l, v10.l, v9.h
	v_lshlrev_b16 v8.h, 8, v48.l
	v_and_b16 v9.l, 0xff, v46.l
	v_lshlrev_b16 v9.h, 8, v45.l
	v_and_b16 v10.l, 0xff, v44.l
	buffer_store_b64 v[15:16], v11, s[8:11], 0 offen
	v_or_b16 v11.h, v4.l, v3.l
	v_or_b16 v11.l, v8.l, v7.l
	v_lshlrev_b16 v3.l, 8, v43.l
	v_and_b16 v4.l, 0xff, v42.l
	v_lshlrev_b16 v7.l, 8, v41.l
	v_and_b16 v8.l, 0xff, v40.l
	v_or_b16 v16.h, v9.l, v8.h
	v_or_b16 v16.l, v10.l, v9.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v9, 4, v0
	v_lshrrev_b32_e32 v5, 2, v5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v4.l, v3.l
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.l, v8.l, v7.l
	v_dual_cndmask_b32 v8, 0x80000000, v14 :: v_dual_and_b32 v9, 2, v9
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[11:12], v13, s[8:11], 0 offen
	buffer_store_b64 v[15:16], v8, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v8, 0, v47
	v_mov_b16_e32 v4.l, v18.h
	v_mov_b16_e32 v3.l, v7.h
	v_add3_u32 v5, v5, v9, v47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v8, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v6, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s45, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 188
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 188
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14112
; TotalNumSgprs: 48
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 188
; Occupancy: 8
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
	.byte	1                               ; Abbrev [1] 0xb:0x6f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x49 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x56:0x22 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp3                          ; DW_AT_low_pc
	.long	.Ltmp41-.Ltmp3                  ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x6b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
