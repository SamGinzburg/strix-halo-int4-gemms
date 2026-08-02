	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v2, 63, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_and_b32_e32 v13, 15, v0
	v_and_b32_e32 v17, 8, v0
	v_lshlrev_b32_e32 v16, 4, v0
	v_and_b32_e32 v18, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s45, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s45, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s45, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[42:43], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s34, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s2
	v_add_nc_u32_e32 v9, s34, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[3:4]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
.Ltmp4:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x40
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v14, 0xf0, v0
	v_lshrrev_b32_e32 v12, 4, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v15, 4, v13
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v52, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s46, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	s_clause 0x1
	s_load_b32 s47, s[0:1], 0x58
	s_load_b32 s48, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	s_addc_u32 s5, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[1:2]
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v1, s34, v13
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[3:4]
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[7:8]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v26, v2, s44
	v_mul_lo_u32 v27, v3, s44
	v_bfe_i32 v2, v0, 3, 1
	v_bfe_i32 v3, v0, 4, 1
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v24, 12, v12
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v3, 0x108, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[42:43], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[5:6]
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v5, 0x270, v16
	v_and_or_b32 v6, 0x70, v16, v2
	v_xor3_b32 v2, v3, v24, v2
	v_lshrrev_b32_e32 v3, 1, v0
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v10, 2, v14
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v8, 32, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s3, s45, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v25, v1, s44
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s3, v15
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v29, v4, s44
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v4, 0, v13
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_xor_b32_e32 v7, 8, v6
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v21, 28, v11
	v_add3_u32 v8, 0, v10, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s47, s33
	v_xor_b32_e32 v20, 0x108, v6
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v22, 1, v14
	s_mov_b32 s8, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s4, s7, v[1:2]
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
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v75, v5, v2
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v76, 0, v6
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v77, 0, v7
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v81, v4, v3
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v91, v8, v21
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v4, s11
	v_or_b32_e32 v64, s3, v0
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v78, 0, v20
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v79, 0, v16
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v92, 0, v22
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v7, s14
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s49, s44, s7
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
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s3, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v98, s3, v24
	v_or_b32_e32 v99, s3, v12
	v_or_b32_e32 v100, 1, v98
	v_or_b32_e32 v101, 3, v98
	v_mad_u64_u32 v[96:97], null, v98, s48, v[9:10]
	v_or_b32_e32 v102, 2, v98
	v_cmp_gt_i32_e64 s3, s47, v98
	v_mad_u64_u32 v[97:98], null, v99, s33, v[10:11]
	v_cmp_gt_i32_e64 s4, s47, v99
	v_mad_u64_u32 v[98:99], null, v100, s48, v[9:10]
	v_cmp_gt_i32_e64 s5, s47, v100
	v_mad_u64_u32 v[99:100], null, v101, s48, v[9:10]
	v_cmp_gt_i32_e64 s6, s47, v101
	v_mad_u64_u32 v[100:101], null, v102, s48, v[9:10]
	v_cmp_gt_i32_e64 s7, s47, v102
	s_and_b32 s3, s46, s3
	v_cndmask_b32_e64 v97, 0x80000000, v97, s4
	v_cndmask_b32_e64 v96, 0x80000000, v96, s3
	s_and_b32 s4, s46, s6
	s_and_b32 s3, s46, s5
	s_and_b32 s5, s46, s7
	v_cndmask_b32_e64 v101, 0x80000000, v99, s4
	v_cndmask_b32_e64 v102, 0x80000000, v98, s3
	v_cndmask_b32_e64 v100, 0x80000000, v100, s5
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_u8 v103, v96, s[24:27], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[96:99], v97, s[28:31], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x2
	buffer_load_u8 v101, v101, s[24:27], 0 offen
	buffer_load_u8 v102, v102, s[24:27], 0 offen
	buffer_load_u8 v104, v100, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s8, s49
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v100.l, 8, v101.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v100.h, 8, v102.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v101.h, v104.l, v100.l
	v_or_b16 v101.l, v103.l, v100.h
	ds_store_b32 v75, v101
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[118:121], v76 offset1:32
	ds_load_2addr_b64 v[166:169], v76 offset0:64 offset1:96
	ds_load_2addr_stride64_b64 v[126:129], v77 offset1:1
	ds_load_2addr_stride64_b64 v[170:173], v78 offset1:1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v79, v[96:99]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v96, v81 offset:1280
	ds_load_u8 v97, v81 offset:1024
	ds_load_u8 v98, v81 offset:1920
	ds_load_u8 v99, v81 offset:1664
	ds_load_u8 v100, v81 offset:1408
	ds_load_u8 v101, v81 offset:1152
	ds_load_u8 v102, v81 offset:1792
	ds_load_u8 v103, v81 offset:1536
	ds_load_u8 v104, v81 offset:256
	ds_load_u8 v105, v81
	ds_load_u8 v106, v81 offset:896
	ds_load_u8 v107, v81 offset:640
	ds_load_u8 v108, v81 offset:384
	ds_load_u8 v109, v81 offset:128
	ds_load_u8 v110, v81 offset:768
	ds_load_u8 v111, v81 offset:512
	ds_load_u8 v112, v81 offset:3328
	ds_load_u8 v113, v81 offset:3072
	ds_load_u8 v114, v81 offset:3840
	ds_load_u8 v115, v81 offset:3584
	ds_load_u8 v116, v81 offset:2304
	ds_load_u8 v117, v81 offset:2048
	ds_load_u8 v122, v81 offset:2816
	ds_load_u8 v123, v81 offset:2560
	ds_load_u8 v124, v81 offset:3968
	ds_load_u8 v125, v81 offset:3712
	ds_load_u8 v130, v81 offset:3456
	ds_load_u8 v131, v81 offset:3200
	ds_load_u8 v132, v81 offset:2944
	ds_load_u8 v133, v81 offset:2432
	ds_load_u8 v134, v81 offset:2176
	ds_load_u8 v135, v81 offset:2688
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v97, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v102, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v111, v110, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v99, v109, v108, 0xc0c0004
	v_perm_b32 v101, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v123, v122, 0xc0c0004
	v_lshl_or_b32 v123, v97, 16, v96
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v125, v124, 0xc0c0004
	v_lshl_or_b32 v122, v103, 16, v102
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v131, v130, 0xc0c0004
	v_lshl_or_b32 v175, v98, 16, v100
	v_lshl_or_b32 v174, v101, 16, v99
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v108, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v135, v132, 0xc0c0004
	v_lshl_or_b32 v131, v105, 16, v104
	v_lshl_or_b32 v130, v111, 16, v110
	v_lshl_or_b32 v177, v107, 16, v106
	v_wmma_i32_16x16x16_iu4 v[96:103], v[122:123], v[118:119], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[104:111], v[174:175], v[118:119], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[170:171], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[130:131], v[126:127], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[176:177], v[126:127], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[174:175], v[170:171], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[130:131], v[120:121], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v124, v96
	v_cvt_f32_i32_e32 v125, v97
	v_cvt_f32_i32_e32 v126, v98
	v_cvt_f32_i32_e32 v127, v99
	v_cvt_f32_i32_e32 v132, v100
	v_cvt_f32_i32_e32 v133, v101
	v_cvt_f32_i32_e32 v134, v102
	v_cvt_f32_i32_e32 v135, v103
	v_cvt_f32_i32_e32 v144, v112
	v_cvt_f32_i32_e32 v145, v113
	v_cvt_f32_i32_e32 v146, v114
	v_cvt_f32_i32_e32 v147, v115
	v_cvt_f32_i32_e32 v148, v116
	v_cvt_f32_i32_e32 v149, v117
	v_cvt_f32_i32_e32 v150, v118
	v_cvt_f32_i32_e32 v151, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[122:123], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[174:175], v[166:167], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[130:131], v[128:129], v[96:103] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v137, v105
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[176:177], v[128:129], v[112:119] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v106
	v_cvt_f32_i32_e32 v139, v107
	v_cvt_f32_i32_e32 v140, v108
	v_cvt_f32_i32_e32 v141, v109
	v_cvt_f32_i32_e32 v142, v110
	v_cvt_f32_i32_e32 v143, v111
	v_cvt_f32_i32_e32 v108, v96
	v_cvt_f32_i32_e32 v109, v97
	v_cvt_f32_i32_e32 v110, v98
	v_cvt_f32_i32_e32 v111, v99
	v_cvt_f32_i32_e32 v104, v100
	v_cvt_f32_i32_e32 v105, v101
	v_cvt_f32_i32_e32 v106, v102
	v_cvt_f32_i32_e32 v107, v103
	v_cvt_f32_i32_e32 v100, v112
	v_cvt_f32_i32_e32 v101, v113
	v_cvt_f32_i32_e32 v102, v114
	v_cvt_f32_i32_e32 v103, v115
	v_cvt_f32_i32_e32 v96, v116
	v_cvt_f32_i32_e32 v97, v117
	v_cvt_f32_i32_e32 v98, v118
	v_cvt_f32_i32_e32 v99, v119
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[122:123], v[172:173], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[174:175], v[172:173], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[176:177], v[120:121], v[152:159] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[130:131], v[168:169], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[176:177], v[168:169], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v120, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v117
	v_cvt_f32_i32_e32 v116, v160
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v160, s8, v25, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v117, v161
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v161, s8, v26, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v122, v118
	v_cvt_f32_i32_e32 v118, v162
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v162, s8, v27, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v123, v119
	v_cvt_f32_i32_e32 v119, v163
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v163, s8, v29, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v128, v112
	v_cvt_f32_i32_e32 v112, v164
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v164, v64, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v160, 0x80000000, v160, vcc_lo
	v_cndmask_b32_e64 v161, 0x80000000, v161, s0
	v_cndmask_b32_e64 v162, 0x80000000, v162, s1
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v113
	v_cvt_f32_i32_e32 v130, v114
	v_cvt_f32_i32_e32 v131, v115
	v_cvt_f32_i32_e32 v113, v165
	v_cvt_f32_i32_e32 v114, v166
	v_cvt_f32_i32_e32 v115, v167
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v164, v164, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v160, v160, s[36:39], 0 offen
	buffer_load_u16 v165, v161, s[36:39], 0 offen
	buffer_load_u16 v166, v162, s[36:39], 0 offen
	buffer_load_u16 v167, v163, s[36:39], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v161, 16, v164
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v164, 16, v160
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v160, v135, v164
	v_mul_f32_e32 v135, v139, v164
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v139, 16, v165
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v173, v145, v139 :: v_dual_mul_f32 v168, v124, v164
	v_mul_f32_e32 v165, v146, v139
	v_dual_mul_f32 v170, v126, v164 :: v_dual_mul_f32 v145, v148, v139
	v_dual_mul_f32 v171, v127, v164 :: v_dual_mul_f32 v146, v149, v139
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v126, v142, v164 :: v_dual_lshlrev_b32 v149, 16, v167
	v_dual_mul_f32 v127, v143, v164 :: v_dual_lshlrev_b32 v148, 16, v166
	v_mul_f32_e32 v169, v125, v164
	v_mul_f32_e32 v162, v133, v164
	v_mul_f32_e32 v163, v134, v164
	v_dual_mul_f32 v133, v137, v164 :: v_dual_mul_f32 v142, v154, v139
	v_dual_mul_f32 v134, v138, v164 :: v_dual_mul_f32 v137, v157, v139
	v_mul_f32_e32 v124, v140, v164
	v_dual_mul_f32 v125, v141, v164 :: v_dual_mul_f32 v138, v158, v139
	v_mul_f32_e32 v172, v144, v139
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v91, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v161, v132, v164 :: v_dual_mul_f32 v144, v151, v139
	v_dual_mul_f32 v132, v136, v164 :: v_dual_mul_f32 v143, v155, v139
	v_mul_f32_e32 v164, v147, v139
	v_mul_f32_e32 v147, v150, v139
	v_mul_f32_e32 v140, v152, v139
	v_mul_f32_e32 v141, v153, v139
	v_mul_f32_e32 v136, v156, v139
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v150, v108, v148 :: v_dual_mul_f32 v155, v129, v149
	v_dual_mul_f32 v151, v109, v148 :: v_dual_mul_f32 v154, v128, v149
	v_dual_mul_f32 v152, v110, v148 :: v_dual_mul_f32 v157, v131, v149
	v_dual_mul_f32 v153, v111, v148 :: v_dual_mul_f32 v156, v130, v149
	v_dual_mul_f32 v129, v104, v148 :: v_dual_mul_f32 v122, v122, v149
	v_dual_mul_f32 v130, v105, v148 :: v_dual_mul_f32 v123, v123, v149
	v_dual_mul_f32 v131, v106, v148 :: v_dual_mul_f32 v120, v120, v149
	v_dual_mul_f32 v128, v107, v148 :: v_dual_mul_f32 v121, v121, v149
	v_dual_mul_f32 v104, v100, v148 :: v_dual_mul_f32 v109, v117, v149
	v_dual_mul_f32 v105, v101, v148 :: v_dual_mul_f32 v108, v116, v149
	v_dual_mul_f32 v106, v102, v148 :: v_dual_mul_f32 v111, v119, v149
	v_dual_mul_f32 v107, v103, v148 :: v_dual_mul_f32 v110, v118, v149
	v_dual_mul_f32 v96, v96, v148 :: v_dual_mul_f32 v101, v113, v149
	v_dual_mul_f32 v97, v97, v148 :: v_dual_mul_f32 v100, v112, v149
	v_dual_mul_f32 v98, v98, v148 :: v_dual_mul_f32 v103, v115, v149
	v_dual_mul_f32 v99, v99, v148 :: v_dual_mul_f32 v102, v114, v149
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[112:115], v92
	ds_load_b128 v[116:119], v92 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v139, v159, v139
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v69, v164, v115 :: v_dual_fmac_f32 v54, v151, v113
	v_dual_fmac_f32 v55, v150, v112 :: v_dual_fmac_f32 v52, v153, v115
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[148:151], v92 offset:512
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v53, v152, v114 :: v_dual_fmac_f32 v38, v155, v113
	v_dual_fmac_f32 v39, v154, v112 :: v_dual_fmac_f32 v36, v157, v115
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[152:155], v92 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v19, v168, v112 :: v_dual_fmac_f32 v94, v170, v114
	v_dual_fmac_f32 v95, v169, v113 :: v_dual_fmac_f32 v72, v172, v112
	v_dual_fmac_f32 v93, v171, v115 :: v_dual_fmac_f32 v70, v165, v114
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v71, v173, v113 :: v_dual_fmac_f32 v88, v163, v118
	v_dual_fmac_f32 v37, v156, v114 :: v_dual_fmac_f32 v90, v161, v116
	v_dual_fmac_f32 v89, v162, v117 :: v_dual_fmac_f32 v68, v145, v116
	v_dual_fmac_f32 v87, v160, v119 :: v_dual_fmac_f32 v66, v147, v118
	v_dual_fmac_f32 v67, v146, v117 :: v_dual_fmac_f32 v48, v128, v119
	v_dual_fmac_f32 v65, v144, v119 :: v_dual_fmac_f32 v50, v130, v117
	v_dual_fmac_f32 v51, v129, v116 :: v_dual_fmac_f32 v32, v123, v119
	v_dual_fmac_f32 v49, v131, v118 :: v_dual_fmac_f32 v34, v121, v117
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v35, v120, v116 :: v_dual_fmac_f32 v84, v134, v150
	v_dual_fmac_f32 v33, v122, v118 :: v_dual_fmac_f32 v86, v132, v148
	v_dual_fmac_f32 v85, v133, v149 :: v_dual_fmac_f32 v60, v143, v151
	v_dual_fmac_f32 v83, v135, v151 :: v_dual_fmac_f32 v62, v141, v149
	v_dual_fmac_f32 v63, v140, v148 :: v_dual_fmac_f32 v46, v105, v149
	v_dual_fmac_f32 v61, v142, v150 :: v_dual_fmac_f32 v44, v107, v151
	v_dual_fmac_f32 v47, v104, v148 :: v_dual_fmac_f32 v30, v109, v149
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v45, v106, v150 :: v_dual_fmac_f32 v82, v124, v152
	v_dual_fmac_f32 v31, v108, v148 :: v_dual_fmac_f32 v28, v110, v150
	v_dual_fmac_f32 v23, v111, v151 :: v_dual_fmac_f32 v80, v125, v153
	v_dual_fmac_f32 v74, v126, v154 :: v_dual_fmac_f32 v73, v127, v155
	v_dual_fmac_f32 v59, v136, v152 :: v_dual_fmac_f32 v58, v137, v153
	v_dual_fmac_f32 v57, v138, v154 :: v_dual_fmac_f32 v56, v139, v155
	v_dual_fmac_f32 v43, v96, v152 :: v_dual_fmac_f32 v42, v97, v153
	v_dual_fmac_f32 v41, v98, v154 :: v_dual_fmac_f32 v40, v99, v155
	v_dual_fmac_f32 v22, v100, v152 :: v_dual_fmac_f32 v21, v101, v153
	v_dual_fmac_f32 v20, v102, v154 :: v_dual_fmac_f32 v11, v103, v155
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v29, v74, v74 :: v_dual_max_f32 v64, v73, v73
	v_dual_max_f32 v72, v72, v72 :: v_dual_max_f32 v71, v71, v71
	v_dual_max_f32 v26, v82, v82 :: v_dual_max_f32 v27, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v73, 0, v64
	v_dual_max_f32 v72, 0, v72 :: v_dual_max_f32 v67, v67, v67
	v_max_f32_e32 v64, v69, v69
	v_max_f32_e32 v61, v61, v61
	v_dual_max_f32 v1, v19, v19 :: v_dual_max_f32 v4, v93, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v81, 0, v67 :: v_dual_max_f32 v80, 0, v64
	v_dual_max_f32 v5, v90, v90 :: v_dual_max_f32 v6, v89, v89
	v_max_f32_e32 v10, v86, v86
	v_dual_max_f32 v70, v70, v70 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v86, 0, v61 :: v_dual_max_f32 v55, v55, v55
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v44, v44, v44 :: v_dual_max_f32 v41, v41, v41
	v_max_f32_e32 v42, v42, v42
	v_dual_max_f32 v2, v95, v95 :: v_dual_max_f32 v3, v94, v94
	v_max_f32_e32 v1, 0, v1
	v_dual_max_f32 v7, v88, v88 :: v_dual_max_f32 v8, v87, v87
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v65, v65, v65
	v_max_f32_e32 v68, v68, v68
	v_dual_max_f32 v54, v54, v54 :: v_dual_max_f32 v51, v51, v51
	v_dual_max_f32 v92, 0, v55 :: v_dual_max_f32 v49, v49, v49
	v_dual_max_f32 v100, 0, v46 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v105, 0, v41
	v_dual_max_f32 v104, 0, v42 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v38, v38, v38
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v23, v23, v23
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v19, v85, v85
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v25, v83, v83
	v_max_f32_e32 v24, v84, v84
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v63, v63, v63
	v_dual_max_f32 v83, 0, v65 :: v_dual_max_f32 v68, 0, v68
	v_dual_max_f32 v59, v59, v59 :: v_dual_max_f32 v62, v62, v62
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v60, v60, v60
	v_dual_max_f32 v58, v58, v58 :: v_dual_max_f32 v53, v53, v53
	v_dual_max_f32 v56, v56, v56 :: v_dual_max_f32 v93, 0, v54
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v47, v47, v47
	v_max_f32_e32 v52, v52, v52
	v_dual_max_f32 v96, 0, v51 :: v_dual_max_f32 v45, v45, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v98, 0, v49 :: v_dual_max_f32 v47, 0, v47
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v107, 0, v39
	v_dual_max_f32 v106, 0, v40 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v36, v36, v36
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v109, 0, v37 :: v_dual_max_f32 v108, 0, v38
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v114, 0, v32 :: v_dual_max_f32 v11, v11, v11
	v_dual_max_f32 v22, v22, v22 :: v_dual_mul_f32 v49, v1, v1
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_max_f32_e32 v27, 0, v27
	v_max_f32_e32 v76, 0, v71
	v_dual_max_f32 v84, 0, v63 :: v_dual_max_f32 v89, 0, v58
	v_max_f32_e32 v85, 0, v62
	v_dual_max_f32 v82, 0, v66 :: v_dual_max_f32 v87, 0, v60
	v_dual_max_f32 v88, 0, v59 :: v_dual_max_f32 v91, 0, v56
	v_dual_max_f32 v97, 0, v50 :: v_dual_max_f32 v90, 0, v57
	v_max_f32_e32 v95, 0, v52
	v_max_f32_e32 v101, 0, v45
	v_dual_max_f32 v94, 0, v53 :: v_dual_max_f32 v99, 0, v48
	v_dual_max_f32 v102, 0, v44 :: v_dual_max_f32 v103, 0, v43
	v_dual_max_f32 v111, 0, v35 :: v_dual_max_f32 v110, 0, v36
	v_dual_max_f32 v113, 0, v33 :: v_dual_max_f32 v112, 0, v34
	v_max_f32_e32 v115, 0, v31
	v_dual_max_f32 v117, 0, v28 :: v_dual_max_f32 v118, 0, v23
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v57, v5, v5
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v119, 0, v22
	v_dual_max_f32 v116, 0, v30 :: v_dual_max_f32 v121, 0, v20
	v_dual_max_f32 v120, 0, v21 :: v_dual_mul_f32 v55, v3, v3
	v_dual_max_f32 v122, 0, v11 :: v_dual_mul_f32 v69, v24, v24
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v52, v2, v2 :: v_dual_mul_f32 v63, v7, v7
	v_dual_mul_f32 v56, v4, v4 :: v_dual_mul_f32 v67, v19, v19
	v_dual_mul_f32 v58, v6, v6 :: v_dual_mul_f32 v71, v25, v25
	v_dual_mul_f32 v64, v8, v8 :: v_dual_mul_f32 v75, v27, v27
	v_dual_mul_f32 v66, v10, v10 :: v_dual_mul_f32 v79, v73, v73
	v_dual_mul_f32 v74, v26, v26 :: v_dual_mul_f32 v77, v72, v72
	v_dual_mul_f32 v78, v29, v29 :: v_dual_mul_f32 v61, v83, v83
	v_dual_mul_f32 v76, v76, v76 :: v_dual_mul_f32 v65, v81, v81
	v_dual_mul_f32 v72, v70, v70 :: v_dual_mul_f32 v59, v85, v85
	v_dual_mul_f32 v70, v80, v80 :: v_dual_mul_f32 v53, v87, v87
	v_dual_mul_f32 v68, v68, v68 :: v_dual_mul_f32 v43, v94, v94
	v_dual_mul_f32 v62, v82, v82 :: v_dual_mul_f32 v51, v88, v88
	v_dual_mul_f32 v60, v84, v84 :: v_dual_mul_f32 v39, v98, v98
	v_dual_mul_f32 v54, v86, v86 :: v_dual_mul_f32 v45, v92, v92
	v_dual_mul_f32 v50, v89, v89 :: v_dual_mul_f32 v41, v96, v96
	v_dual_mul_f32 v48, v90, v90 :: v_dual_mul_f32 v37, v47, v47
	v_dual_mul_f32 v46, v91, v91 :: v_dual_mul_f32 v35, v101, v101
	v_dual_mul_f32 v44, v93, v93 :: v_dual_mul_f32 v33, v103, v103
	v_dual_mul_f32 v42, v95, v95 :: v_dual_mul_f32 v31, v105, v105
	v_dual_mul_f32 v40, v97, v97 :: v_dual_mul_f32 v29, v107, v107
	v_dual_mul_f32 v38, v99, v99 :: v_dual_mul_f32 v27, v109, v109
	v_dual_mul_f32 v36, v100, v100 :: v_dual_mul_f32 v25, v111, v111
	v_dual_mul_f32 v34, v102, v102 :: v_dual_mul_f32 v23, v113, v113
	v_dual_mul_f32 v32, v104, v104 :: v_dual_mul_f32 v21, v115, v115
	v_dual_mul_f32 v30, v106, v106 :: v_dual_mul_f32 v19, v117, v117
	v_dual_mul_f32 v28, v108, v108 :: v_dual_mul_f32 v11, v118, v118
	v_dual_mul_f32 v26, v110, v110 :: v_dual_mul_f32 v7, v121, v121
	v_dual_mul_f32 v24, v112, v112 :: v_dual_mul_f32 v5, v122, v122
	v_dual_mul_f32 v22, v114, v114 :: v_dual_mov_b32 v1, v17
	v_dual_mul_f32 v20, v116, v116 :: v_dual_mov_b32 v3, v9
	v_mul_f32_e32 v10, v119, v119
	v_mul_f32_e32 v8, v120, v120
	v_mov_b32_e32 v4, v18
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v52, v52 :: v_dual_max_f32 v47, v77, v77
	v_max_f32_e32 v6, v49, v49
	v_max3_f32 v9, v56, v57, v58
	v_max3_f32 v17, v67, v69, v71
	v_max3_f32 v18, v74, v75, v78
	v_max3_f32 v81, v59, v54, v53
	v_max_f32_e32 v2, v6, v2
	v_max3_f32 v82, v51, v50, v48
	v_max3_f32 v80, v62, v61, v60
	v_max3_f32 v17, v17, v18, v79
	v_max_f32_e32 v18, v45, v45
	v_max3_f32 v2, v2, v55, v9
	v_max_f32_e32 v9, v44, v44
	v_max_f32_e32 v6, v76, v76
	v_max3_f32 v83, v36, v35, v34
	v_max3_f32 v84, v33, v32, v31
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v9, v18, v9 :: v_dual_max_f32 v6, v47, v6
	v_max3_f32 v47, v70, v68, v65
	v_max3_f32 v18, v42, v41, v40
	v_max3_f32 v73, v63, v64, v66
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v72, v47
	v_max3_f32 v47, v81, v82, v46
	v_max3_f32 v81, v39, v38, v37
	v_max3_f32 v9, v9, v43, v18
	v_max3_f32 v18, v83, v84, v30
	v_max_f32_e32 v83, v29, v29
	v_max3_f32 v6, v6, v80, v47
	v_max3_f32 v2, v2, v73, v17
	v_max3_f32 v73, v20, v19, v11
	v_max3_f32 v9, v9, v81, v18
	v_max3_f32 v18, v26, v25, v24
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v81, v6, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v80, v10, v8, v7
	v_max3_f32 v47, v23, v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v81, v81, v81 :: v_dual_and_b32 v84, 0x80, v0
	v_max_f32_e32 v82, v28, v28
	v_max3_f32 v73, v73, v80, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v86, 3, v84
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v6, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v17, v83, v82
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v82, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v17, v17, v27, v18
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v18, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v47, v17, v47, v73
	v_dual_max_f32 v18, v18, v18 :: v_dual_and_b32 v73, 3, v0
	v_dual_max_f32 v82, v82, v82 :: v_dual_and_b32 v17, 0x60, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v80, v2, v18
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v18, v47, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v82, v9, v82 :: v_dual_lshlrev_b32 v9, 5, v73
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v6, v73, 9, 0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v18, v18
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_or_b32 v83, 0x680, v16, v9
	v_lshlrev_b32_e32 v16, 1, v84
	v_xor_b32_e32 v85, v9, v17
	v_xor_b32_e32 v87, v83, v17
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v47, v18
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v6, v2, 2, v6
	v_lshl_add_u32 v88, v2, 6, 0
	v_lshlrev_b32_e32 v2, 5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v6, v1, 4, v6
	v_add3_u32 v18, v88, v86, v87
	v_lshlrev_b32_e32 v1, 3, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v6, v6, v16, v85
	ds_store_b128 v6, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v47, v82
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v85, v83, v83
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v80
	v_add_nc_u32_e32 v84, 0, v84
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v47, v47, v47 :: v_dual_mov_b32 v18, v81
	v_max_f32_e32 v81, v81, v81
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v18, v81, v18 :: v_dual_max_f32 v81, v83, v83
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v80, v80 :: v_dual_mov_b32 v83, v18
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v80, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v80, v82, v82 :: v_dual_max_f32 v83, v83, v83
	v_max_f32_e32 v47, v80, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v18, v18, v83
	v_dual_max_f32 v80, v85, v81 :: v_dual_mov_b32 v81, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v85, v80
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v81, v81 :: v_dual_mov_b32 v82, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v47, v47, v81
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
	v_max_f32_e32 v6, v6, v82
	v_dual_max_f32 v82, v85, v85 :: v_dual_mov_b32 v85, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v6
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v85, v85 :: v_dual_max_f32 v86, v80, v82
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v85, 1, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v83, v83 :: v_dual_max_f32 v81, v18, v81
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v87, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v6, v80
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v87, v87
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v82, v47 :: v_dual_max_f32 v83, v86, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add3_u32 v18, v84, v85, v1
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v82, v82
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v82, v47, v6
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v6, v73, 4, 0
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v47, 32, v12
	v_or_b32_e32 v73, 16, v12
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v18, v[80:83]
	v_add3_u32 v1, v6, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v1
.Ltmp49:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v80, v80 :: v_dual_max_f32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v83, v83, v83 :: v_dual_max_f32 v6, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v83, 0x2b8cbccc, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v80, v18
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s0, s34, v47
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v47, 0x2b8cbccc, v82
	v_div_scale_f32 v88, vcc_lo, v6, 0x40e00000, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s35, 0, s0
	v_add_co_u32 v86, s0, s34, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v82, -v18, v80, 1.0
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v47
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v80, v82, v80
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v73, v81, v81
	v_rcp_f32_e32 v81, v89
	v_mul_f32_e32 v82, v88, v80
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v73, 0x2b8cbccc, v73
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[84:85]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v18, v82, v88
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[84:85]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[42:43], v[86:87]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v1, v80
	v_fma_f32 v2, -v89, v81, 1.0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v92, v90
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[86:87]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v18, v82, v88
	v_rcp_f32_e32 v18, v91
	v_fmac_f32_e32 v81, v2, v81
	v_div_scale_f32 v2, s6, v47, 0x40e00000, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v1, v1, v80, v82
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v80, v2, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v90, v92, 1.0
	v_fma_f32 v85, -v91, v18, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v82, v92
	v_div_scale_f32 v82, s7, v73, 0x40e00000, v73
	v_fmac_f32_e32 v18, v85, v18
	v_div_scale_f32 v85, s8, v83, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v88, v82, v92 :: v_dual_mul_f32 v87, v85, v18
	v_div_fixup_f32 v1, v1, 0x40e00000, v6
	v_fma_f32 v6, -v89, v80, v2
	v_fma_f32 v86, -v90, v88, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v6, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v6.l, v1.h
	v_mov_b16_e32 v6.h, v84.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v88, v86, v92
	v_fma_f32 v2, -v89, v80, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v6, 1, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v80, v2, v81, v80
	v_fma_f32 v81, -v91, v87, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v81, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v86, 0xffff0000, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v47, v80, 0x40e00000, v47
	v_fma_f32 v80, -v90, v88, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v86, v86, v49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v85, -v91, v87, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v92, v88
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v47.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v18, v85, v18, v87
	v_div_fixup_f32 v73, v80, 0x40e00000, v73
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v86, v86, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v84
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v83, v18, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v18.l, v73.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v81, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v18.h, v84.h
	v_mov_b16_e32 v84.l, v83.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[42:43], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[1:2]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v49, v86, v49
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v47, v80, 0x7fff
	v_and_b32_e32 v2, 1, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v86, v86, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v86, v86, v56
	v_mul_f32_e32 v89, v87, v82
	v_fma_f32 v47, -v85, v88, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v18, v73, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v90
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v83, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v91
	v_fma_f32 v73, -v81, v89, v87
	v_fmac_f32_e32 v88, v47, v88
	v_div_scale_f32 v92, s8, v52, v86, v52
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v47, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v73, v82
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v73, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v94, -v90, v84, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v91, v83, 1.0
	v_fma_f32 v81, -v81, v89, v87
	v_fma_f32 v87, -v85, v93, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, s9, v55, v86, v55
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v95, null, v86, v86, v58
	v_div_fmas_f32 v81, v81, v82, v89
	v_fmac_f32_e32 v93, v87, v88
	v_mul_f32_e32 v82, v94, v84
	v_div_scale_f32 v89, s10, v56, v86, v56
	v_rcp_f32_e32 v97, v95
	v_div_fixup_f32 v49, v81, v86, v49
	v_fma_f32 v81, -v85, v93, v92
	v_fma_f32 v85, -v90, v82, v94
	v_mul_f32_e32 v92, v89, v83
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v88, v93
	v_fmac_f32_e32 v82, v85, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v85, -v91, v92, v89
	v_fma_f32 v93, -v95, v97, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v52, v81, v86, v52
	v_fma_f32 v81, -v90, v82, v94
	v_fmac_f32_e32 v92, v85, v83
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v90, s11, v58, v86, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v91, v92, v89
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v91, v90, v97
	v_div_scale_f32 v96, null, v86, v86, v57
	v_div_scale_f32 v88, s8, v57, v86, v57
	v_div_scale_f32 v93, null, v86, v86, v63
	v_rcp_f32_e32 v87, v96
	v_div_scale_f32 v94, null, v86, v86, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v93
	v_div_fmas_f32 v82, v82, v83, v92
	v_div_fixup_f32 v55, v81, v86, v55
	v_rcp_f32_e32 v83, v94
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v56, v82, v86, v56
	v_fma_f32 v98, -v96, v87, 1.0
	v_div_scale_f32 v82, s9, v63, v86, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v93, v89, 1.0
	v_fmac_f32_e32 v87, v98, v87
	v_div_scale_f32 v98, null, v86, v86, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, null, v86, v86, v67
	v_mul_f32_e32 v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v96, v85, v88
	v_fmac_f32_e32 v85, v84, v87
	v_fma_f32 v84, -v95, v91, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v96, v85, v88
	v_fmac_f32_e32 v91, v84, v97
	v_fma_f32 v84, -v94, v83, 1.0
	v_div_scale_f32 v88, null, v86, v86, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v87, v85
	v_fma_f32 v85, -v95, v91, v90
	v_mul_f32_e32 v87, v82, v89
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v90, s8, v64, v86, v64
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v84, v88
	v_div_fmas_f32 v85, v85, v97, v91
	v_fma_f32 v91, -v93, v87, v82
	v_dual_mul_f32 v95, v90, v83 :: v_dual_and_b32 v80, 0xffff0000, v18
	v_div_fixup_f32 v57, v81, v86, v57
	v_rcp_f32_e32 v97, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v91, v89
	v_fma_f32 v81, -v94, v95, v90
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v88, v84, 1.0
	v_div_fixup_f32 v58, v85, v86, v58
	v_fma_f32 v82, -v93, v87, v82
	v_fmac_f32_e32 v95, v81, v83
	v_div_scale_f32 v85, s10, v66, v86, v66
	v_div_scale_f32 v91, null, v86, v86, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v89, v87
	v_fma_f32 v87, -v94, v95, v90
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v63, v82, v86, v63
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v83, v87, v83, v95
	v_rcp_f32_e32 v87, v98
	v_fmac_f32_e32 v84, v96, v84
	v_fma_f32 v96, -v92, v97, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v64, v83, v86, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v91, v93, 1.0
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v67, v86, v67
	v_mul_f32_e32 v81, v85, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, s8, v69, v86, v69
	v_mul_f32_e32 v90, v96, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v88, v81, v85
	v_mul_f32_e32 v83, v94, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v89, v84
	v_fma_f32 v89, -v92, v90, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v88, v81, v85
	v_fma_f32 v85, -v98, v87, 1.0
	v_div_scale_f32 v88, null, v86, v86, v74
	v_fmac_f32_e32 v90, v89, v97
	v_div_scale_f32 v89, s9, v71, v86, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v85, v87
	v_rcp_f32_e32 v85, v88
	v_div_fmas_f32 v81, v82, v84, v81
	v_fma_f32 v84, -v91, v83, v94
	v_fma_f32 v82, -v92, v90, v96
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v92, null, v86, v86, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v84, v93
	v_div_fmas_f32 v82, v82, v97, v90
	v_div_fixup_f32 v66, v81, v86, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v85, 1.0
	v_mul_f32_e32 v90, v89, v87
	v_fma_f32 v81, -v91, v83, v94
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v92
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v86, v86, v78
	v_div_fixup_f32 v67, v82, v86, v67
	v_fma_f32 v82, -v98, v90, v89
	v_div_fmas_f32 v81, v81, v93, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v95
	v_div_scale_f32 v91, s10, v74, v86, v74
	v_fmac_f32_e32 v90, v82, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v92, v84, 1.0
	v_div_fixup_f32 v69, v81, v86, v69
	v_div_scale_f32 v93, s8, v75, v86, v75
	v_fma_f32 v81, -v98, v90, v89
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v98, -v95, v83, 1.0
	v_div_fmas_f32 v81, v81, v87, v90
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v98, v83
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v86, v86, v79
	v_mul_f32_e32 v82, v91, v85
	v_div_fixup_f32 v71, v81, v86, v71
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v88, v82, v91
	v_fmac_f32_e32 v82, v89, v85
	v_div_scale_f32 v89, s9, v78, v86, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v94, v97, 1.0
	v_mul_f32_e32 v96, v93, v84
	v_fma_f32 v81, -v88, v82, v91
	v_div_scale_f32 v88, s11, v79, v86, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v90, v97
	v_fma_f32 v87, -v92, v96, v93
	v_div_scale_f32 v90, null, v80, v80, v77
	v_div_fmas_f32 v81, v81, v85, v82
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v87, v84 :: v_dual_mul_f32 v87, v89, v83
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v74, v81, v86, v74
	v_fma_f32 v82, -v92, v96, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v95, v87, v89
	v_div_scale_f32 v93, null, v80, v80, v76
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v87, v85, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v84, v96
	v_rcp_f32_e32 v84, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v94, v92, v88
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v81, -v95, v87, v89
	v_div_fixup_f32 v75, v82, v86, v75
	v_div_scale_f32 v82, s8, v77, v80, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v92, v85, v97 :: v_dual_fmac_f32 v91, v96, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v93, v84, 1.0
	v_div_fmas_f32 v81, v81, v83, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v83, -v94, v92, v88
	v_mul_f32_e32 v87, v82, v91
	v_div_scale_f32 v88, s9, v76, v80, v76
	v_fmac_f32_e32 v84, v85, v84
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v80, v80, v72
	v_div_fixup_f32 v78, v81, v86, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v95, v88, v84
	v_div_fmas_f32 v83, v83, v97, v92
	v_fma_f32 v92, -v90, v87, v82
	v_rcp_f32_e32 v85, v89
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v93, v95, v88
	v_div_fixup_f32 v79, v83, v86, v79
	v_fmac_f32_e32 v87, v92, v91
	v_div_scale_f32 v86, null, v80, v80, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v81, v84
	v_div_scale_f32 v83, s10, v72, v80, v72
	v_fma_f32 v82, -v90, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v86
	v_fma_f32 v96, -v89, v85, 1.0
	v_div_scale_f32 v94, null, v80, v80, v70
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v87, -v93, v95, v88
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v77, v82, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v86, v90, 1.0
	v_fmac_f32_e32 v85, v96, v85
	v_div_fmas_f32 v84, v87, v84, v95
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v96, null, v80, v80, v65
	v_dual_fmac_f32 v90, v93, v90 :: v_dual_mul_f32 v81, v83, v85
	v_div_scale_f32 v93, s8, v68, v80, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v94, v97, 1.0
	v_rcp_f32_e32 v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v89, v81, v83
	v_div_fixup_f32 v76, v84, v80, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v88, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v96, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v93, v90
	v_div_scale_f32 v89, s9, v65, v80, v65
	v_fmac_f32_e32 v87, v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v82, v85, v81
	v_fma_f32 v85, -v86, v83, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v72, v81, v80, v72
	v_fmac_f32_e32 v83, v85, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v86, v83, v93
	v_div_scale_f32 v86, s10, v62, v80, v62
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s11, v70, v80, v70
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v92, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v94, v91, v92
	v_fmac_f32_e32 v91, v88, v97
	v_div_scale_f32 v88, null, v80, v80, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v94, v91, v92
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v92, null, v80, v80, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v91, v89, v87
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v90, v83
	v_div_fixup_f32 v70, v82, v80, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v84, 1.0
	v_fma_f32 v82, -v96, v91, v89
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v68, v81, v80, v68
	v_div_scale_f32 v90, s8, v61, v80, v61
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v80, v80, v60
	v_fmac_f32_e32 v91, v82, v87
	v_fma_f32 v93, -v92, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v86, v84
	v_rcp_f32_e32 v83, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v96, v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v88, v82, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v87, v91
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v82, v89, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_scale_f32 v89, s9, v60, v80, v60
	v_div_fixup_f32 v65, v81, v80, v65
	v_fma_f32 v81, -v88, v82, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v88, null, v80, v80, v54
	v_div_scale_f32 v97, null, v80, v80, v46
	v_mul_f32_e32 v86, v89, v83
	v_div_fmas_f32 v81, v81, v84, v82
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v94, v86, v89
	v_fmac_f32_e32 v85, v93, v85
	v_div_scale_f32 v93, null, v80, v80, v59
	v_div_fixup_f32 v62, v81, v80, v62
	v_dual_fmac_f32 v86, v84, v83 :: v_dual_mul_f32 v95, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v96, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v94, v86, v89
	v_fma_f32 v87, -v92, v95, v90
	v_div_scale_f32 v89, null, v80, v80, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v95, v87, v85
	v_fma_f32 v91, -v93, v96, 1.0
	v_div_scale_f32 v87, s11, v59, v80, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v92, v95, v90
	v_fmac_f32_e32 v96, v91, v96
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v92, null, v80, v80, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v85, v95
	v_mul_f32_e32 v91, v87, v96
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v81, v81, v83, v86
	v_div_fixup_f32 v61, v82, v80, v61
	v_fma_f32 v85, -v93, v91, v87
	v_fma_f32 v95, -v88, v90, 1.0
	v_div_scale_f32 v82, s8, v54, v80, v54
	s_mov_b32 vcc_lo, s11
	v_dual_fmac_f32 v91, v85, v96 :: v_dual_fmac_f32 v90, v95, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_fixup_f32 v60, v81, v80, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v82, v90
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v87, s9, v53, v80, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v86, v82
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v94, v87, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v93, null, v80, v80, v50
	v_fmac_f32_e32 v86, v91, v90
	v_fma_f32 v81, -v92, v94, v87
	v_div_scale_f32 v91, null, v80, v80, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v82, -v88, v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v81, v84
	v_rcp_f32_e32 v88, v91
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v95, -v89, v85, 1.0
	v_div_fixup_f32 v59, v83, v80, v59
	v_div_fmas_f32 v82, v82, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, s10, v51, v80, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v54, v82, v80, v54
	v_div_fmas_f32 v84, v86, v84, v94
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v92, -v91, v88, 1.0
	v_fmac_f32_e32 v85, v95, v85
	v_fma_f32 v95, -v93, v96, 1.0
	v_div_fixup_f32 v53, v84, v80, v53
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s8, v48, v80, v48
	v_fmac_f32_e32 v96, v95, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v97, v86, 1.0
	v_div_scale_f32 v95, s11, v50, v80, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v86, v84, v86 :: v_dual_mul_f32 v81, v83, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v95, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v89, v81, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v87, v85
	v_fma_f32 v87, -v93, v90, v95
	v_fmac_f32_e32 v90, v87, v96
	v_div_scale_f32 v87, null, v73, v73, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v87
	v_fma_f32 v94, -v87, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v92, v88
	v_div_scale_f32 v89, s9, v46, v80, v46
	v_div_scale_f32 v94, null, v73, v73, v43
	v_div_fmas_f32 v81, v82, v85, v81
	v_fma_f32 v82, -v93, v90, v95
	v_fma_f32 v85, -v91, v83, v92
	v_div_scale_f32 v93, null, v73, v73, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v51, v81, v80, v51
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v85, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v85, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v91, v83, v92
	v_div_scale_f32 v91, s10, v45, v73, v45
	v_fma_f32 v92, -v93, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v92, v85
	v_div_fmas_f32 v82, v82, v96, v90
	v_mul_f32_e32 v90, v89, v86
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v73, v73, v42
	v_div_fixup_f32 v50, v82, v80, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v97, v90, v89
	v_div_fmas_f32 v81, v81, v88, v83
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v88, s8, v44, v73, v44
	v_fmac_f32_e32 v90, v82, v86
	v_mul_f32_e32 v82, v91, v84
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v48, v81, v80, v48
	v_mul_f32_e32 v95, v88, v85
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v86, v90
	v_fma_f32 v86, -v93, v95, v88
	v_fmac_f32_e32 v82, v89, v84
	v_div_scale_f32 v89, s9, v43, v73, v43
	v_fma_f32 v90, -v92, v96, 1.0
	v_fmac_f32_e32 v83, v97, v83
	v_div_fixup_f32 v46, v81, v80, v46
	v_fmac_f32_e32 v95, v86, v85
	v_fma_f32 v80, -v87, v82, v91
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v86, s11, v42, v73, v42
	v_mul_f32_e32 v81, v89, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v91, null, v73, v73, v40
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_mul_f32_e32 v90, v86, v96
	v_fma_f32 v84, -v94, v81, v89
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v87, null, v73, v73, v41
	v_div_fmas_f32 v82, v82, v85, v95
	v_fma_f32 v85, -v92, v90, v86
	v_fmac_f32_e32 v81, v84, v83
	v_rcp_f32_e32 v84, v91
	v_div_fixup_f32 v45, v80, v73, v45
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v90, v85, v96
	v_fma_f32 v80, -v94, v81, v89
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v89, null, v73, v73, v39
	v_div_fixup_f32 v44, v82, v73, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v85, -v91, v84, 1.0
	v_fma_f32 v81, -v92, v90, v86
	v_div_scale_f32 v92, null, v73, v73, v38
	v_div_scale_f32 v82, s8, v41, v73, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v87, v88, 1.0
	v_rcp_f32_e32 v95, v92
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v86, s9, v40, v73, v40
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v43, v80, v73, v43
	v_div_fmas_f32 v81, v81, v96, v90
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v96, null, v73, v73, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v89, v85, 1.0
	v_fmac_f32_e32 v88, v93, v88
	v_div_fixup_f32 v42, v81, v73, v42
	v_div_scale_f32 v81, s10, v39, v73, v39
	v_fmac_f32_e32 v85, v94, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v82, v88
	v_fma_f32 v94, -v92, v95, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v87, v83, v82
	v_fmac_f32_e32 v95, v94, v95
	v_mul_f32_e32 v93, v86, v84
	v_div_scale_f32 v94, s11, v38, v73, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v90, v88
	v_div_scale_f32 v90, null, v73, v73, v37
	v_fma_f32 v80, -v91, v93, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v87, v83, v82
	v_rcp_f32_e32 v87, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v93, v80, v84 :: v_dual_mul_f32 v80, v81, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v88, v83
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v88, v94, v95
	v_fma_f32 v83, -v91, v93, v86
	v_fma_f32 v86, -v89, v80, v81
	v_div_fixup_f32 v41, v82, v73, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v80, v86, v85
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v86, -v92, v88, v94
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v89, v80, v81
	v_div_fixup_f32 v40, v83, v73, v40
	v_div_scale_f32 v89, s9, v36, v73, v36
	v_fmac_f32_e32 v88, v86, v95
	v_div_scale_f32 v86, null, v73, v73, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v88, v94
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v92, null, v73, v73, v34
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_fmas_f32 v81, v81, v95, v88
	v_div_fixup_f32 v39, v80, v73, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v81, v73, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v86, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v93, v83
	v_dual_fmac_f32 v87, v91, v87 :: v_dual_mul_f32 v88, v89, v84
	v_div_scale_f32 v91, s8, v37, v73, v37
	v_div_scale_f32 v93, null, v73, v73, v33
	v_fma_f32 v81, -v96, v88, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v91, v87
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v85, -v90, v82, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v80, -v90, v82, v91
	v_div_scale_f32 v90, s10, v35, v73, v35
	v_fmac_f32_e32 v88, v81, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v80, v80, v87, v82
	v_fma_f32 v91, -v92, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v90, v83
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v87, s8, v34, v73, v34
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, null, v73, v73, v32
	v_div_fixup_f32 v37, v80, v73, v37
	v_fma_f32 v80, -v96, v88, v89
	v_fma_f32 v89, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v95, v91
	v_mul_f32_e32 v94, v87, v85
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v96, -v93, v82, 1.0
	v_div_fmas_f32 v80, v80, v84, v88
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v84, -v92, v94, v87
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v82, v96, v82
	v_div_fixup_f32 v36, v80, v73, v36
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v80, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	v_div_scale_f32 v88, s9, v33, v73, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v89, null, v73, v73, v31
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v86, s11, v32, v73, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v85, v94
	v_div_scale_f32 v92, null, v73, v73, v30
	v_mul_f32_e32 v90, v86, v95
	v_div_fixup_f32 v35, v80, v73, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v34, v81, v73, v34
	v_div_scale_f32 v81, s8, v31, v73, v31
	v_fma_f32 v94, -v89, v87, 1.0
	v_mul_f32_e32 v84, v88, v82
	v_fma_f32 v85, -v91, v90, v86
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_fmac_f32_e32 v90, v85, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v83, v82
	v_rcp_f32_e32 v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v92, v83, 1.0
	v_fmac_f32_e32 v83, v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v93, v84, v88
	v_div_scale_f32 v85, null, v47, v47, v29
	v_div_scale_f32 v93, null, v47, v47, v28
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v88, v85
	v_div_scale_f32 v86, s9, v30, v73, v30
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v89, v84, v81
	v_div_scale_f32 v95, null, v47, v47, v26
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v32, v82, v73, v32
	v_fmac_f32_e32 v84, v90, v87
	v_rcp_f32_e32 v97, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v88, 1.0
	v_rcp_f32_e32 v82, v93
	v_div_fixup_f32 v33, v80, v73, v33
	v_fma_f32 v81, -v89, v84, v81
	v_div_scale_f32 v89, null, v47, v47, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v87, v84
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, s8, v28, v47, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fixup_f32 v31, v81, v73, v31
	v_fma_f32 v81, -v95, v97, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v94, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v81, v97
	v_div_scale_f32 v81, s9, v26, v47, v26
	v_fmac_f32_e32 v88, v90, v88
	v_mul_f32_e32 v91, v86, v83
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v80, -v92, v91, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v91, v80, v83
	v_div_scale_f32 v80, s10, v29, v47, v29
	v_fma_f32 v84, -v92, v91, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v80, v88
	v_fma_f32 v92, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v83, v84, v83, v91
	v_fma_f32 v94, -v85, v86, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v27, v47, v27
	v_div_fixup_f32 v30, v83, v73, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v94, v88
	v_div_scale_f32 v83, null, v47, v47, v25
	v_mul_f32_e32 v91, v92, v90
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v85, v86, v80
	v_dual_mul_f32 v85, v81, v97 :: v_dual_mul_f32 v96, v87, v82
	v_fma_f32 v80, -v89, v91, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v88, v86
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v84, -v93, v96, v87
	v_fmac_f32_e32 v91, v80, v90
	v_rcp_f32_e32 v80, v83
	v_div_fixup_f32 v29, v73, v47, v29
	v_div_scale_f32 v86, null, v47, v47, v24
	v_fmac_f32_e32 v96, v84, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v93, v96, v87
	v_fma_f32 v87, -v83, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v84, v82, v96
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s8, v25, v47, v25
	v_fma_f32 v84, -v89, v91, v92
	v_fma_f32 v89, -v95, v85, v81
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v73, v87, v80
	v_div_fixup_f32 v28, v82, v47, v28
	v_fma_f32 v82, -v86, v88, 1.0
	v_fmac_f32_e32 v85, v89, v97
	v_fma_f32 v89, -v83, v73, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v95, v85, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v89, v80
	v_div_fmas_f32 v84, v84, v90, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v89, null, v47, v47, v22
	v_div_fmas_f32 v81, v81, v97, v85
	v_div_fixup_f32 v27, v84, v47, v27
	v_div_scale_f32 v84, null, v47, v47, v23
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v26, v81, v47, v26
	v_fma_f32 v81, -v83, v73, v87
	v_rcp_f32_e32 v90, v84
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v81, v80, v73
	v_div_scale_f32 v80, null, v47, v47, v21
	v_div_scale_f32 v81, s8, v23, v47, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v25, v73, v47, v25
	v_fma_f32 v87, -v84, v90, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v87, null, v47, v47, v20
	v_fmac_f32_e32 v91, v73, v91
	v_div_scale_f32 v73, s9, v22, v47, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v87
	v_fma_f32 v95, -v87, v93, 1.0
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v82, s10, v24, v47, v24
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v94, s10, v21, v47, v21
	v_mul_f32_e32 v85, v82, v88
	v_div_scale_f32 v95, s11, v20, v47, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v86, v85, v82
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v85, v82
	v_fma_f32 v92, -v80, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v92, null, v47, v47, v19
	v_dual_mul_f32 v97, v94, v83 :: v_dual_mul_f32 v86, v81, v90
	v_div_fmas_f32 v82, v82, v88, v85
	v_mul_f32_e32 v88, v73, v91
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v85, -v84, v86, v81
	v_div_fixup_f32 v24, v82, v47, v24
	v_fma_f32 v82, -v80, v97, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v90
	v_fma_f32 v85, -v89, v88, v73
	v_fmac_f32_e32 v97, v82, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v86, v81
	v_fmac_f32_e32 v88, v85, v91
	v_mul_f32_e32 v84, v95, v93
	v_fma_f32 v85, -v92, v96, 1.0
	v_fma_f32 v80, -v80, v97, v94
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v73, -v89, v88, v73
	v_div_scale_f32 v86, null, v47, v47, v11
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v82, -v87, v84, v95
	v_div_fmas_f32 v73, v73, v91, v88
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v23, v81, v47, v23
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v96, v85, v96
	v_div_scale_f32 v85, s8, v19, v47, v19
	v_div_fmas_f32 v80, v80, v83, v97
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v22, v73, v47, v22
	v_div_scale_f32 v90, null, v47, v47, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v86, v88, 1.0
	v_div_fixup_f32 v21, v80, v47, v21
	v_div_scale_f32 v80, null, v47, v47, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v81, v88
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	v_div_scale_f32 v81, null, v47, v47, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v87, v84, v95
	v_fma_f32 v87, -v92, v82, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v84
	v_fmac_f32_e32 v82, v87, v96
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v83, v47, v20
	v_div_scale_f32 v83, null, v47, v47, v7
	v_fma_f32 v73, -v92, v82, v85
	v_rcp_f32_e32 v85, v81
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v87, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v81, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v94, -v83, v87, 1.0
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s9, v8, v47, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v94, v87
	v_div_fmas_f32 v73, v73, v96, v82
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v84, vcc_lo, v11, v47, v11
	v_div_scale_f32 v94, s10, v7, v47, v7
	v_div_fixup_f32 v19, v73, v47, v19
	v_fma_f32 v96, -v90, v92, 1.0
	v_mul_f32_e32 v97, v91, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v80, v82, 1.0
	v_mul_f32_e32 v89, v84, v88
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s11, v5, v47, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v73, v82
	v_div_scale_f32 v73, s8, v10, v47, v10
	v_fma_f32 v93, -v86, v89, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v73, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v93, v88
	v_fma_f32 v93, -v80, v95, v73
	v_mul_f32_e32 v98, v94, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v86, v89, v84
	v_fma_f32 v86, -v81, v97, v91
	v_fmac_f32_e32 v95, v93, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v83, v98, v94
	v_mul_f32_e32 v99, v96, v92
	v_fmac_f32_e32 v97, v86, v85
	v_div_fmas_f32 v84, v84, v88, v89
	v_fma_f32 v73, -v80, v95, v73
	v_fmac_f32_e32 v98, v93, v87
	v_fma_f32 v80, -v90, v99, v96
	v_fma_f32 v81, -v81, v97, v91
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v11, v84, v47, v11
	v_div_fmas_f32 v73, v73, v82, v95
	v_fmac_f32_e32 v99, v80, v92
	v_fma_f32 v80, -v83, v98, v94
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s8, 0xc1000000
	v_div_fmas_f32 v81, v81, v85, v97
	v_fma_f32 v82, -v90, v99, v96
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v10, v73, v47, v10
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v8, v81, v47, v8
	v_div_fmas_f32 v82, v82, v92, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v80, v47, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v77, v77, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v82, v47, v5
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v49
	v_rndne_f32_e32 v49, v52
	v_rndne_f32_e32 v52, v55
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v69
	v_rndne_f32_e32 v69, v71
	v_rndne_f32_e32 v71, v74
	v_rndne_f32_e32 v73, v75
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v78, v48
	v_cvt_i32_f32_e32 v79, v46
	v_cvt_i32_f32_e32 v80, v45
	v_cvt_i32_f32_e32 v90, v35
	v_cvt_i32_f32_e32 v11, v11
	v_and_b32_e32 v35, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v77, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v105, v20
	v_cvt_i32_f32_e32 v106, v19
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v19, 15, v47
	v_and_b32_e32 v20, 15, v49
	v_and_b32_e32 v47, 15, v51
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v49, 15, v78
	v_and_b32_e32 v50, 15, v79
	v_and_b32_e32 v51, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v79, 0x1800, v77
	v_lshlrev_b32_e32 v80, 6, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v11, v15, v17
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v82, v43
	v_cvt_i32_f32_e32 v83, v42
	v_cvt_i32_f32_e32 v96, v29
	v_cvt_i32_f32_e32 v97, v28
	v_cvt_i32_f32_e32 v98, v27
	v_cvt_i32_f32_e32 v99, v26
	v_cvt_i32_f32_e32 v104, v21
	v_cvt_i32_f32_e32 v5, v5
	v_and_b32_e32 v21, 15, v52
	v_and_b32_e32 v52, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v17, 0, v79, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v7, 0x1b00, v15, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v88, v37
	v_cvt_i32_f32_e32 v89, v36
	v_cvt_i32_f32_e32 v91, v34
	v_cvt_i32_f32_e32 v86, v39
	v_cvt_i32_f32_e32 v87, v38
	v_cvt_i32_f32_e32 v95, v30
	v_cvt_i32_f32_e32 v100, v25
	v_cvt_i32_f32_e32 v101, v24
	v_cvt_i32_f32_e32 v102, v23
	v_cvt_i32_f32_e32 v103, v22
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v23, 15, v56
	v_and_b32_e32 v24, 15, v57
	v_and_b32_e32 v25, 15, v58
	v_and_b32_e32 v26, 15, v63
	v_and_b32_e32 v29, 15, v67
	v_and_b32_e32 v30, 15, v69
	v_and_b32_e32 v36, 15, v76
	v_and_b32_e32 v37, 15, v72
	v_and_b32_e32 v38, 15, v70
	v_and_b32_e32 v39, 15, v68
	v_and_b32_e32 v45, 15, v54
	v_and_b32_e32 v46, 15, v53
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v67, 15, v96
	v_and_b32_e32 v68, 15, v97
	v_and_b32_e32 v69, 15, v98
	v_and_b32_e32 v70, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v11, v17, v11, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v82, 15, v5
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v5, v7, v14, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v22, 15, v55
	v_cvt_i32_f32_e32 v84, v41
	v_cvt_i32_f32_e32 v92, v33
	v_cvt_i32_f32_e32 v93, v32
	v_cvt_i32_f32_e32 v94, v31
	v_and_b32_e32 v27, 15, v64
	v_and_b32_e32 v28, 15, v66
	v_and_b32_e32 v31, 15, v71
	v_and_b32_e32 v32, 15, v73
	v_and_b32_e32 v33, 15, v74
	v_and_b32_e32 v34, 15, v75
	v_and_b32_e32 v41, 15, v62
	v_and_b32_e32 v42, 15, v61
	v_and_b32_e32 v43, 15, v60
	v_and_b32_e32 v44, 15, v59
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v75, 15, v104
	v_and_b32_e32 v76, 15, v105
	v_and_b32_e32 v77, 15, v106
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_and_b32_e32 v79, 15, v10
	v_and_b32_e32 v80, 15, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v11, v[19:22]
	ds_store_b128 v11, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v5
	ds_load_b128 v[14:17], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[35:38]
	ds_store_b128 v11, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v5
	ds_load_b128 v[27:30], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[51:54]
	ds_store_b128 v11, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v5
	ds_load_b128 v[43:46], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[67:70]
	ds_store_b128 v11, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v5
	ds_load_b128 v[59:62], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[23:26]
	ds_store_b128 v11, v[31:34] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v5
	ds_load_b128 v[31:34], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v58, 15, v87
	v_cvt_i32_f32_e32 v85, v40
	v_and_b32_e32 v40, 15, v65
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[39:42]
	ds_store_b128 v11, v[47:50] offset:512
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v85
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v5
	ds_load_b128 v[47:50], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v63, 15, v92
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v65, 15, v94
	v_and_b32_e32 v66, 15, v95
	v_and_b32_e32 v71, 15, v100
	v_and_b32_e32 v72, 15, v101
	v_and_b32_e32 v73, 15, v102
	v_and_b32_e32 v74, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[55:58]
	ds_store_b128 v11, v[63:66] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v5
	ds_load_b128 v[63:66], v5 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v34, 4, v26
	v_lshl_or_b32 v34, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v13
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v16, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, s34, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v11, v[71:74]
	ds_store_b128 v11, v[79:82] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v5
	ds_load_b128 v[71:74], v5 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v5, s45, 7, v46
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v9
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v14, 4, v7
	v_lshl_or_b32 v8, v15, 4, v8
	v_lshl_or_b32 v17, v17, 4, v10
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v24, v32, 4, v24
	v_lshl_or_b32 v25, v33, 4, v25
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 16, v9
	v_add_nc_u32_e32 v15, 48, v9
	v_mad_u64_u32 v[9:10], null, v9, s8, v[5:6]
	v_mad_u64_u32 v[13:14], null, v13, s8, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v27, v47, 4, v39
	v_lshl_or_b32 v28, v48, 4, v40
	v_lshl_or_b32 v29, v49, 4, v41
	v_lshl_or_b32 v30, v50, 4, v42
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s8, v[5:6]
	v_mad_u64_u32 v[14:15], null, v15, s8, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v8.l
	v_and_b16 v5.h, 0xff, v7.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v7.l, 0xff, v25.l
	v_lshlrev_b16 v7.h, 8, v24.l
	v_and_b16 v8.l, 0xff, v23.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v43, 4, v35
	v_lshl_or_b32 v32, v44, 4, v36
	v_lshl_or_b32 v33, v45, 4, v37
	v_lshl_or_b32 v35, v63, 4, v55
	v_lshl_or_b32 v36, v64, 4, v56
	v_lshl_or_b32 v37, v65, 4, v57
	v_lshl_or_b32 v38, v66, 4, v58
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v5.h, v5.l
	v_or_b16 v16.h, v7.l, v6.l
	v_or_b16 v16.l, v8.l, v7.h
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	v_lshlrev_b16 v5.l, 8, v20.l
	v_and_b16 v5.h, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v30.l
	v_and_b16 v7.l, 0xff, v29.l
	v_lshlrev_b16 v7.h, 8, v28.l
	v_and_b16 v8.l, 0xff, v27.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v59, 4, v51
	v_lshl_or_b32 v40, v60, 4, v52
	v_lshl_or_b32 v41, v61, 4, v53
	v_lshl_or_b32 v42, v62, 4, v54
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v71, 4, v67
	v_lshl_or_b32 v44, v72, 4, v68
	v_lshl_or_b32 v45, v73, 4, v69
	v_lshl_or_b32 v47, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[15:16], v9, s[8:11], 0 offen
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v5.h, v5.l
	v_or_b16 v16.h, v7.l, v6.l
	v_or_b16 v16.l, v8.l, v7.h
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v34.l
	v_and_b16 v2.l, 0xff, v33.l
	v_lshlrev_b16 v5.l, 8, v32.l
	v_and_b16 v5.h, 0xff, v31.l
	v_lshlrev_b16 v6.l, 8, v38.l
	v_and_b16 v7.l, 0xff, v37.l
	v_lshlrev_b16 v7.h, 8, v36.l
	v_and_b16 v8.l, 0xff, v35.l
	buffer_store_b64 v[15:16], v9, s[8:11], 0 offen
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v5.h, v5.l
	v_or_b16 v10.h, v7.l, v6.l
	v_or_b16 v10.l, v8.l, v7.h
	v_lshlrev_b16 v1.l, 8, v42.l
	v_and_b16 v2.l, 0xff, v41.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v5.h, 0xff, v39.l
	v_lshlrev_b16 v6.l, 8, v47.l
	v_and_b16 v7.l, 0xff, v45.l
	v_lshlrev_b16 v7.h, 8, v44.l
	v_and_b16 v8.l, 0xff, v43.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_cndmask_b32_e32 v11, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.l, v5.h, v5.l
	v_or_b16 v16.h, v7.l, v6.l
	v_or_b16 v16.l, v8.l, v7.h
	v_cndmask_b32_e32 v5, 0x80000000, v14, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v12
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[9:10], v11, s[8:11], 0 offen
	buffer_store_b64 v[15:16], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v46
	v_mov_b16_e32 v2.l, v18.h
	v_mov_b16_e32 v1.l, v6.h
	v_add3_u32 v4, v4, v7, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s45, 1
	s_and_b32 vcc_lo, vcc_lo, s46
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 178
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 178
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14752
; TotalNumSgprs: 52
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 178
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
