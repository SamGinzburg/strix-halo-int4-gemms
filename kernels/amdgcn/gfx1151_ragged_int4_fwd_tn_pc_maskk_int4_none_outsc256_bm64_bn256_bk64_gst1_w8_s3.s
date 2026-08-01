	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
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
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s80, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s80, s3
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
	s_load_b64 s[74:75], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[76:77], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[78:79], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s5, s80, 8
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	v_or_b32_e32 v8, s5, v0
	s_mov_b32 s4, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s74, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s75, 0, s2
	v_add_nc_u32_e32 v65, s74, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[78:79], v[3:4]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v7, s5, v0
	v_dual_mov_b32 v6, s74 :: v_dual_add_nc_u32 v5, s74, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b128 s[36:39], s[0:1], 0x10
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v170, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v92, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_and_b32 s81, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s31, s[0:1], 0x50
	.loc	1 1068 35 is_stmt 1             ; ragged.py:1068:35
	s_mul_i32 s0, s73, s72
	v_lshrrev_b32_e32 v1, 1, v0
	v_mad_u64_u32 v[67:68], null, s0, s34, v[8:9]
	.loc	1 1058 13                       ; ragged.py:1058:13
	v_add_nc_u32_e32 v96, 0, v170
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v2, v8 :: v_dual_and_b32 v1, 0x70, v1
	v_or_b32_e32 v73, 0x3f0, v0
	v_or_b32_e32 v74, 0x7f0, v0
	v_or_b32_e32 v75, 0xb00, v0
	scratch_store_b64 off, v[2:3], off offset:60 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v97, v96, v1
	.loc	1 1058 19 is_stmt 0             ; ragged.py:1058:19
	v_mad_u64_u32 v[1:2], null, s72, 3, v[67:68]
	v_add_nc_u32_e32 v66, 0, v73
	v_or_b32_e32 v76, 0xf00, v0
	v_or_b32_e32 v77, 0x1300, v0
	v_or_b32_e32 v71, 0x300, v0
	v_or_b32_e32 v72, 0x700, v0
	v_or_b32_e32 v105, 0x1700, v0
	scratch_store_b64 off, v[1:2], off      ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s72, 5, v[67:68]
	v_mad_u64_u32 v[68:69], null, s72, 6, v[67:68]
	scratch_store_b32 off, v66, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v66, 0, v74
	v_or_b32_e32 v106, 0x1b00, v0
	v_or_b32_e32 v107, 0x1f00, v0
	scratch_store_b64 off, v[1:2], off offset:8 ; 8-byte Folded Spill
	v_mov_b32_e32 v1, 0
	scratch_store_b64 off, v[68:69], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s72, 7, v[67:68]
	scratch_store_b32 off, v66, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v66, 0, v75
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v6, 0
	scratch_store_b64 off, v[68:69], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[68:69], null, s72, 9, v[67:68]
	scratch_store_b32 off, v66, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v66, 0, v76
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v10, 0
	v_mad_u64_u32 v[73:74], null, s72, 10, v[67:68]
	v_mad_u64_u32 v[74:75], null, s72, 11, v[67:68]
	v_mad_u64_u32 v[75:76], null, s72, 12, v[67:68]
	scratch_store_b32 off, v66, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v66, 0, v77
	v_mad_u64_u32 v[76:77], null, s72, 13, v[67:68]
	v_mad_u64_u32 v[77:78], null, s72, 14, v[67:68]
	v_mad_u64_u32 v[78:79], null, s72, 15, v[67:68]
	v_mad_u64_u32 v[79:80], null, s72, 17, v[67:68]
	v_mad_u64_u32 v[80:81], null, s72, 18, v[67:68]
	v_mad_u64_u32 v[81:82], null, s72, 19, v[67:68]
	v_mad_u64_u32 v[82:83], null, s72, 20, v[67:68]
	v_mad_u64_u32 v[83:84], null, s72, 21, v[67:68]
	v_mad_u64_u32 v[84:85], null, s72, 22, v[67:68]
	v_mad_u64_u32 v[85:86], null, s72, 23, v[67:68]
	v_mad_u64_u32 v[86:87], null, s72, 24, v[67:68]
	v_mad_u64_u32 v[87:88], null, s72, 25, v[67:68]
	v_mad_u64_u32 v[88:89], null, s72, 26, v[67:68]
	v_mad_u64_u32 v[89:90], null, s72, 27, v[67:68]
	v_mad_u64_u32 v[90:91], null, s72, 28, v[67:68]
	v_mad_u64_u32 v[91:92], null, s72, 29, v[67:68]
	v_mad_u64_u32 v[92:93], null, s72, 30, v[67:68]
	v_mad_u64_u32 v[93:94], null, s72, 31, v[67:68]
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
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
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_add_nc_u32_e32 v98, 0, v71
	v_add_nc_u32_e32 v99, 0, v72
	v_add_nc_u32_e32 v94, 0, v105
	v_add_nc_u32_e32 v105, 0, v106
	v_add_nc_u32_e32 v106, 0, v107
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	.loc	1 1058 13                       ; ragged.py:1058:13
	s_mov_b32 s33, 0
	s_and_b32 s45, s7, 0xffff
	s_mov_b32 s40, s4
	s_mov_b32 s41, s5
	s_mov_b32 s44, s6
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v66, off offset:32
	scratch_store_b64 off, v[68:69], off offset:52
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19                          ; ragged.py:0:19
	scratch_load_b64 v[68:69], off, off     ; 8-byte Folded Reload
	.loc	1 1068 65 is_stmt 1             ; ragged.py:1068:65
	s_mul_i32 s35, s33, s72
	.loc	1 1059 22                       ; ragged.py:1059:22
	s_or_b32 s8, s33, 1
	s_or_b32 s0, s33, 2
	s_or_b32 s1, s33, 3
	s_or_b32 s4, s33, 4
	s_or_b32 s5, s33, 5
	s_or_b32 s3, s33, 6
	s_or_b32 s2, s33, 7
	s_or_b32 s6, s33, 8
	s_or_b32 s7, s33, 9
	s_or_b32 s9, s33, 10
	s_or_b32 s10, s33, 11
	s_or_b32 s11, s33, 12
	s_or_b32 s12, s33, 13
	s_or_b32 s13, s33, 14
	s_or_b32 s14, s33, 15
	s_or_b32 s15, s33, 16
	s_or_b32 s16, s33, 17
	s_or_b32 s17, s33, 18
	s_or_b32 s18, s33, 19
	s_or_b32 s19, s33, 20
	s_or_b32 s20, s33, 21
	s_or_b32 s21, s33, 22
	s_or_b32 s22, s33, 23
	s_or_b32 s23, s33, 24
	s_or_b32 s24, s33, 25
	s_or_b32 s25, s33, 26
	s_or_b32 s26, s33, 27
	s_or_b32 s27, s33, 28
	s_or_b32 s28, s33, 29
	s_or_b32 s29, s33, 30
	s_or_b32 s30, s33, 31
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cmp_lt_i32 s8, s73
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v107, s72, v67
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s0, s73
	v_add_nc_u32_e32 v119, s35, v73
	s_cselect_b32 s0, -1, 0
	s_cmp_lt_i32 s1, s73
	v_add_nc_u32_e32 v109, s35, v107
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s4, s73
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v107, 6, v0
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s5, s73
	v_add_nc_u32_e32 v120, s35, v74
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s3, s73
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v110, s33, v107
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s2, s73
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v107, s72, 1, v67
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s6, s73
	v_cmp_gt_i32_e64 s8, s73, v110
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s7, s73
	v_add_nc_u32_e32 v111, s35, v107
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s9, s73
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v107, s72, 2, v67
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s73
	v_add_nc_u32_e32 v121, s35, v75
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s11, s73
	v_add_nc_u32_e32 v113, s35, v107
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s12, s73
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v107, s72, 3, v67
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s73
	v_add_nc_u32_e32 v122, s35, v76
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s73
	v_add_nc_u32_e32 v117, s35, v107
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s73
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v107, s72, 4, v67
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s73
	v_add_nc_u32_e32 v123, s35, v77
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s73
	v_add_nc_u32_e32 v125, s35, v107
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s73
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v110, s31, v[65:66]
	.loc	1 1060 27                       ; ragged.py:1060:27
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s73
	v_add_nc_u32_e32 v124, s35, v78
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s73
	v_add_nc_u32_e32 v126, s35, v79
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s73
	v_add_nc_u32_e32 v127, s35, v80
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s73
	v_add_nc_u32_e32 v128, s35, v81
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s73
	v_add_nc_u32_e32 v129, s35, v82
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s73
	v_add_nc_u32_e32 v130, s35, v83
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s25, s73
	v_add_nc_u32_e32 v131, s35, v84
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s73
	v_add_nc_u32_e32 v132, s35, v85
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s73
	v_add_nc_u32_e32 v133, s35, v86
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s28, s73
	v_add_nc_u32_e32 v134, s35, v87
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s29, s73
	v_add_nc_u32_e32 v135, s35, v88
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s30, s73
	v_add_nc_u32_e32 v136, s35, v89
	s_cselect_b32 s30, -1, 0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	v_add_nc_u32_e32 v137, s35, v90
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v141, 0x80000000, v107, s8
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v107, 4, v110
	v_add_nc_u32_e32 v138, s35, v91
	v_add_nc_u32_e32 v139, s35, v92
	v_add_nc_u32_e32 v140, s35, v93
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s33, s33, 32
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s73, v107
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v107, s31, v[65:66]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_add_nc_u32_e32 v253, 0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v142, 0x80000000, v107, s8
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v107, 8, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s73, v107
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v107, s31, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v143, 0x80000000, v107, s8
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v107, 12, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s73, v107
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v107, s31, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v144, 0x80000000, v107, s8
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v107, 16, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s73, v107
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v107, s31, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v145, 0x80000000, v107, s8
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v107, 20, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s73, v107
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v107, s31, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v146, 0x80000000, v107, s8
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v107, 24, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s73, v107
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v107, s31, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v147, 0x80000000, v107, s8
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_or_b32_e32 v107, 28, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s8, s73, v107
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[107:108], null, v107, s31, v[65:66]
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v108, s35, v67
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s8, s81, s8
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s33, s73
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v221, v108, s[44:47], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v107, 0x80000000, v107, s8
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v112, s35, v68
	scratch_load_b64 v[68:69], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v110, 0x80000000, v112, s1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v114, s35, v68
	scratch_load_b64 v[68:69], off, off offset:36 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v112, 0x80000000, v114, s5
	buffer_load_u8 v226, v112, s[44:47], 0 offen
	v_cndmask_b32_e32 v108, 0x80000000, v109, vcc_lo
	v_cndmask_b32_e64 v109, 0x80000000, v111, s0
	v_cndmask_b32_e64 v111, 0x80000000, v113, s4
	s_clause 0x2
	buffer_load_u8 v222, v108, s[44:47], 0 offen
	buffer_load_u8 v223, v109, s[44:47], 0 offen
	buffer_load_u8 v224, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v117, s6
	s_clause 0x1
	buffer_load_u8 v225, v111, s[44:47], 0 offen
	buffer_load_u8 v229, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v120, s10
	buffer_load_u8 v232, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v123, s13
	buffer_load_u8 v235, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v126, s16
	buffer_load_u8 v238, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v129, s19
	buffer_load_u8 v241, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v132, s22
	buffer_load_u8 v244, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v135, s25
	buffer_load_u8 v247, v110, s[44:47], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v138, s28
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v115, s35, v68
	scratch_load_b64 v[68:69], off, off offset:44 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v108, 0x80000000, v115, s3
	buffer_load_u8 v227, v108, s[44:47], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v116, s35, v68
	scratch_load_b64 v[68:69], off, off offset:52 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v109, 0x80000000, v116, s2
	buffer_load_u8 v228, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v119, s9
	buffer_load_u8 v231, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v122, s12
	buffer_load_u8 v234, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v125, s15
	buffer_load_u8 v237, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v128, s18
	buffer_load_u8 v240, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v131, s21
	buffer_load_u8 v243, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v134, s24
	buffer_load_u8 v246, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v137, s27
	buffer_load_u8 v249, v109, s[44:47], 0 offen
	v_cndmask_b32_e64 v109, 0x80000000, v140, s30
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v118, s35, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v108, 0x80000000, v118, s7
	buffer_load_u8 v230, v108, s[44:47], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v121, s11
	buffer_load_u8 v233, v108, s[44:47], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v124, s14
	buffer_load_u8 v236, v108, s[44:47], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v127, s17
	buffer_load_u8 v239, v108, s[44:47], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v130, s20
	buffer_load_u8 v242, v108, s[44:47], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v133, s23
	buffer_load_u8 v245, v108, s[44:47], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v136, s26
	buffer_load_u8 v248, v108, s[44:47], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v139, s29
	s_clause 0x1
	buffer_load_u8 v250, v110, s[44:47], 0 offen
	buffer_load_u8 v251, v108, s[44:47], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v108, v141, s[40:43], 0 offen
	buffer_load_u8 v110, v142, s[40:43], 0 offen
	buffer_load_u8 v111, v143, s[40:43], 0 offen
	buffer_load_u8 v112, v145, s[40:43], 0 offen
	buffer_load_u8 v113, v146, s[40:43], 0 offen
	buffer_load_u8 v114, v147, s[40:43], 0 offen
	buffer_load_u8 v107, v107, s[40:43], 0 offen
	buffer_load_u8 v115, v144, s[40:43], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v252, v109, s[44:47], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b8 v253, v108
	s_waitcnt vmcnt(7)
	ds_store_b8 v253, v110 offset:256
	s_waitcnt vmcnt(6)
	ds_store_b8 v253, v111 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v253, v112 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v253, v113 offset:1280
	s_waitcnt vmcnt(1)
	ds_store_b8 v98, v115
	ds_store_b8 v253, v114 offset:1536
	ds_store_b8 v99, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v107, off, off offset:16 ; 4-byte Folded Reload
	ds_load_u8 v254, v96 offset:192
	ds_load_u8 v255, v96 offset:128
	ds_load_u8 v215, v96 offset:208
	ds_load_u8 v217, v96 offset:144
	ds_load_u8 v211, v96 offset:224
	ds_load_u8 v212, v96 offset:160
	ds_load_u8 v203, v96 offset:240
	ds_load_u8 v204, v96 offset:176
	ds_load_u8 v95, v96 offset:448
	ds_load_u8 v66, v96 offset:384
	ds_load_u8 v68, v96 offset:464
	ds_load_u8 v69, v96 offset:400
	ds_load_u8 v213, v96 offset:480
	ds_load_u8 v214, v96 offset:416
	ds_load_u8 v205, v96 offset:496
	ds_load_u8 v206, v96 offset:432
	ds_load_u8 v100, v96 offset:320
	ds_load_u8 v101, v96 offset:256
	ds_load_u8 v102, v96 offset:336
	ds_load_u8 v103, v96 offset:272
	ds_load_u8 v216, v96 offset:352
	ds_load_u8 v218, v96 offset:288
	ds_load_u8 v207, v96 offset:368
	ds_load_u8 v208, v96 offset:304
	ds_load_u8 v104, v96 offset:64
	ds_load_u8 v70, v96 offset:80
	ds_load_u8 v219, v96 offset:96
	ds_load_u8 v209, v96 offset:112
	ds_load_u8 v71, v96
	ds_load_u8 v72, v96 offset:16
	ds_load_u8 v220, v96 offset:32
	ds_load_u8 v210, v96 offset:48
	ds_load_u8 v195, v96 offset:960
	ds_load_u8 v196, v96 offset:896
	ds_load_u8 v163, v96 offset:1024
	ds_load_u8 v168, v96 offset:976
	ds_load_u8 v171, v96 offset:912
	ds_load_u8 v165, v96 offset:992
	ds_load_u8 v166, v96 offset:928
	ds_load_u8 v164, v96 offset:944
	ds_load_u8 v197, v96 offset:832
	ds_load_u8 v198, v96 offset:768
	ds_load_u8 v177, v96 offset:848
	ds_load_u8 v179, v96 offset:784
	ds_load_u8 v173, v96 offset:864
	ds_load_u8 v174, v96 offset:800
	ds_load_u8 v167, v96 offset:880
	ds_load_u8 v169, v96 offset:816
	ds_load_u8 v199, v96 offset:704
	ds_load_u8 v200, v96 offset:640
	ds_load_u8 v183, v96 offset:720
	ds_load_u8 v184, v96 offset:656
	ds_load_u8 v180, v96 offset:736
	ds_load_u8 v182, v96 offset:672
	ds_load_u8 v175, v96 offset:752
	ds_load_u8 v178, v96 offset:688
	ds_load_u8 v201, v96 offset:576
	ds_load_u8 v202, v96 offset:512
	ds_load_u8 v190, v96 offset:592
	ds_load_u8 v191, v96 offset:528
	ds_load_u8 v188, v96 offset:608
	ds_load_u8 v189, v96 offset:544
	ds_load_u8 v185, v96 offset:624
	ds_load_u8 v186, v96 offset:560
	ds_load_u8 v170, v96 offset:1216
	ds_load_u8 v172, v96 offset:1280
	ds_load_u8 v136, v96 offset:1232
	ds_load_u8 v137, v96 offset:1168
	ds_load_u8 v134, v96 offset:1248
	ds_load_u8 v135, v96 offset:1184
	ds_load_u8 v132, v96 offset:1264
	ds_load_u8 v133, v96 offset:1200
	ds_load_u8 v176, v96 offset:1152
	ds_load_u8 v181, v96 offset:1088
	ds_load_u8 v143, v96 offset:1104
	ds_load_u8 v144, v96 offset:1040
	ds_load_u8 v141, v96 offset:1120
	ds_load_u8 v142, v96 offset:1056
	ds_load_u8 v138, v96 offset:1136
	ds_load_u8 v139, v96 offset:1072
	ds_load_u8 v187, v96 offset:1472
	ds_load_u8 v131, v96 offset:1536
	ds_load_u8 v151, v96 offset:1488
	ds_load_u8 v153, v96 offset:1424
	ds_load_u8 v148, v96 offset:1504
	ds_load_u8 v150, v96 offset:1440
	ds_load_u8 v145, v96 offset:1520
	ds_load_u8 v146, v96 offset:1456
	ds_load_u8 v192, v96 offset:1408
	ds_load_u8 v193, v96 offset:1344
	ds_load_u8 v160, v96 offset:1360
	ds_load_u8 v161, v96 offset:1296
	ds_load_u8 v157, v96 offset:1376
	ds_load_u8 v158, v96 offset:1312
	ds_load_u8 v154, v96 offset:1392
	ds_load_u8 v155, v96 offset:1328
	ds_load_u8 v140, v96 offset:1984
	ds_load_u8 v111, v96 offset:2000
	ds_load_u8 v113, v96 offset:1936
	ds_load_u8 v109, v96 offset:2016
	ds_load_u8 v110, v96 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v66, v66, v95, 0xc0c0004
	v_perm_b32 v71, v71, v104, 0xc0c0004
	v_perm_b32 v95, v255, v254, 0xc0c0004
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_perm_b32 v69, v72, v70, 0xc0c0004
	v_perm_b32 v70, v217, v215, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v194, v107
	scratch_load_b32 v107, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v107, v107
	ds_load_u8 v108, v96 offset:1968
	ds_load_u8 v147, v96 offset:1920
	ds_load_u8 v149, v96 offset:1856
	ds_load_u8 v118, v96 offset:1872
	ds_load_u8 v120, v96 offset:1808
	ds_load_u8 v115, v96 offset:1888
	ds_load_u8 v116, v96 offset:1824
	ds_load_u8 v112, v96 offset:1904
	ds_load_u8 v114, v96 offset:1840
	ds_load_u8 v152, v96 offset:1728
	ds_load_u8 v156, v96 offset:1792
	ds_load_u8 v123, v96 offset:1744
	ds_load_u8 v124, v96 offset:1680
	ds_load_u8 v121, v96 offset:1760
	ds_load_u8 v122, v96 offset:1696
	ds_load_u8 v117, v96 offset:1776
	ds_load_u8 v119, v96 offset:1712
	ds_load_u8 v159, v96 offset:1664
	ds_load_u8 v162, v96 offset:1600
	ds_load_u8 v129, v96 offset:1616
	ds_load_u8 v130, v96 offset:1552
	ds_load_u8 v127, v96 offset:1632
	ds_load_u8 v128, v96 offset:1568
	ds_load_u8 v125, v96 offset:1648
	ds_load_u8 v126, v96 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v253, v221
	ds_store_b8 v253, v222 offset:256
	ds_store_b8 v253, v223 offset:512
	ds_store_b8 v253, v225 offset:1024
	ds_store_b8 v253, v226 offset:1280
	ds_store_b8 v253, v227 offset:1536
	ds_store_b8 v253, v229 offset:2048
	ds_store_b8 v253, v230 offset:2304
	ds_store_b8 v253, v231 offset:2560
	ds_store_b8 v253, v233 offset:3072
	ds_store_b8 v253, v234 offset:3328
	ds_store_b8 v253, v235 offset:3584
	ds_store_b8 v253, v237 offset:4096
	ds_store_b8 v253, v238 offset:4352
	ds_store_b8 v253, v239 offset:4608
	ds_store_b8 v253, v241 offset:5120
	ds_store_b8 v253, v242 offset:5376
	ds_store_b8 v253, v243 offset:5632
	ds_store_b8 v253, v245 offset:6144
	ds_store_b8 v253, v246 offset:6400
	ds_store_b8 v253, v247 offset:6656
	ds_store_b8 v253, v249 offset:7168
	ds_store_b8 v253, v250 offset:7424
	ds_store_b8 v253, v251 offset:7680
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v222, v66, 16, v100
	.loc	1 1070 30                       ; ragged.py:1070:30
	scratch_load_b32 v66, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v221, v95, 16, v71
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_store_b8 v98, v224
	ds_store_b8 v99, v228
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v232
	scratch_load_b32 v66, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v236
	scratch_load_b32 v66, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v66, v240
	ds_store_b8 v94, v244
	ds_store_b8 v105, v248
	ds_store_b8 v106, v252
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v66, v97 offset:1280
	ds_load_u8 v71, v97 offset:1024
	ds_load_u8 v95, v97 offset:1920
	ds_load_u8 v100, v97 offset:1664
	ds_load_u8 v101, v97 offset:1408
	ds_load_u8 v104, v97 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v97 offset:1792
	ds_load_u8 v223, v97 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v223, v71, 0xc0c0004
	ds_load_u8 v223, v97 offset:256
	ds_load_u8 v224, v97
	ds_load_u8 v225, v97 offset:896
	ds_load_u8 v226, v97 offset:640
	ds_load_u8 v227, v97 offset:384
	ds_load_u8 v228, v97 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	ds_load_u8 v224, v97 offset:768
	ds_load_u8 v229, v97 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v229, v224, 0xc0c0004
	v_lshl_or_b32 v224, v71, 16, v66
	v_perm_b32 v66, v104, v101, 0xc0c0004
	v_perm_b32 v71, v100, v95, 0xc0c0004
	v_perm_b32 v100, v226, v225, 0xc0c0004
	v_perm_b32 v95, v228, v227, 0xc0c0004
	v_lshl_or_b32 v227, v70, 16, v69
	v_perm_b32 v69, v220, v219, 0xc0c0004
	v_lshl_or_b32 v226, v71, 16, v66
	v_perm_b32 v66, v103, v102, 0xc0c0004
	v_perm_b32 v70, v212, v211, 0xc0c0004
	v_lshl_or_b32 v225, v100, 16, v95
	v_lshl_or_b32 v223, v229, 16, v223
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v228, v68, 16, v66
	v_perm_b32 v66, v218, v216, 0xc0c0004
	v_perm_b32 v68, v214, v213, 0xc0c0004
	v_lshl_or_b32 v211, v70, 16, v69
	v_perm_b32 v69, v210, v209, 0xc0c0004
	v_perm_b32 v70, v204, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[223:224], v[227:228], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v212, v68, 16, v66
	v_perm_b32 v66, v208, v207, 0xc0c0004
	v_perm_b32 v68, v206, v205, 0xc0c0004
	v_lshl_or_b32 v203, v70, 16, v69
	v_perm_b32 v69, v202, v201, 0xc0c0004
	v_perm_b32 v70, v200, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[223:224], v[211:212], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v68, 16, v66
	v_perm_b32 v66, v198, v197, 0xc0c0004
	v_perm_b32 v68, v196, v195, 0xc0c0004
	v_lshl_or_b32 v195, v70, 16, v69
	v_wmma_i32_16x16x16_iu4 v[41:48], v[225:226], v[211:212], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[223:224], v[203:204], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[225:226], v[203:204], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v68, 16, v66
	ds_load_u8 v66, v97 offset:3328
	ds_load_u8 v68, v97 offset:3072
	ds_load_u8 v69, v97 offset:3968
	ds_load_u8 v70, v97 offset:3712
	ds_load_u8 v71, v97 offset:3456
	ds_load_u8 v72, v97 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[225:226], v[227:228], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[223:224], v[221:222], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[225:226], v[221:222], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v97 offset:3840
	ds_load_u8 v95, v97 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v95, v68, 0xc0c0004
	ds_load_u8 v95, v97 offset:2304
	ds_load_u8 v100, v97 offset:2048
	ds_load_u8 v101, v97 offset:2944
	ds_load_u8 v102, v97 offset:2688
	ds_load_u8 v103, v97 offset:2432
	ds_load_u8 v104, v97 offset:2176
	v_lshl_or_b32 v198, v68, 16, v66
	v_perm_b32 v66, v72, v71, 0xc0c0004
	v_perm_b32 v68, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v68, 16, v66
	v_perm_b32 v66, v179, v177, 0xc0c0004
	v_perm_b32 v68, v171, v168, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v100, v95, 0xc0c0004
	ds_load_u8 v100, v97 offset:2816
	ds_load_u8 v197, v97 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v70, 16, v69
	v_perm_b32 v69, v191, v190, 0xc0c0004
	v_perm_b32 v70, v184, v183, 0xc0c0004
	v_lshl_or_b32 v184, v68, 16, v66
	v_perm_b32 v66, v174, v173, 0xc0c0004
	v_perm_b32 v68, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[199:200], v[195:196], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v183, v70, 16, v69
	v_perm_b32 v69, v189, v188, 0xc0c0004
	v_perm_b32 v70, v182, v180, 0xc0c0004
	v_lshl_or_b32 v166, v68, 16, v66
	v_perm_b32 v66, v186, v185, 0xc0c0004
	v_perm_b32 v68, v178, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v197, v100, 0xc0c0004
	v_lshl_or_b32 v165, v70, 16, v69
	v_perm_b32 v69, v169, v167, 0xc0c0004
	v_perm_b32 v70, v164, v194, 0xc0c0004
	v_lshl_or_b32 v167, v68, 16, v66
	v_perm_b32 v66, v172, v193, 0xc0c0004
	v_perm_b32 v68, v192, v187, 0xc0c0004
	v_lshl_or_b32 v197, v100, 16, v95
	v_lshl_or_b32 v168, v70, 16, v69
	v_perm_b32 v69, v163, v181, 0xc0c0004
	v_perm_b32 v70, v176, v170, 0xc0c0004
	v_lshl_or_b32 v164, v68, 16, v66
	v_wmma_i32_16x16x16_iu4 v[33:40], v[197:198], v[165:166], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[199:200], v[165:166], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[197:198], v[167:168], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v70, 16, v69
	ds_load_u8 v66, v97 offset:5376
	ds_load_u8 v68, v97 offset:5120
	ds_load_u8 v69, v97 offset:6016
	ds_load_u8 v70, v97 offset:5760
	ds_load_u8 v71, v97 offset:5504
	ds_load_u8 v72, v97 offset:5248
	v_wmma_i32_16x16x16_iu4 v[57:64], v[199:200], v[167:168], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[197:198], v[183:184], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[199:200], v[183:184], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[197:198], v[195:196], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v97 offset:5888
	ds_load_u8 v95, v97 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v95, v68, 0xc0c0004
	ds_load_u8 v95, v97 offset:4352
	ds_load_u8 v100, v97 offset:4096
	ds_load_u8 v101, v97 offset:4992
	ds_load_u8 v102, v97 offset:4736
	ds_load_u8 v103, v97 offset:4480
	ds_load_u8 v104, v97 offset:4224
	v_lshl_or_b32 v166, v68, 16, v66
	v_perm_b32 v66, v72, v71, 0xc0c0004
	v_perm_b32 v68, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v68, 16, v66
	v_perm_b32 v66, v161, v160, 0xc0c0004
	v_perm_b32 v68, v153, v151, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v100, v95, 0xc0c0004
	ds_load_u8 v100, v97 offset:4864
	ds_load_u8 v165, v97 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v70, 16, v69
	v_perm_b32 v69, v144, v143, 0xc0c0004
	v_perm_b32 v70, v137, v136, 0xc0c0004
	v_lshl_or_b32 v137, v68, 16, v66
	v_perm_b32 v66, v158, v157, 0xc0c0004
	v_perm_b32 v68, v150, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[167:168], v[163:164], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v70, 16, v69
	v_perm_b32 v69, v142, v141, 0xc0c0004
	v_perm_b32 v70, v135, v134, 0xc0c0004
	v_lshl_or_b32 v135, v68, 16, v66
	v_perm_b32 v66, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v165, v100, 0xc0c0004
	v_perm_b32 v68, v146, v145, 0xc0c0004
	v_lshl_or_b32 v134, v70, 16, v69
	v_perm_b32 v69, v139, v138, 0xc0c0004
	v_perm_b32 v70, v133, v132, 0xc0c0004
	v_lshl_or_b32 v165, v100, 16, v95
	v_lshl_or_b32 v133, v68, 16, v66
	v_perm_b32 v66, v156, v149, 0xc0c0004
	v_perm_b32 v68, v147, v140, 0xc0c0004
	v_lshl_or_b32 v132, v70, 16, v69
	v_perm_b32 v69, v131, v162, 0xc0c0004
	v_perm_b32 v70, v159, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[165:166], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[167:168], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[165:166], v[132:133], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[167:168], v[132:133], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v68, 16, v66
	v_lshl_or_b32 v131, v70, 16, v69
	ds_load_u8 v66, v97 offset:7424
	ds_load_u8 v68, v97 offset:7168
	ds_load_u8 v69, v97 offset:8064
	ds_load_u8 v70, v97 offset:7808
	ds_load_u8 v71, v97 offset:7552
	ds_load_u8 v72, v97 offset:7296
	v_wmma_i32_16x16x16_iu4 v[17:24], v[165:166], v[136:137], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[167:168], v[136:137], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[165:166], v[163:164], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v97 offset:7936
	ds_load_u8 v95, v97 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v95, v68, 0xc0c0004
	ds_load_u8 v95, v97 offset:6400
	ds_load_u8 v100, v97 offset:6144
	ds_load_u8 v101, v97 offset:7040
	ds_load_u8 v102, v97 offset:6784
	ds_load_u8 v103, v97 offset:6528
	ds_load_u8 v104, v97 offset:6272
	v_lshl_or_b32 v134, v68, 16, v66
	v_perm_b32 v66, v72, v71, 0xc0c0004
	v_perm_b32 v68, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v68, 16, v66
	v_perm_b32 v66, v120, v118, 0xc0c0004
	v_perm_b32 v68, v113, v111, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v100, v95, 0xc0c0004
	ds_load_u8 v100, v97 offset:6912
	ds_load_u8 v133, v97 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v70, 16, v69
	v_perm_b32 v69, v130, v129, 0xc0c0004
	v_perm_b32 v70, v124, v123, 0xc0c0004
	v_lshl_or_b32 v124, v68, 16, v66
	v_perm_b32 v66, v116, v115, 0xc0c0004
	v_perm_b32 v68, v110, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v123, v70, 16, v69
	v_perm_b32 v69, v128, v127, 0xc0c0004
	v_perm_b32 v70, v122, v121, 0xc0c0004
	v_lshl_or_b32 v110, v68, 16, v66
	v_perm_b32 v66, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v133, v100, 0xc0c0004
	v_perm_b32 v68, v119, v117, 0xc0c0004
	v_lshl_or_b32 v109, v70, 16, v69
	v_perm_b32 v69, v114, v112, 0xc0c0004
	v_perm_b32 v70, v108, v107, 0xc0c0004
	v_lshl_or_b32 v133, v100, 16, v95
	v_lshl_or_b32 v107, v68, 16, v66
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[123:124], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[135:136], v[109:110], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v70, 16, v69
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[109:110], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[133:134], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[135:136], v[107:108], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v85, v7
	v_cvt_f32_i32_e32 v84, v8
	scratch_load_b64 v[7:8], off, off offset:60 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v83, v1
	v_cvt_f32_i32_e32 v81, v2
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v79, v4
	v_cvt_f32_i32_e32 v87, v5
	v_cvt_f32_i32_e32 v86, v6
	v_cvt_f32_i32_e32 v92, v9
	v_cvt_f32_i32_e32 v76, v10
	v_cvt_f32_i32_e32 v74, v11
	v_cvt_f32_i32_e32 v73, v12
	v_cvt_f32_i32_e32 v72, v13
	v_cvt_f32_i32_e32 v96, v14
	v_cvt_f32_i32_e32 v94, v15
	v_cvt_f32_i32_e32 v93, v16
	v_cvt_f32_i32_e32 v71, v17
	v_cvt_f32_i32_e32 v70, v18
	v_cvt_f32_i32_e32 v68, v19
	v_cvt_f32_i32_e32 v69, v20
	v_cvt_f32_i32_e32 v82, v21
	v_cvt_f32_i32_e32 v80, v22
	v_cvt_f32_i32_e32 v78, v23
	v_cvt_f32_i32_e32 v75, v24
	v_cvt_f32_i32_e32 v88, v25
	v_cvt_f32_i32_e32 v67, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v25, v28
	v_cvt_f32_i32_e32 v23, v29
	v_cvt_f32_i32_e32 v91, v30
	v_cvt_f32_i32_e32 v90, v31
	v_cvt_f32_i32_e32 v89, v32
	v_cvt_f32_i32_e32 v26, v33
	v_cvt_f32_i32_e32 v24, v34
	v_cvt_f32_i32_e32 v21, v35
	v_cvt_f32_i32_e32 v22, v36
	v_cvt_f32_i32_e32 v31, v37
	v_cvt_f32_i32_e32 v30, v38
	v_cvt_f32_i32_e32 v29, v39
	v_cvt_f32_i32_e32 v28, v40
	v_cvt_f32_i32_e32 v36, v41
	v_cvt_f32_i32_e32 v20, v42
	v_cvt_f32_i32_e32 v19, v43
	v_cvt_f32_i32_e32 v17, v44
	v_cvt_f32_i32_e32 v15, v45
	v_cvt_f32_i32_e32 v39, v46
	v_cvt_f32_i32_e32 v38, v47
	v_cvt_f32_i32_e32 v37, v48
	v_cvt_f32_i32_e32 v18, v49
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v13, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v35, v53
	v_cvt_f32_i32_e32 v34, v54
	v_cvt_f32_i32_e32 v33, v55
	v_cvt_f32_i32_e32 v32, v56
	v_cvt_f32_i32_e32 v40, v57
	v_cvt_f32_i32_e32 v4, v58
	v_cvt_f32_i32_e32 v3, v59
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v1, v61
	v_cvt_f32_i32_e32 v43, v62
	v_cvt_f32_i32_e32 v42, v63
	v_cvt_f32_i32_e32 v41, v64
	v_dual_mov_b32 v6, s74 :: v_dual_mov_b32 v5, v65
	v_and_b32_e32 v170, 15, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v8, 48, v170
	v_or_b32_e32 v10, 32, v170
	v_or_b32_e32 v11, 16, v170
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s37, 0xffff
	s_mov_b32 s71, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s0, s74, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s75, 0, s0
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s68, s36
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[8:9]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s1, s74, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s75, 0, s1
	v_add_co_u32 v11, s1, s74, v11
	v_add_co_ci_u32_e64 v12, null, s75, 0, s1
	v_add_co_u32 v44, s1, s74, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v45, null, s75, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[76:77], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[78:79], v[11:12]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[9:10]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[76:77], v[44:45]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[78:79], v[44:45]
	v_cmp_gt_i64_e64 s2, s[78:79], v[9:10]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v10, 1, v44
	v_lshlrev_b32_e32 v8, 1, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	s_clause 0x3
	buffer_load_u16 v44, v10, s[68:71], 0 offen
	buffer_load_u16 v45, v11, s[68:71], 0 offen
	buffer_load_u16 v46, v9, s[68:71], 0 offen
	buffer_load_u16 v47, v8, s[68:71], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	s_mul_i32 s0, s72, s34
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s69, s39, 0xffff
	v_add_lshl_u32 v7, v7, s0, 1
	s_mov_b32 s68, s38
	s_mov_b32 s0, 0x76543210
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v8, v0, 7, 1
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v48, v7, s[68:71], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v7, 7, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v8, 0x2010, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s72, 31
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v53, 62, v7
	v_or_b32_e32 v54, 60, v7
	v_or_b32_e32 v55, 58, v7
	v_or_b32_e32 v56, 56, v7
	v_or_b32_e32 v57, 54, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v97, s1, s74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v98, null, s75, 0, s1
	v_add_co_u32 v99, s1, s74, v54
	v_add_co_ci_u32_e64 v100, null, s75, 0, s1
	v_add_co_u32 v101, s1, s74, v55
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v58, 52, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v102, null, s75, 0, s1
	v_add_co_u32 v103, s1, s74, v56
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v59, 50, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v104, null, s75, 0, s1
	v_add_co_u32 v105, s1, s74, v57
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v60, 48, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v106, null, s75, 0, s1
	v_add_co_u32 v107, s1, s74, v58
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v61, 46, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v108, null, s75, 0, s1
	v_add_co_u32 v109, s1, s74, v59
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v62, 44, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v110, null, s75, 0, s1
	v_add_co_u32 v111, s1, s74, v60
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v63, 42, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v112, null, s75, 0, s1
	v_add_co_u32 v113, s1, s74, v61
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 40, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v114, null, s75, 0, s1
	v_add_co_u32 v115, s1, s74, v62
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v66, 38, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v116, null, s75, 0, s1
	v_add_co_u32 v117, s1, s74, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v118, null, s75, 0, s1
	v_add_co_u32 v119, s1, s74, v65
	v_add_co_ci_u32_e64 v120, null, s75, 0, s1
	v_add_co_u32 v121, s1, s74, v66
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v95, 36, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v122, null, s75, 0, s1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v139, 20, v7
	v_or_b32_e32 v140, 18, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v123, s1, s74, v95
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v141, 16, v7
	v_or_b32_e32 v144, 10, v7
	v_or_b32_e32 v142, 14, v7
	v_or_b32_e32 v143, 12, v7
	v_or_b32_e32 v125, 34, v7
	v_or_b32_e32 v127, 32, v7
	v_or_b32_e32 v129, 30, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v124, null, s75, 0, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_co_u32 v125, s1, s74, v125
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v131, 28, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v126, null, s75, 0, s1
	v_add_co_u32 v127, s1, s74, v127
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v133, 26, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v128, null, s75, 0, s1
	v_add_co_u32 v129, s1, s74, v129
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v135, 24, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v130, null, s75, 0, s1
	v_add_co_u32 v131, s1, s74, v131
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v137, 22, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v132, null, s75, 0, s1
	v_add_co_u32 v133, s1, s74, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v134, null, s75, 0, s1
	v_add_co_u32 v135, s1, s74, v135
	v_add_co_ci_u32_e64 v136, null, s75, 0, s1
	v_add_co_u32 v137, s1, s74, v137
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v138, null, s75, 0, s1
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[78:79], v[97:98]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[76:77], v[99:100]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[78:79], v[99:100]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[76:77], v[101:102]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[78:79], v[101:102]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[76:77], v[103:104]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[78:79], v[103:104]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[76:77], v[105:106]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[78:79], v[105:106]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[76:77], v[107:108]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[78:79], v[107:108]
	.loc	1 1249 38 is_stmt 1             ; ragged.py:1249:38
	s_add_i32 s68, s72, s68
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[76:77], v[137:138]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[78:79], v[137:138]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[76:77], v[135:136]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[78:79], v[135:136]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[76:77], v[133:134]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[78:79], v[133:134]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[76:77], v[131:132]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[78:79], v[131:132]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[76:77], v[129:130]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[78:79], v[129:130]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[76:77], v[127:128]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[78:79], v[127:128]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[76:77], v[125:126]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[78:79], v[125:126]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[76:77], v[123:124]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[78:79], v[123:124]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[76:77], v[121:122]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[78:79], v[121:122]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[76:77], v[119:120]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[78:79], v[119:120]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[76:77], v[117:118]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[78:79], v[117:118]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[76:77], v[115:116]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[78:79], v[115:116]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[76:77], v[113:114]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[78:79], v[113:114]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[76:77], v[111:112]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[78:79], v[111:112]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[76:77], v[109:110]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[78:79], v[109:110]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v71, v71, v45 :: v_dual_lshlrev_b32 v44, 16, v44
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v57, v79, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v11, 0xf0, v0
	v_lshlrev_b32_e32 v49, 1, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v62, v86, v44
	v_dual_mul_f32 v79, v89, v45 :: v_dual_lshlrev_b32 v50, 5, v0
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v66, v84, v44 :: v_dual_lshlrev_b32 v47, 16, v47
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v51, 3, v0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v50, 32, v50
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v36, v36, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v145, v11, 2, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v38, v38, v46 :: v_dual_and_b32 v49, 28, v49
	v_dual_mul_f32 v60, v91, v45 :: v_dual_and_b32 v9, 0x80, v0
	v_dual_mul_f32 v37, v37, v46 :: v_dual_and_b32 v52, 4, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v146, v11, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v27, v45 :: v_dual_lshlrev_b32 v48, 16, v48
	v_mul_f32_e32 v40, v40, v47
	v_dual_mul_f32 v54, v83, v44 :: v_dual_lshlrev_b32 v147, 5, v51
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v149, v51, 9, 0
.Ltmp6:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v58, v77, v44 :: v_dual_lshlrev_b32 v11, 4, v51
	v_mul_f32_e32 v51, v96, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v49, v145, v50, v49
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v151, v52, 6, 0
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v55, v81, v44 :: v_dual_add_nc_u32 v154, 0, v9
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v155, 5, v52
	v_lshl_add_u32 v145, v52, 2, v149
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v50, v92, v44
	v_mul_f32_e32 v52, v94, v44
	v_dual_mul_f32 v61, v87, v44 :: v_dual_mul_f32 v68, v68, v45
	v_dual_mul_f32 v65, v85, v44 :: v_dual_mul_f32 v92, v82, v45
	v_mul_f32_e32 v59, v88, v45
	v_dual_mul_f32 v94, v67, v45 :: v_dual_mul_f32 v157, v22, v46
	v_dual_mul_f32 v96, v25, v45 :: v_dual_mul_f32 v31, v31, v46
	v_dual_mul_f32 v149, v23, v45 :: v_dual_mul_f32 v26, v26, v46
	v_dual_mul_f32 v156, v24, v46 :: v_dual_mul_f32 v13, v13, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v49, v48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v146 offset:512
	ds_load_b128 v[22:25], v146 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v20, v20, v46 :: v_dual_mul_f32 v167, v3, v47
	v_mul_f32_e32 v166, v4, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[85:88], v146
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v168, v2, v47
	v_mul_f32_e32 v169, v1, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[1:4], v146 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v43, v43, v47 :: v_dual_and_b32 v64, 8, v0
	v_dual_mul_f32 v89, v39, v46 :: v_dual_and_b32 v10, 0x60, v0
	v_dual_mul_f32 v41, v41, v47 :: v_dual_lshlrev_b32 v12, 4, v0
	v_dual_mul_f32 v53, v93, v44 :: v_dual_lshlrev_b32 v148, 1, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v42, v42, v47 :: v_dual_lshlrev_b32 v153, 3, v64
	v_dual_mul_f32 v76, v76, v44 :: v_dual_mul_f32 v91, v69, v45
	v_dual_mul_f32 v74, v74, v44 :: v_dual_mul_f32 v75, v75, v45
	v_dual_mul_f32 v73, v73, v44 :: v_dual_mul_f32 v80, v80, v45
	v_dual_mul_f32 v44, v72, v44 :: v_dual_mul_f32 v93, v78, v45
	v_mul_f32_e32 v77, v90, v45
	v_mul_f32_e32 v90, v70, v45
	v_dual_mul_f32 v158, v21, v46 :: v_dual_mul_f32 v161, v16, v47
	v_dual_mul_f32 v30, v30, v46 :: v_dual_mul_f32 v165, v32, v47
	v_dual_mul_f32 v29, v29, v46 :: v_dual_mul_f32 v160, v18, v47
	v_dual_mul_f32 v28, v28, v46 :: v_dual_mul_f32 v163, v34, v47
	v_dual_mul_f32 v19, v19, v46 :: v_dual_mul_f32 v14, v14, v47
	v_dual_mul_f32 v159, v17, v46 :: v_dual_mul_f32 v162, v35, v47
	v_dual_mul_f32 v15, v15, v46 :: v_dual_mul_f32 v164, v33, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v56, v50, v81 :: v_dual_mul_f32 v67, v51, v23
	v_dual_mul_f32 v70, v53, v25 :: v_dual_mul_f32 v69, v52, v24
	v_dual_mul_f32 v72, v59, v81 :: v_dual_mul_f32 v63, v60, v23
	v_dual_mul_f32 v60, v77, v24 :: v_dual_mul_f32 v39, v36, v81
	v_dual_mul_f32 v59, v79, v25 :: v_dual_mul_f32 v34, v89, v23
	v_dual_mul_f32 v21, v40, v81 :: v_dual_mul_f32 v32, v38, v24
	v_dual_mul_f32 v33, v37, v25 :: v_dual_mul_f32 v16, v43, v23
	v_dual_mul_f32 v17, v42, v24 :: v_dual_mul_f32 v18, v41, v25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v45, v58, v87 :: v_dual_mul_f32 v46, v57, v88
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v49, v62, v2
	v_dual_mul_f32 v42, v55, v86 :: v_dual_mul_f32 v53, v65, v3
	v_dual_mul_f32 v40, v54, v85 :: v_dual_mul_f32 v57, v76, v82
	v_dual_mul_f32 v54, v66, v4 :: v_dual_mul_f32 v77, v68, v87
	v_dual_mul_f32 v48, v61, v1 :: v_dual_mul_f32 v61, v74, v83
	v_mul_f32_e32 v66, v44, v22
	v_dual_mul_f32 v62, v73, v84 :: v_dual_mul_f32 v81, v80, v2
	v_dual_mul_f32 v78, v91, v88 :: v_dual_mul_f32 v79, v93, v3
	v_dual_mul_f32 v74, v90, v86 :: v_dual_mul_f32 v73, v71, v85
	v_dual_mul_f32 v76, v75, v4 :: v_dual_mul_f32 v65, v149, v22
	v_dual_mul_f32 v80, v92, v1 :: v_dual_mul_f32 v75, v94, v82
	v_dual_mul_f32 v68, v96, v84 :: v_dual_mul_f32 v51, v158, v87
	v_dual_mul_f32 v71, v27, v83 :: v_dual_mul_f32 v52, v157, v88
	v_dual_mul_f32 v55, v156, v86 :: v_dual_mul_f32 v58, v26, v85
	v_dual_mul_f32 v43, v28, v4 :: v_dual_mul_f32 v44, v29, v3
	v_dual_mul_f32 v47, v30, v2 :: v_dual_mul_f32 v50, v31, v1
	v_mul_f32_e32 v41, v20, v82
	v_dual_mul_f32 v35, v15, v22 :: v_dual_mul_f32 v28, v14, v88
	v_dual_mul_f32 v36, v159, v84 :: v_dual_mul_f32 v29, v13, v87
	v_dual_mul_f32 v37, v19, v83 :: v_dual_mul_f32 v30, v161, v86
	v_dual_mul_f32 v31, v160, v85 :: v_dual_mul_f32 v26, v163, v2
	v_dual_mul_f32 v27, v162, v1 :: v_dual_mul_f32 v20, v168, v84
	v_dual_mul_f32 v19, v169, v22 :: v_dual_mul_f32 v22, v167, v83
	v_mul_f32_e32 v25, v166, v82
	v_dual_mul_f32 v23, v165, v4 :: v_dual_mul_f32 v24, v164, v3
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v40|, |v42|
	v_max3_f32 v2, |v46|, |v48|, |v49|
	v_max3_f32 v4, |v57|, |v61|, |v62|
	v_max3_f32 v13, |v66|, |v67|, |v69|
	v_max_f32_e64 v14, |v73|, |v74|
	v_max3_f32 v15, |v78|, |v80|, |v81|
	v_max3_f32 v82, |v75|, |v71|, |v68|
	v_max3_f32 v83, |v65|, |v63|, |v60|
	v_max_f32_e64 v84, |v58|, |v55|
	v_max3_f32 v85, |v52|, |v50|, |v47|
	v_max3_f32 v87, |v41|, |v37|, |v36|
	v_max3_f32 v88, |v35|, |v34|, |v32|
	v_max_f32_e64 v89, |v31|, |v30|
	v_max3_f32 v90, |v28|, |v27|, |v26|
	v_max3_f32 v92, |v25|, |v22|, |v20|
	v_max3_f32 v93, |v19|, |v16|, |v17|
	v_max3_f32 v3, |v53|, |v54|, |v56|
	v_max3_f32 v38, |v79|, |v76|, |v72|
	v_max3_f32 v86, |v44|, |v43|, |v39|
	v_max3_f32 v91, |v24|, |v23|, |v21|
	v_max3_f32 v1, v1, |v45|, v2
	v_max3_f32 v2, v4, v13, |v70|
	v_max3_f32 v4, v14, |v77|, v15
	v_max3_f32 v13, v82, v83, |v59|
	v_max3_f32 v14, v84, |v51|, v85
	v_max3_f32 v15, v87, v88, |v33|
	v_max3_f32 v82, v89, |v29|, v90
	v_max3_f32 v83, v92, v93, |v18|
	v_max3_f32 v1, v1, v3, v2
	v_max3_f32 v2, v4, v38, v13
	v_max3_f32 v3, v14, v86, v15
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v84, 0x680, v12, v147
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v82, v91, v83
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v64, 4, v145
	v_permlanex16_b32 v14, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v150, 3, v9
	v_xor_b32_e32 v95, v147, v10
	v_xor_b32_e32 v82, v84, v10
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v15, v15, v15
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v64, v64, v64
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v83, v13, v148, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v14 :: v_dual_max_f32 v2, v2, v15
	v_dual_max_f32 v3, v3, v38 :: v_dual_max_f32 v4, v4, v64
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v15, v151, v150, v82
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshrrev_b32_e32 v152, 1, v10
	ds_store_b128 v83, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v15
	v_add_nc_u32_e32 v38, 0, v11
	v_add3_u32 v15, v154, v152, v153
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s0, s74, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s75, 0, s0
	v_add_co_u32 v82, s0, s74, v140
	v_add_co_ci_u32_e64 v83, null, s75, 0, s0
	v_add_co_u32 v84, s0, s74, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v85, null, s75, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[76:77], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[78:79], v[82:83]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v82, 8, v7
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v64, v1 :: v_dual_mov_b32 v91, v3
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v1, v1
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v38, v38, v155, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v64, v64 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v91, v91 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v90, v2
.Ltmp23:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[76:77], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[78:79], v[13:14]
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v64, v64, v64 :: v_dual_max_f32 v91, v91, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v90, v90 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v92, v4, v4
	v_max_f32_e32 v1, v1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v3, v3, v91 :: v_dual_max_f32 v90, v90, v90
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s53, s74, v144
	v_add_co_u32 v86, s0, s74, v142
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v90
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v90, v1
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp32:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v14, null, s75, 0, s53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v91, v2
	v_mov_b32_dpp v90, v90 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s53, s74, v82
	v_add_co_ci_u32_e64 v87, null, s75, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v90, v90, v90
	v_max_f32_e32 v4, v92, v4
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v91, v91 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[76:77], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[78:79], v[84:85]
.Ltmp38:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v90
.Ltmp39:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s75, 0, s53
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v91, v91, v91
.Ltmp41:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[76:77], v[86:87]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v90, v1
.Ltmp43:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[78:79], v[86:87]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[76:77], v[13:14]
.Ltmp44:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v91
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v4
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[78:79], v[13:14]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[76:77], v[82:83]
.Ltmp47:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v91, v2
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v90, v90, v90
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v92, v3
.Ltmp50:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[78:79], v[82:83]
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v64, v64, v64 :: v_dual_max_f32 v1, v1, v90
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v92, v92 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v14, 6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v91, v91, v91 :: v_dual_max_f32 v4, v4, v64
.Ltmp56:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v88, s0, s74, v143
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v92, v92, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, v2, v91
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v4
.Ltmp59:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v89, null, s75, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v92
.Ltmp61:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[76:77], v[97:98]
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp63:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[76:77], v[88:89]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[78:79], v[88:89]
.Ltmp64:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v92, v3
.Ltmp65:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v89.h, 0
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
.Ltmp67:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v12, 0x2f0, v12
	v_lshlrev_b32_e32 v9, 3, v9
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v10, 5, v10
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v64
.Ltmp71:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v8, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v92, v92, v92
	v_max_f32_e32 v3, v3, v92
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v15, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v38
.Ltmp74:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v15, 0x2b8cbccc, v1
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v82, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v83, 0x2b8cbccc, v4
	v_div_scale_f32 v1, null, 0x40e00000, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v1
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v64, -v1, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v2, -v84, v86, 1.0
	v_fmac_f32_e32 v38, v64, v38
	v_div_scale_f32 v64, vcc_lo, v15, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v86, v2, v86
	v_fma_f32 v91, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v85, v64, v38 :: v_dual_fmac_f32 v88, v91, v88
	v_fma_f32 v13, -v1, v85, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v13, v38
	v_div_scale_f32 v13, s59, v3, 0x40e00000, v3
	v_fma_f32 v1, -v1, v85, v64
	v_rcp_f32_e32 v64, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v1, v38, v85
	v_mul_f32_e32 v85, v13, v86
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s57, s74, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s75, 0, s57
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v4, v64, 1.0
	v_div_fixup_f32 v15, v38, 0x40e00000, v15
	v_fma_f32 v38, -v84, v85, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[76:77], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[78:79], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v64, v14, v64
	v_div_scale_f32 v14, s60, v82, 0x40e00000, v82
	v_fmac_f32_e32 v85, v38, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v38.l, v15.h
	v_mov_b16_e32 v38.h, v89.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v90, v14, v64
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v1, -v84, v85, v13
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v4, v90, v14
	v_div_scale_f32 v38, s61, v83, 0x40e00000, v83
	v_div_fmas_f32 v1, v1, v86, v85
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v90, v13, v64
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v13, v15, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v84, v38, v88
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v4, v90, v14
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v85, 0xffff0000, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v87, v84, v38
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v89.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v3, v64, v90
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v85, v85, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v4, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s59, s74, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v86
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v2, -v87, v84, v38
	v_div_fixup_f32 v14, v14, 0x40e00000, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v38, 1, v89
	v_mov_b16_e32 v64.h, v89.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v85, v85, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v88, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v85, v85, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v86, v90, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v14.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v87, vcc_lo, v40, v85, v40
	v_fmac_f32_e32 v90, v15, v90
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v38, 0x7fff
	v_mov_b16_e32 v89.l, v2.h
	v_and_b32_e32 v38, 1, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, null, v85, v85, v46
	v_mul_f32_e32 v88, v87, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v64, -v84, v83, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v89
	v_add3_u32 v14, v14, v38, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v91
	v_fma_f32 v38, -v86, v88, v87
	v_rcp_f32_e32 v94, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s75, 0, s59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v64, v83
	v_div_scale_f32 v93, s59, v42, v85, v42
	v_fmac_f32_e32 v88, v38, v90
	v_div_scale_f32 v98, null, v85, v85, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v95, v93, v83
	v_fma_f32 v96, -v91, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v86, -v86, v88, v87
	v_fma_f32 v97, -v92, v94, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 2, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v84, v95, v93
	v_fmac_f32_e32 v89, v96, v89
	v_div_scale_f32 v96, s60, v45, v85, v45
	v_div_fmas_f32 v86, v86, v90, v88
	v_fmac_f32_e32 v94, v97, v94
	v_rcp_f32_e32 v88, v98
	v_div_scale_f32 v97, null, v85, v85, v49
	v_fmac_f32_e32 v95, v87, v83
	v_mul_f32_e32 v87, v96, v89
	v_div_scale_f32 v90, s61, v46, v85, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v99, v97
	v_div_fixup_f32 v40, v86, v85, v40
	v_fma_f32 v84, -v84, v95, v93
	v_fma_f32 v86, -v91, v87, v96
	v_mul_f32_e32 v93, v90, v94
	v_fma_f32 v100, -v98, v88, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fmas_f32 v83, v84, v83, v95
	v_fmac_f32_e32 v87, v86, v89
	v_fma_f32 v84, -v92, v93, v90
	v_fmac_f32_e32 v88, v100, v88
	v_div_scale_f32 v86, s59, v48, v85, v48
	v_fma_f32 v95, -v97, v99, 1.0
	v_div_fixup_f32 v42, v83, v85, v42
	v_fma_f32 v83, -v91, v87, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v93, v84, v94 :: v_dual_mul_f32 v84, v86, v88
	v_fmac_f32_e32 v99, v95, v99
	v_div_scale_f32 v95, null, v85, v85, v53
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v91, s62, v49, v85, v49
	v_div_fmas_f32 v83, v83, v89, v87
	v_fma_f32 v87, -v92, v93, v90
	v_fma_f32 v89, -v98, v84, v86
	v_rcp_f32_e32 v90, v95
	v_div_scale_f32 v96, null, v85, v85, v54
	v_mul_f32_e32 v92, v91, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v89, v88
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v89, v96
	v_div_fmas_f32 v87, v87, v94, v93
	v_fma_f32 v93, -v97, v92, v91
	v_div_fixup_f32 v45, v83, v85, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v95, v90, 1.0
	v_fma_f32 v83, -v98, v84, v86
	v_div_fixup_f32 v46, v87, v85, v46
	v_fmac_f32_e32 v92, v93, v99
	v_div_scale_f32 v86, s60, v53, v85, v53
	v_fmac_f32_e32 v90, v94, v90
	v_fma_f32 v87, -v96, v89, 1.0
	v_div_scale_f32 v93, null, v85, v85, v56
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v94, null, v85, v85, v57
	v_div_fmas_f32 v83, v83, v88, v84
	v_fma_f32 v84, -v97, v92, v91
	v_dual_mul_f32 v88, v86, v90 :: v_dual_fmac_f32 v89, v87, v89
	v_rcp_f32_e32 v87, v93
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v91, s59, v54, v85, v54
	v_div_fmas_f32 v84, v84, v99, v92
	v_fma_f32 v92, -v95, v88, v86
	v_rcp_f32_e32 v99, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v97, v91, v89
	v_div_fixup_f32 v48, v83, v85, v48
	v_div_fixup_f32 v49, v84, v85, v49
	v_fma_f32 v98, -v93, v87, 1.0
	v_fmac_f32_e32 v88, v92, v90
	v_div_scale_f32 v92, null, v85, v85, v61
	v_fma_f32 v83, -v96, v97, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v87, v98, v87
	v_div_scale_f32 v84, s61, v56, v85, v56
	v_fma_f32 v98, -v94, v99, 1.0
	v_fma_f32 v86, -v95, v88, v86
	v_rcp_f32_e32 v95, v92
	v_fmac_f32_e32 v97, v83, v89
	v_mul_f32_e32 v83, v84, v87
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s62, v57, v85, v57
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v100, null, v85, v85, v62
	v_div_fmas_f32 v86, v86, v90, v88
	v_fma_f32 v88, -v96, v97, v91
	v_fma_f32 v90, -v93, v83, v84
	v_mul_f32_e32 v91, v98, v99
	v_fma_f32 v96, -v92, v95, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v53, v86, v85, v53
	v_fmac_f32_e32 v83, v90, v87
	v_fma_f32 v90, -v94, v91, v98
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, s59, v61, v85, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v93, v83, v84
	v_fmac_f32_e32 v91, v90, v99
	v_div_fmas_f32 v88, v88, v89, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v86, v96, v95
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v89, v100
	v_div_fmas_f32 v83, v84, v87, v83
	v_fma_f32 v84, -v94, v91, v98
	v_fma_f32 v87, -v92, v86, v96
	v_div_scale_f32 v94, null, v85, v85, v67
	v_div_fixup_f32 v54, v88, v85, v54
	v_div_scale_f32 v90, null, v85, v85, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v87, v95
	v_rcp_f32_e32 v87, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v100, v89, 1.0
	v_div_fixup_f32 v56, v83, v85, v56
	v_div_scale_f32 v93, s60, v62, v85, v62
	v_fma_f32 v83, -v92, v86, v96
	v_fmac_f32_e32 v89, v88, v89
	v_rcp_f32_e32 v88, v90
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v66, v85, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v94, v87, 1.0
	v_div_fmas_f32 v84, v84, v99, v91
	v_mul_f32_e32 v91, v93, v89
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v87, v96, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v82, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v14
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v97, -v90, v88, 1.0
	v_div_fixup_f32 v57, v84, v85, v57
	v_fma_f32 v84, -v100, v91, v93
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v38, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v95, v86
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v97, null, v85, v85, v69
	v_fmac_f32_e32 v91, v84, v89
	v_div_scale_f32 v95, s59, v67, v85, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v84, v92, v88
	v_rcp_f32_e32 v86, v97
	v_div_scale_f32 v96, null, v85, v85, v70
	v_div_fixup_f32 v61, v83, v85, v61
	v_fma_f32 v83, -v100, v91, v93
	v_fma_f32 v93, -v90, v84, v92
	v_mul_f32_e32 v98, v95, v87
	v_rcp_f32_e32 v99, v96
	s_mov_b32 vcc_lo, s60
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v14.h
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v100, -v97, v86, 1.0
	v_div_fmas_f32 v83, v83, v89, v91
	v_fmac_f32_e32 v84, v93, v88
	v_fma_f32 v89, -v94, v98, v95
	v_div_scale_f32 v91, s60, v69, v85, v69
	v_fmac_f32_e32 v86, v100, v86
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v96, v99, 1.0
	v_div_fixup_f32 v62, v83, v85, v62
	v_fma_f32 v83, -v90, v84, v92
	v_fmac_f32_e32 v98, v89, v87
	v_div_scale_f32 v92, null, v82, v82, v73
	s_mov_b32 vcc_lo, s61
	v_dual_mul_f32 v89, v91, v86 :: v_dual_and_b32 v64, 0xffff0000, v1
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v90, s62, v70, v85, v70
	v_div_fmas_f32 v83, v83, v88, v84
	v_fma_f32 v84, -v94, v98, v95
	v_rcp_f32_e32 v93, v92
	v_div_scale_f32 v95, null, v82, v82, v74
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v88, -v97, v89, v91
	v_mul_f32_e32 v94, v90, v99
	v_div_fmas_f32 v84, v84, v87, v98
	v_rcp_f32_e32 v87, v95
	v_div_fixup_f32 v66, v83, v85, v66
	v_fmac_f32_e32 v89, v88, v86
	v_fma_f32 v88, -v96, v94, v90
	v_fma_f32 v98, -v92, v93, 1.0
	v_div_fixup_f32 v67, v84, v85, v67
	v_div_scale_f32 v84, s59, v73, v82, v73
	v_fma_f32 v83, -v97, v89, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v94, v88, v99 :: v_dual_fmac_f32 v93, v98, v93
	v_fma_f32 v88, -v95, v87, 1.0
	v_div_scale_f32 v91, null, v82, v82, v77
	s_mov_b32 vcc_lo, s60
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v13.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v86, v89
	v_fma_f32 v86, -v96, v94, v90
	v_mul_f32_e32 v89, v84, v93
	v_fmac_f32_e32 v87, v88, v87
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v96, null, v82, v82, v78
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s60, v74, v82, v74
	v_div_fmas_f32 v86, v86, v99, v94
	v_fma_f32 v94, -v92, v89, v84
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v97, v90, v87
	v_fma_f32 v98, -v91, v88, 1.0
	v_div_fixup_f32 v70, v86, v85, v70
	v_fmac_f32_e32 v89, v94, v93
	v_div_scale_f32 v86, null, v82, v82, v80
	v_div_fixup_f32 v69, v83, v85, v69
	v_fma_f32 v83, -v95, v97, v90
	v_fmac_f32_e32 v88, v98, v88
	v_div_scale_f32 v85, s61, v77, v82, v77
	v_fma_f32 v94, -v96, v99, 1.0
	v_fma_f32 v84, -v92, v89, v84
	v_rcp_f32_e32 v92, v86
	v_fmac_f32_e32 v97, v83, v87
	v_mul_f32_e32 v83, v85, v88
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v94, s62, v78, v82, v78
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v98, null, v82, v82, v81
	v_div_fmas_f32 v84, v84, v93, v89
	v_fma_f32 v89, -v95, v97, v90
	v_fma_f32 v90, -v91, v83, v85
	v_mul_f32_e32 v93, v94, v99
	v_fma_f32 v95, -v86, v92, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v73, v84, v82, v73
	v_div_fmas_f32 v87, v89, v87, v97
	v_fmac_f32_e32 v83, v90, v88
	v_rcp_f32_e32 v89, v98
	v_fma_f32 v90, -v96, v93, v94
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s59, v80, v82, v80
	v_fma_f32 v84, -v91, v83, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v90, v99
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v85, v95, v92
	v_div_fixup_f32 v74, v87, v82, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v98, v89, 1.0
	v_div_scale_f32 v90, null, v82, v82, v79
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v96, v93, v94
	v_fma_f32 v88, -v86, v85, v95
	v_div_scale_f32 v94, null, v82, v82, v76
	v_fmac_f32_e32 v89, v87, v89
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v91, s60, v81, v82, v81
	v_fmac_f32_e32 v85, v88, v92
	v_rcp_f32_e32 v88, v94
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v77, v83, v82, v77
	v_div_fmas_f32 v84, v84, v99, v93
	v_mul_f32_e32 v93, v91, v89
	v_fma_f32 v83, -v86, v85, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v78, v84, v82, v78
	v_fma_f32 v84, -v98, v93, v91
	v_fma_f32 v95, -v94, v88, 1.0
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v86, s61, v79, v82, v79
	v_div_fmas_f32 v83, v83, v92, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v93, v84, v89 :: v_dual_fmac_f32 v88, v95, v88
	v_div_scale_f32 v95, null, v82, v82, v75
	v_div_scale_f32 v96, null, v82, v82, v72
	v_div_scale_f32 v92, s59, v76, v82, v76
	v_mul_f32_e32 v84, v86, v87
	v_div_fixup_f32 v80, v83, v82, v80
	v_fma_f32 v83, -v98, v93, v91
	v_rcp_f32_e32 v98, v95
	v_rcp_f32_e32 v85, v96
	v_mul_f32_e32 v97, v92, v88
	v_fma_f32 v91, -v90, v84, v86
	s_mov_b32 vcc_lo, s60
	v_div_fmas_f32 v83, v83, v89, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v94, v97, v92
	v_fmac_f32_e32 v84, v91, v87
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v99, -v96, v85, 1.0
	v_div_fixup_f32 v81, v83, v82, v81
	v_fmac_f32_e32 v97, v89, v88
	v_fma_f32 v83, -v90, v84, v86
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v89, s62, v75, v82, v75
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v91, s60, v72, v82, v72
	v_div_fmas_f32 v83, v83, v87, v84
	v_fma_f32 v84, -v94, v97, v92
	v_mul_f32_e32 v93, v89, v98
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v90, null, v82, v82, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v84, v84, v88, v97
	v_fma_f32 v88, -v95, v93, v89
	v_mul_f32_e32 v86, v91, v85
	v_div_scale_f32 v94, null, v82, v82, v68
	v_rcp_f32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v88, v98
	v_fma_f32 v87, -v96, v86, v91
	v_div_fixup_f32 v79, v83, v82, v79
	v_div_fixup_f32 v76, v84, v82, v76
	v_div_scale_f32 v84, s59, v71, v82, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v86, v87, v85
	v_rcp_f32_e32 v87, v94
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v97, -v90, v92, 1.0
	v_div_scale_f32 v99, null, v82, v82, v59
	v_fma_f32 v83, -v96, v86, v91
	v_div_scale_f32 v91, null, v82, v82, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v92, v97, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v94, v87, 1.0
	v_div_fmas_f32 v83, v83, v85, v86
	v_fma_f32 v85, -v95, v93, v89
	v_mul_f32_e32 v86, v84, v92
	v_div_scale_f32 v89, s60, v68, v82, v68
	v_fmac_f32_e32 v87, v88, v87
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v95, null, v82, v82, v63
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v96, v89, v87
	v_div_fmas_f32 v85, v85, v98, v93
	v_fma_f32 v93, -v90, v86, v84
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v72, v83, v82, v72
	v_fma_f32 v83, -v94, v96, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v91, v88, 1.0
	v_div_fixup_f32 v75, v85, v82, v75
	v_fmac_f32_e32 v86, v93, v92
	v_div_scale_f32 v85, s61, v65, v82, v65
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v93, null, v82, v82, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v95, v98, 1.0
	v_fma_f32 v84, -v90, v86, v84
	v_dual_fmac_f32 v96, v83, v87 :: v_dual_mul_f32 v83, v85, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v90, v93
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s62, v63, v82, v63
	v_div_fmas_f32 v84, v84, v92, v86
	v_fma_f32 v86, -v94, v96, v89
	v_fma_f32 v89, -v91, v83, v85
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v92, v97, v98
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v93, v90, 1.0
	v_div_fixup_f32 v71, v84, v82, v71
	v_fmac_f32_e32 v83, v89, v88
	v_div_fmas_f32 v86, v86, v87, v96
	v_rcp_f32_e32 v87, v99
	v_fma_f32 v89, -v95, v92, v97
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s59, v60, v82, v60
	v_div_fixup_f32 v68, v86, v82, v68
	v_fma_f32 v84, -v91, v83, v85
	v_fmac_f32_e32 v92, v89, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v94, v90
	v_div_scale_f32 v89, null, v64, v64, v58
	v_fma_f32 v86, -v99, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, s60, v59, v82, v59
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v95, v92, v97
	v_fma_f32 v88, -v93, v85, v94
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v95, null, v64, v64, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v90
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v65, v83, v82, v65
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v84, v84, v98, v92
	v_mul_f32_e32 v92, v91, v87
	v_fma_f32 v83, -v93, v85, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v63, v84, v82, v63
	v_fma_f32 v84, -v99, v92, v91
	v_div_scale_f32 v93, s61, v58, v64, v58
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v94, -v95, v88, 1.0
	v_div_scale_f32 v96, null, v64, v64, v51
	v_div_fmas_f32 v83, v83, v90, v85
	v_fmac_f32_e32 v92, v84, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v94, v88
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, null, v64, v64, v52
	v_mul_f32_e32 v84, v93, v86
	v_div_scale_f32 v90, s59, v55, v64, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v94
	v_div_fixup_f32 v60, v83, v82, v60
	v_fma_f32 v83, -v99, v92, v91
	v_fma_f32 v91, -v89, v84, v93
	v_mul_f32_e32 v97, v90, v88
	v_fma_f32 v99, -v96, v85, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v92
	v_fmac_f32_e32 v84, v91, v86
	v_fma_f32 v87, -v95, v97, v90
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v91, s60, v51, v64, v51
	v_fma_f32 v92, -v94, v98, 1.0
	v_div_fixup_f32 v59, v83, v82, v59
	v_fma_f32 v82, -v89, v84, v93
	v_fmac_f32_e32 v97, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v91, v85 :: v_dual_fmac_f32 v98, v92, v98
	v_div_scale_f32 v87, s62, v52, v64, v52
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v89, null, v64, v64, v50
	v_div_fmas_f32 v82, v82, v86, v84
	v_fma_f32 v84, -v95, v97, v90
	v_fma_f32 v86, -v96, v83, v91
	v_mul_f32_e32 v92, v87, v98
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v93, null, v64, v64, v47
	v_div_fmas_f32 v84, v84, v88, v97
	v_fmac_f32_e32 v83, v86, v85
	v_fma_f32 v88, -v94, v92, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v93
	v_div_fixup_f32 v58, v82, v64, v58
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v82, -v96, v83, v91
	v_fmac_f32_e32 v92, v88, v98
	v_div_scale_f32 v91, null, v64, v64, v44
	v_fma_f32 v95, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v94, v92, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v91
	v_div_fixup_f32 v55, v84, v64, v55
	v_fmac_f32_e32 v90, v95, v90
	v_div_scale_f32 v84, s59, v50, v64, v50
	v_fma_f32 v88, -v93, v86, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v94, null, v64, v64, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v84, v90
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s60, v47, v64, v47
	v_div_fmas_f32 v83, v83, v98, v92
	v_fma_f32 v96, -v91, v87, 1.0
	v_fma_f32 v92, -v89, v85, v84
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v51, v82, v64, v51
	v_div_fixup_f32 v52, v83, v64, v52
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v83, s61, v44, v64, v44
	v_mul_f32_e32 v95, v88, v86
	v_fmac_f32_e32 v85, v92, v90
	v_div_scale_f32 v92, null, v64, v64, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v82, -v93, v95, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v89, v85, v84
	v_rcp_f32_e32 v89, v92
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v97, v96, v97
	v_dual_fmac_f32 v95, v82, v86 :: v_dual_mul_f32 v82, v83, v87
	v_div_scale_f32 v96, s62, v43, v64, v43
	v_div_fmas_f32 v84, v84, v90, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v85, -v93, v95, v88
	v_div_scale_f32 v98, null, v64, v64, v41
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v88, -v91, v82, v83
	v_mul_f32_e32 v90, v96, v97
	v_fma_f32 v93, -v92, v89, 1.0
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v98
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v94, v90, v96
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s59, v39, v64, v39
	v_div_fixup_f32 v50, v84, v64, v50
	v_div_fixup_f32 v47, v85, v64, v47
	v_fma_f32 v83, -v91, v82, v83
	v_fmac_f32_e32 v90, v88, v97
	v_mul_f32_e32 v84, v93, v89
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v64, v64, v37
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, s60, v41, v64, v41
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v94, v90, v96
	v_fma_f32 v87, -v92, v84, v93
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v94, null, v64, v64, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v87, v89
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v44, v82, v64, v44
	v_rcp_f32_e32 v87, v94
	v_div_fmas_f32 v83, v83, v97, v90
	v_mul_f32_e32 v90, v91, v86
	v_fma_f32 v82, -v92, v84, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v43, v83, v64, v43
	v_fma_f32 v83, -v98, v90, v91
	v_div_scale_f32 v92, s61, v37, v64, v37
	v_fmac_f32_e32 v85, v95, v85
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_scale_f32 v95, null, v64, v64, v35
	v_div_fmas_f32 v82, v82, v89, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v83, v86 :: v_dual_fmac_f32 v87, v93, v87
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v93, null, v64, v64, v34
	v_mul_f32_e32 v83, v92, v85
	v_div_scale_f32 v89, s59, v36, v64, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v93
	v_div_fixup_f32 v39, v82, v64, v39
	v_fma_f32 v82, -v98, v90, v91
	v_fma_f32 v91, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v90
	v_fmac_f32_e32 v83, v91, v85
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s60, v35, v64, v35
	v_fma_f32 v91, -v93, v97, 1.0
	v_div_fixup_f32 v41, v82, v64, v41
	v_fma_f32 v82, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v86, v90, v84 :: v_dual_fmac_f32 v97, v91, v97
	v_div_scale_f32 v91, null, v64, v64, v32
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v88, s62, v34, v64, v34
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v86, v90
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v94, null, v64, v64, v33
	v_mul_f32_e32 v92, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v85, v84
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v85, v94
	v_div_fmas_f32 v83, v83, v87, v96
	v_fma_f32 v87, -v93, v92, v88
	v_div_fixup_f32 v37, v82, v64, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v91, v89, 1.0
	v_fma_f32 v82, -v95, v86, v90
	v_div_fixup_f32 v36, v83, v64, v36
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s59, v32, v64, v32
	v_fmac_f32_e32 v89, v96, v89
	v_fma_f32 v87, -v94, v85, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v95, null, v38, v38, v30
	v_div_fmas_f32 v82, v82, v84, v86
	v_fma_f32 v84, -v93, v92, v88
	v_mul_f32_e32 v86, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, null, v38, v38, v31
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s60, v33, v64, v33
	v_div_fmas_f32 v84, v84, v97, v92
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v92, -v91, v86, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v93, v88, v85
	v_div_fixup_f32 v35, v82, v64, v35
	v_div_fixup_f32 v34, v84, v64, v34
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v86, v92, v89
	v_fma_f32 v82, -v94, v93, v88
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v97, null, v38, v38, v28
	v_fma_f32 v92, -v87, v90, 1.0
	v_fma_f32 v83, -v91, v86, v83
	v_div_scale_f32 v91, null, v38, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v82, v85 :: v_dual_fmac_f32 v90, v92, v90
	v_div_scale_f32 v82, s61, v31, v38, v31
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v96, -v95, v84, 1.0
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v94, v93, v88
	v_mul_f32_e32 v88, v82, v90
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v89, s59, v30, v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v87, v88, v82
	v_fma_f32 v94, -v91, v92, 1.0
	v_rcp_f32_e32 v99, v97
	v_div_fmas_f32 v85, v86, v85, v93
	v_mul_f32_e32 v98, v89, v84
	v_fmac_f32_e32 v88, v96, v90
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s62, v29, v38, v29
	v_div_fixup_f32 v32, v83, v64, v32
	v_div_fixup_f32 v33, v85, v64, v33
	v_fma_f32 v64, -v87, v88, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v94, v92
	v_div_scale_f32 v85, null, v38, v38, v27
	v_fma_f32 v86, -v95, v98, v89
	v_fma_f32 v83, -v97, v99, 1.0
	v_fma_f32 v82, -v91, v93, v94
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v98, v86, v84 :: v_dual_fmac_f32 v99, v83, v99
	v_fmac_f32_e32 v93, v82, v92
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v83, s60, v28, v38, v28
	v_div_fmas_f32 v64, v64, v90, v88
	v_fma_f32 v86, -v95, v98, v89
	v_div_scale_f32 v88, null, v38, v38, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v87, v83, v99
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v31, v64, v38, v31
	v_fma_f32 v89, -v85, v82, 1.0
	v_div_fmas_f32 v84, v86, v84, v98
	v_fma_f32 v86, -v91, v93, v94
	v_rcp_f32_e32 v90, v88
	v_fma_f32 v91, -v97, v87, v83
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s59, v27, v38, v27
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v87, v91, v99
	v_div_fmas_f32 v86, v86, v92, v93
	v_mul_f32_e32 v64, v89, v82
	v_div_fixup_f32 v30, v84, v38, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v88, v90, 1.0
	v_fma_f32 v83, -v97, v87, v83
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v91, -v85, v64, v89
	v_div_fixup_f32 v29, v86, v38, v29
	v_div_scale_f32 v86, null, v38, v38, v24
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v84, s61, v26, v38, v26
	v_div_fmas_f32 v83, v83, v99, v87
	v_fmac_f32_e32 v64, v91, v82
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v87, v84, v90
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v28, v83, v38, v28
	v_fma_f32 v83, -v85, v64, v89
	v_div_scale_f32 v91, null, v38, v38, v23
	v_fma_f32 v85, -v88, v87, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v64, v83, v82, v64
	v_div_scale_f32 v82, null, v38, v38, v21
	v_fma_f32 v89, -v86, v92, 1.0
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v87, v85, v90
	v_rcp_f32_e32 v85, v82
	v_div_scale_f32 v83, s59, v24, v38, v24
	v_fmac_f32_e32 v92, v89, v92
	v_div_scale_f32 v89, null, v38, v38, v25
	v_div_fixup_f32 v27, v64, v38, v27
	v_fma_f32 v84, -v88, v87, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v91, v93, 1.0
	v_rcp_f32_e32 v95, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v82, v85, 1.0
	v_mul_f32_e32 v88, v83, v92
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v93, v64, v93
	v_div_scale_f32 v64, s60, v23, v38, v23
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v94, null, v38, v38, v22
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v86, v88, v83
	v_mul_f32_e32 v90, v64, v93
	v_div_scale_f32 v96, s61, v21, v38, v21
	v_fma_f32 v97, -v89, v95, 1.0
	v_rcp_f32_e32 v98, v94
	v_fmac_f32_e32 v88, v87, v92
	v_fma_f32 v87, -v91, v90, v64
	v_mul_f32_e32 v99, v96, v85
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s62, v25, v38, v25
	v_div_fixup_f32 v26, v84, v38, v26
	v_fma_f32 v83, -v86, v88, v83
	v_fmac_f32_e32 v90, v87, v93
	v_fma_f32 v84, -v82, v99, v96
	v_mul_f32_e32 v86, v97, v95
	v_fma_f32 v87, -v94, v98, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v64, -v91, v90, v64
	v_fmac_f32_e32 v99, v84, v85
	v_fma_f32 v84, -v89, v86, v97
	v_fmac_f32_e32 v98, v87, v98
	v_div_scale_f32 v87, s59, v22, v38, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v82, v99, v96
	v_fmac_f32_e32 v86, v84, v95
	v_div_fmas_f32 v83, v83, v92, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v84, v87, v98
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v88, null, v38, v38, v20
	v_div_fmas_f32 v64, v64, v93, v90
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v24, v83, v38, v24
	v_div_fmas_f32 v82, v82, v85, v99
	v_fma_f32 v85, -v89, v86, v97
	v_fma_f32 v89, -v94, v84, v87
	v_rcp_f32_e32 v90, v88
	v_div_fixup_f32 v23, v64, v38, v23
	v_div_fixup_f32 v21, v82, v38, v21
	v_div_scale_f32 v82, null, v38, v38, v19
	v_fmac_f32_e32 v84, v89, v98
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, null, v38, v38, v18
	v_div_fmas_f32 v85, v85, v95, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v64, -v94, v84, v87
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v83, -v88, v90, 1.0
	v_rcp_f32_e32 v94, v92
	v_div_fixup_f32 v25, v85, v38, v25
	v_div_fmas_f32 v64, v64, v98, v84
	v_rcp_f32_e32 v84, v82
	v_fmac_f32_e32 v90, v83, v90
	v_div_scale_f32 v86, vcc_lo, v20, v38, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v64, v38, v22
	v_div_scale_f32 v83, null, v38, v38, v16
	v_mul_f32_e32 v91, v86, v90
	v_div_scale_f32 v85, null, v38, v38, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v82, v84, 1.0
	v_rcp_f32_e32 v87, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v88, v91, v86
	v_rcp_f32_e32 v89, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v64, v84
	v_div_scale_f32 v64, s59, v19, v38, v19
	v_fmac_f32_e32 v91, v95, v90
	v_fma_f32 v98, -v92, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v64, v84
	v_fma_f32 v93, -v83, v87, 1.0
	v_fma_f32 v86, -v88, v91, v86
	v_fma_f32 v96, -v85, v89, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v82, v97, v64
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v93, s60, v16, v38, v16
	v_div_fmas_f32 v86, v86, v90, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v95, v84
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v99, v93, v87
	s_mov_b32 s59, 0xc1000000
	v_fmac_f32_e32 v89, v96, v89
	v_fma_f32 v64, -v82, v97, v64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v30, v30, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v83, v99, v93
	v_div_scale_f32 v96, s61, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v64, v64, v84, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v88, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v19, v64, v38, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v83, v99, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v93, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v98, v94
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v98, s62, v18, v38, v18
	v_mul_f32_e32 v100, v96, v89
	v_div_fmas_f32 v83, v83, v87, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v19, v19, s59, 0x40e00000
	v_cvt_i32_f32_e32 v99, v23
	v_and_b32_e32 v23, 15, v93
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v101, v98, v94
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v104, v19
	v_and_b32_e32 v19, 15, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v85, v100, v96
	v_fma_f32 v82, -v92, v101, v98
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v20, v86, v38, v20
	v_div_fixup_f32 v16, v83, v38, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v100, v95, v89 :: v_dual_fmac_f32 v101, v82, v94
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v64, v64, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v82, -v85, v100, v96
	v_fma_f32 v84, -v92, v101, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v89, v100
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v94, v101
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v82, v38, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v18, v84, v38, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v40
	v_rndne_f32_e32 v40, v42
	v_rndne_f32_e32 v42, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v69
	v_rndne_f32_e32 v69, v73
	v_rndne_f32_e32 v73, v77
	v_rndne_f32_e32 v77, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s59, 0x40e00000
	v_med3_f32 v46, v46, s59, 0x40e00000
	v_cvt_i32_f32_e32 v80, v64
	v_med3_f32 v59, v59, s59, 0x40e00000
	v_med3_f32 v77, v77, s59, 0x40e00000
	v_med3_f32 v32, v32, s59, 0x40e00000
	v_med3_f32 v26, v26, s59, 0x40e00000
	v_med3_f32 v16, v16, s59, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v83, v68
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v43, v43
	v_and_b32_e32 v68, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v80, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s59, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v91, v32
	v_cvt_i32_f32_e32 v97, v26
	v_cvt_i32_f32_e32 v105, v16
	v_and_b32_e32 v16, 15, v38
	v_and_b32_e32 v32, 15, v46
	v_and_b32_e32 v26, 15, v51
	v_and_b32_e32 v38, 15, v47
	v_and_b32_e32 v46, 15, v43
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v43, 13, v0
	v_lshlrev_b32_e32 v47, 8, v80
	v_and_b32_e32 v51, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v70
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s59, 0x40e00000
	v_med3_f32 v48, v48, s59, 0x40e00000
	v_med3_f32 v49, v49, s59, 0x40e00000
	v_med3_f32 v54, v54, s59, 0x40e00000
	v_med3_f32 v69, v69, s59, 0x40e00000
	v_med3_f32 v72, v72, s59, 0x40e00000
	v_med3_f32 v58, v58, s59, 0x40e00000
	v_med3_f32 v50, v50, s59, 0x40e00000
	v_med3_f32 v39, v39, s59, 0x40e00000
	v_med3_f32 v21, v21, s59, 0x40e00000
	v_cvt_i32_f32_e32 v92, v33
	v_and_b32_e32 v33, 15, v77
	v_and_b32_e32 v77, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v59, 0xe000, v43, v47
	v_xor_b32_e32 v12, v12, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s59, 0x40e00000
	v_med3_f32 v66, v66, s59, 0x40e00000
	v_med3_f32 v67, v67, s59, 0x40e00000
	v_med3_f32 v65, v65, s59, 0x40e00000
	v_med3_f32 v35, v35, s59, 0x40e00000
	v_med3_f32 v27, v27, s59, 0x40e00000
	v_med3_f32 v36, v36, s59, 0x40e00000
	v_med3_f32 v34, v34, s59, 0x40e00000
	v_med3_f32 v20, v20, s59, 0x40e00000
	v_med3_f32 v17, v17, s59, 0x40e00000
	v_med3_f32 v18, v18, s59, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v82, v72
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v100, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v9, v59, v9, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s59, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v96, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v36
	v_cvt_i32_f32_e32 v90, v34
	v_cvt_i32_f32_e32 v103, v20
	v_cvt_i32_f32_e32 v106, v17
	v_cvt_i32_f32_e32 v107, v18
	v_and_b32_e32 v20, 15, v40
	v_and_b32_e32 v36, 15, v48
	v_and_b32_e32 v40, 15, v49
	v_and_b32_e32 v48, 15, v54
	v_and_b32_e32 v17, 15, v69
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v18, 15, v58
	v_and_b32_e32 v34, 15, v50
	v_and_b32_e32 v50, 15, v39
	v_and_b32_e32 v51, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v12, 0, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v78, v81
	v_rndne_f32_e32 v79, v79
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v76
	v_and_b32_e32 v64, 15, v62
	v_and_b32_e32 v72, 15, v66
	v_and_b32_e32 v76, 15, v67
	v_and_b32_e32 v65, 15, v65
	v_and_b32_e32 v66, 15, v35
	v_and_b32_e32 v35, 15, v96
	v_and_b32_e32 v67, 15, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s59, 0x40e00000
	v_med3_f32 v53, v53, s59, 0x40e00000
	v_med3_f32 v56, v56, s59, 0x40e00000
	v_med3_f32 v70, v70, s59, 0x40e00000
	v_med3_f32 v73, v73, s59, 0x40e00000
	v_med3_f32 v75, v75, s59, 0x40e00000
	v_med3_f32 v55, v55, s59, 0x40e00000
	v_med3_f32 v41, v41, s59, 0x40e00000
	v_med3_f32 v29, v29, s59, 0x40e00000
	v_med3_f32 v25, v25, s59, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[32:35] offset:256
	ds_store_b128 v12, v[48:51] offset:2048
	ds_store_b128 v12, v[64:67] offset:2304
	v_lshlrev_b32_e32 v12, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s59, 0x40e00000
	v_med3_f32 v78, v78, s59, 0x40e00000
	v_med3_f32 v79, v79, s59, 0x40e00000
	v_med3_f32 v71, v71, s59, 0x40e00000
	v_med3_f32 v63, v63, s59, 0x40e00000
	v_med3_f32 v44, v44, s59, 0x40e00000
	v_med3_f32 v24, v24, s59, 0x40e00000
	v_med3_f32 v37, v37, s59, 0x40e00000
	v_med3_f32 v22, v22, s59, 0x40e00000
	v_med3_f32 v74, v74, s59, 0x40e00000
	v_med3_f32 v60, v60, s59, 0x40e00000
	v_med3_f32 v45, v45, s59, 0x40e00000
	v_med3_f32 v52, v52, s59, 0x40e00000
	v_med3_f32 v28, v28, s59, 0x40e00000
	v_med3_f32 v61, v61, s59, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v87, v41
	v_cvt_i32_f32_e32 v94, v29
	v_cvt_i32_f32_e32 v101, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v18, 2, v80
	v_and_or_b32 v10, 0x300, v12, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v86, v44
	v_cvt_i32_f32_e32 v98, v24
	v_cvt_i32_f32_e32 v88, v37
	v_cvt_i32_f32_e32 v102, v22
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v84, v60
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v85, v52
	v_cvt_i32_f32_e32 v95, v28
	v_cvt_i32_f32_e32 v61, v61
	v_and_b32_e32 v24, 15, v42
	v_and_b32_e32 v44, 15, v53
	v_and_b32_e32 v52, 15, v56
	v_and_b32_e32 v21, 15, v70
	v_and_b32_e32 v25, 15, v73
	v_and_b32_e32 v53, 15, v75
	v_and_b32_e32 v22, 15, v55
	v_and_b32_e32 v54, 15, v87
	v_and_b32_e32 v27, 15, v94
	v_and_b32_e32 v55, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v16, v9, 16, 0
	v_xad_u32 v17, v9, 32, 0
	v_or3_b32 v12, v8, v10, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v57
	v_and_b32_e32 v37, 15, v78
	v_and_b32_e32 v41, 15, v79
	v_and_b32_e32 v57, 15, v71
	v_and_b32_e32 v69, 15, v63
	v_and_b32_e32 v42, 15, v86
	v_and_b32_e32 v70, 15, v90
	v_and_b32_e32 v39, 15, v97
	v_and_b32_e32 v43, 15, v98
	v_and_b32_e32 v71, 15, v105
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v59, 15, v102
	v_and_b32_e32 v29, 15, v74
	v_and_b32_e32 v73, 15, v84
	v_and_b32_e32 v74, 15, v91
	v_and_b32_e32 v75, 15, v106
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v30, 15, v85
	v_and_b32_e32 v31, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v9, v9, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v61
	v_and_b32_e32 v45, 15, v81
	v_and_b32_e32 v61, 15, v83
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v47, 15, v99
	v_and_b32_e32 v63, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v16, v[20:23]
	ds_store_b128 v16, v[36:39] offset:256
	ds_store_b128 v16, v[52:55] offset:2048
	ds_store_b128 v16, v[68:71] offset:2304
	ds_store_b128 v17, v[24:27]
	ds_store_b128 v17, v[40:43] offset:256
	v_add_nc_u32_e32 v24, 0, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v92
	v_and_b32_e32 v79, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v17, v[56:59] offset:2048
	ds_store_b128 v17, v[72:75] offset:2304
	ds_store_b128 v9, v[28:31]
	ds_store_b128 v9, v[44:47] offset:256
	v_xad_u32 v56, 0x8040, v12, 0
	ds_store_b128 v9, v[60:63] offset:2048
	ds_store_b128 v9, v[76:79] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v24
	ds_load_b128 v[16:19], v24 offset:128
	ds_load_b128 v[20:23], v24 offset:4096
	ds_load_b128 v[24:27], v24 offset:4224
	v_xad_u32 v40, 0x4020, v12, 0
	v_xad_u32 v12, 0xc060, v12, 0
	ds_load_b128 v[44:47], v56
	ds_load_b128 v[48:51], v56 offset:128
	ds_load_b128 v[52:55], v56 offset:4096
	ds_load_b128 v[56:59], v56 offset:4224
	ds_load_b128 v[60:63], v12 offset:4096
	ds_load_b128 v[64:67], v12
	ds_load_b128 v[68:71], v12 offset:128
	ds_load_b128 v[72:75], v12 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v76, s59, s74, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[28:31], v40
	ds_load_b128 v[32:35], v40 offset:128
	ds_load_b128 v[36:39], v40 offset:4096
	ds_load_b128 v[40:43], v40 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v77, null, s75, 0, s59
	v_add_co_u32 v78, s59, s74, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v79, null, s75, 0, s59
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[78:79], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, v7, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[76:77], v[76:77]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v46, v54, 4, v46
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 12, v4
	v_lshl_or_b32 v3, s80, 7, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v61, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 14, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v62, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 16, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v63, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 18, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[78:79], v[76:77]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v76, v20, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 20, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v60, v24, 4, v16
	v_lshl_or_b32 v48, v56, 4, v48
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v68, v21, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 22, v4
	v_mad_u64_u32 v[15:16], null, v15, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v22, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 24, v4
	v_mad_u64_u32 v[16:17], null, v17, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v23, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 26, v4
	v_mad_u64_u32 v[17:18], null, v18, s73, v[3:4]
	v_add_nc_u32_e32 v24, 28, v4
	v_mad_u64_u32 v[18:19], null, v19, s73, v[3:4]
	v_add_nc_u32_e32 v25, 30, v4
	v_mad_u64_u32 v[19:20], null, v20, s73, v[3:4]
	v_add_nc_u32_e32 v26, 32, v4
	v_mad_u64_u32 v[20:21], null, v21, s73, v[3:4]
	v_add_nc_u32_e32 v27, 34, v4
	v_mad_u64_u32 v[21:22], null, v22, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v77, v36, 4, v28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 36, v4
	v_mad_u64_u32 v[22:23], null, v23, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v72, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 38, v4
	v_mad_u64_u32 v[23:24], null, v24, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v69, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v30, 40, v4
	v_mad_u64_u32 v[24:25], null, v25, s73, v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[76:77], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[78:79], v[78:79]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v70, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 4, v4
	v_add_nc_u32_e32 v31, 42, v4
	v_mad_u64_u32 v[6:7], null, v4, s73, v[3:4]
	v_mad_u64_u32 v[25:26], null, v26, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v64, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 44, v4
	v_mad_u64_u32 v[26:27], null, v27, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 6, v4
	v_add_nc_u32_e32 v33, 46, v4
	v_mad_u64_u32 v[27:28], null, v28, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 48, v4
	v_mad_u64_u32 v[28:29], null, v29, s73, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 8, v4
	v_add_nc_u32_e32 v35, 50, v4
	v_mad_u64_u32 v[7:8], null, v8, s73, v[3:4]
	v_mad_u64_u32 v[29:30], null, v30, s73, v[3:4]
	v_add_nc_u32_e32 v36, 52, v4
	v_mad_u64_u32 v[8:9], null, v9, s73, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s73, v[3:4]
	v_add_nc_u32_e32 v12, 10, v4
	v_add_nc_u32_e32 v37, 54, v4
	v_mad_u64_u32 v[31:32], null, v32, s73, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 56, v4
	v_mad_u64_u32 v[9:10], null, v10, s73, v[3:4]
	v_mad_u64_u32 v[32:33], null, v33, s73, v[3:4]
	v_add_nc_u32_e32 v39, 58, v4
	v_mad_u64_u32 v[33:34], null, v34, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 60, v4
	v_add_nc_u32_e32 v67, 62, v4
	v_mad_u64_u32 v[10:11], null, v11, s73, v[3:4]
	v_mad_u64_u32 v[34:35], null, v35, s73, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[3:4]
	v_mad_u64_u32 v[11:12], null, v12, s73, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[37:38], null, v38, s73, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v76, v6, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[39:40], null, v40, s73, v[3:4]
	v_mad_u64_u32 v[3:4], null, v67, s73, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s60
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v75, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v77, v4, s[68:71], 0 offen
	buffer_store_b8 v44, v6, s[68:71], 0 offen
	buffer_store_b8 v52, v7, s[68:71], 0 offen
	buffer_store_b8 v60, v8, s[68:71], 0 offen
	buffer_store_b8 v64, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v4, s[68:71], 0 offen
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v7, s[68:71], 0 offen
	buffer_store_b8 v72, v8, s[68:71], 0 offen
	buffer_store_b8 v45, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v4, s[68:71], 0 offen
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v41, v7, s[68:71], 0 offen
	buffer_store_b8 v49, v8, s[68:71], 0 offen
	buffer_store_b8 v57, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v65, v4, s[68:71], 0 offen
	buffer_store_b8 v69, v6, s[68:71], 0 offen
	buffer_store_b8 v46, v7, s[68:71], 0 offen
	buffer_store_b8 v54, v8, s[68:71], 0 offen
	buffer_store_b8 v62, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v42, v4, s[68:71], 0 offen
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v7, s[68:71], 0 offen
	buffer_store_b8 v66, v8, s[68:71], 0 offen
	buffer_store_b8 v70, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v4, s[68:71], 0 offen
	buffer_store_b8 v55, v6, s[68:71], 0 offen
	buffer_store_b8 v63, v7, s[68:71], 0 offen
	buffer_store_b8 v43, v8, s[68:71], 0 offen
	buffer_store_b8 v51, v9, s[68:71], 0 offen
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v170
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v59, v3, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v3, v[1:2]
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v7, 2, v80
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v6, 2, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s69, s67, 0xffff
	s_and_b32 vcc_lo, vcc_lo, s81
	v_add_lshl_u32 v0, v2, s80, 1
	v_add_nc_u32_e32 v7, 0, v7
	s_mov_b32 s68, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add3_u32 v4, v7, v6, v4
	ds_load_u16 v1, v4
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp75:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 72
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 72
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19764
; TotalNumSgprs: 84
; NumVgprs: 256
; ScratchSize: 72
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 72
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 17
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
