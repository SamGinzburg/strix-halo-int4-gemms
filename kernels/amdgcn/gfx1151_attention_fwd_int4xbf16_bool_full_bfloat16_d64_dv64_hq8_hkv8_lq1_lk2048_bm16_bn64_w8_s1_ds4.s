	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s68, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v55, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v51, 0xc0, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v55
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v52, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v54, 31, v0
	v_and_b32_e32 v58, 0xf0, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v57, 3, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v56, 7, v0
	v_lshlrev_b32_e32 v53, 5, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s68
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s68
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s68
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s13, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s12, v3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v1, s42, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v4, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s68, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 3, v51
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s68
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v52, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s41, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s69, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s69, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s70, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s69, s70
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v55
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v55, 1
	v_dual_mov_b32 v21, 0x5410 :: v_dual_and_b32 v6, 24, v52
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v12, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v1
	v_and_b32_e32 v24, 0x60, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v25, v55, 5, v6
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v5, v0, 4, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[54:55], s[0:1], 0x30
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_lshlrev_b32 v4, 3, v56
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v22, 0x7632 :: v_dual_lshlrev_b32 v11, 2, v55
	s_lshr_b32 s0, s0, 29
	v_lshrrev_b32_e32 v19, 1, v58
	v_add3_u32 v66, 0, v2, v24
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v10, v1, s[56:59], 0 offen
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v17, 3, v54
	v_lshlrev_b32_e32 v18, 3, v55
	v_lshlrev_b32_e32 v23, 4, v0
	v_lshlrev_b32_e32 v8, 1, v51
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v65, v55, 8, v17
	v_mov_b32_e32 v69, v1
	v_lshl_or_b32 v17, v58, 4, v18
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v4
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[42:43], null, s43, v57, v[4:5]
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v67, 0, v23
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v23, 24, v25
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s71, s3, 11
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v68, 0, v25
	v_lshrrev_b32_e32 v7, 1, v0
	v_dual_mov_b32 v60, 0xff800000 :: v_dual_and_b32 v13, 14, v3
	v_lshlrev_b32_e32 v16, 6, v0
	v_or3_b32 v61, s71, v3, 62
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v27, v54, 2, v8
	v_xor_b32_e32 v17, v17, v19
	v_add_nc_u32_e32 v96, 0, v23
	v_and_b32_e32 v14, 0x380, v53
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_and_b32 v15, 30, v0
	v_and_b32_e32 v26, 24, v7
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v16, 64, v16
	v_xor_b32_e32 v85, v27, v13
	v_xor_b32_e32 v13, 8, v65
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v41, 24, v12
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v63, 0x800, v5
	v_or_b32_e32 v64, s71, v5
	v_mov_b32_e32 v5, v1
	v_xor_b32_e32 v12, v12, v26
	v_or3_b32 v86, v14, v15, v16
	v_add_nc_u32_e32 v98, 0, v13
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	v_mul_lo_u32 v9, v9, s15
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v14, 16, v65
	v_xor_b32_e32 v15, 24, v65
	v_xor_b32_e32 v16, 32, v65
	v_xor_b32_e32 v24, 40, v65
	v_xor_b32_e32 v26, 56, v65
	v_xor_b32_e32 v27, 64, v65
	v_xor_b32_e32 v28, 0x48, v65
	v_xor_b32_e32 v29, 0x50, v65
	v_xor_b32_e32 v30, 0x58, v65
	v_xor_b32_e32 v31, 0x60, v65
	v_xor_b32_e32 v32, 0x68, v65
	v_xor_b32_e32 v33, 0x70, v65
	v_xor_b32_e32 v34, 0x78, v65
	v_xor_b32_e32 v23, 12, v86
	v_xor_b32_e32 v35, 16, v86
	v_xor_b32_e32 v36, 20, v86
	v_xor_b32_e32 v37, 24, v86
	v_xor_b32_e32 v38, 28, v86
	v_add_nc_u32_e32 v97, 0, v12
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v59, 2, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v62, 0x800, v11
	v_mov_b32_e32 v8, v1
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v41
	v_or_b32_e32 v70, 16, v64
	v_or_b32_e32 v71, 18, v64
	v_or_b32_e32 v72, 20, v64
	v_or_b32_e32 v73, 22, v64
	v_or_b32_e32 v74, 24, v64
	v_or_b32_e32 v75, 26, v64
	v_or_b32_e32 v76, 28, v64
	v_or_b32_e32 v77, 30, v64
	v_or_b32_e32 v78, 32, v64
	v_or_b32_e32 v79, 34, v64
	v_or_b32_e32 v80, 36, v64
	v_or_b32_e32 v81, 38, v64
	v_or_b32_e32 v82, 40, v64
	v_or_b32_e32 v83, 42, v64
	v_or_b32_e32 v84, 44, v64
	v_or_b32_e32 v87, 46, v64
	v_or_b32_e32 v88, 48, v64
	v_or_b32_e32 v89, 50, v64
	v_or_b32_e32 v90, 52, v64
	v_or_b32_e32 v91, 54, v64
	v_or_b32_e32 v92, 56, v64
	v_or_b32_e32 v93, 58, v64
	v_add_nc_u32_e32 v99, 0, v14
	v_add_nc_u32_e32 v100, 0, v15
	v_add_nc_u32_e32 v101, 0, v16
	v_add_nc_u32_e32 v102, 0, v24
	v_add_nc_u32_e32 v104, 0, v26
	v_add_nc_u32_e32 v105, 0, v27
	v_add_nc_u32_e32 v106, 0, v28
	v_add_nc_u32_e32 v107, 0, v29
	v_add_nc_u32_e32 v108, 0, v30
	v_add_nc_u32_e32 v109, 0, v31
	v_add_nc_u32_e32 v110, 0, v32
	v_add_nc_u32_e32 v111, 0, v33
	v_add_nc_u32_e32 v112, 0, v34
	v_add_nc_u32_e32 v113, 0, v17
	v_add_nc_u32_e32 v117, 0, v23
	v_add_nc_u32_e32 v118, 0, v35
	v_add_nc_u32_e32 v119, 0, v36
	v_add_nc_u32_e32 v120, 0, v37
	v_add_nc_u32_e32 v121, 0, v38
	v_or_b32_e32 v126, 60, v64
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s72, s43, 5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s73, 0x76543210
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_and_b32 s65, s7, 0xffff
	s_mov_b32 s60, s10
	s_mov_b32 s64, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s61, s11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	v_and_b32_e32 v20, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s2, 0, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 8, v25
	v_cndmask_b32_e64 v18, 0x1054, v21, s2
	v_xor_b32_e32 v21, 16, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v94, 0, v20
	v_cndmask_b32_e64 v19, 0x3276, v22, s2
	v_xor_b32_e32 v25, 48, v65
	v_lshl_or_b32 v18, v18, 8, v18
	v_add_nc_u32_e32 v95, 0, v21
	ds_load_b64 v[43:44], v68
	ds_load_b64 v[45:46], v94
	ds_load_b64 v[47:48], v95
	ds_load_b64 v[49:50], v96
	v_lshl_or_b32 v19, v19, 8, v19
	v_and_b32_e32 v18, 0x540054, v18
	v_xor_b32_e32 v20, 0x210, v85
	v_xor_b32_e32 v21, 4, v86
	v_xor_b32_e32 v22, 8, v86
	v_and_b32_e32 v13, 0x760076, v19
	v_lshl_or_b32 v12, v18, 4, v18
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s2, s14, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s13, s9
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s12, 0x3fb8aa3b
	v_lshl_or_b32 v13, v13, 4, v13
	s_add_i32 s2, s2, s8
	v_add_nc_u32_e32 v103, 0, v25
	v_add_nc_u32_e32 v114, 0, v20
	v_add_nc_u32_e32 v115, 0, v21
	v_add_nc_u32_e32 v116, 0, v22
	v_and_b32_e32 v122, 0x5040504, v12
	v_add3_u32 v123, s2, v11, v9
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v125, s9, v10 :: v_dual_and_b32 v124, 0x7060706, v13
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v133.h, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v136.h, v135.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v132, v125, v9
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v9.l, 0xff, v130.h
	v_and_b16 v9.h, 0xff, v140.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v135.l, v129.l
	v_mov_b16_e64 v135.h, v134.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v125, v14
	v_mul_f32_e32 v165, v125, v10
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v10.l, 0xff, v130.l
	v_cmp_ne_u16_e64 s2, 0, v9.l
	v_cmp_ne_u16_e64 s4, 0, v9.h
	v_and_b16 v9.l, 0xff, v131.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v10.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s23, s6, s2
	s_and_b32 s26, s6, s4
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s2, 0, v9.l
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v158.h, v157.l
	v_mov_b16_e64 v157.l, v129.l
	v_mov_b16_e64 v157.h, v156.l
	v_mov_b16_e64 v156.l, v129.l
	v_mov_b16_e64 v156.h, v155.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v26, v125, v26
	v_mul_f32_e32 v25, v125, v25
	v_mul_f32_e32 v166, v125, v11
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v10, 0, 1, s23
	v_cndmask_b32_e64 v11, 0, 1, s26
	s_and_b32 s27, s6, s5
	s_and_b32 s29, s6, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v156, v26, v156 :: v_dual_mul_f32 v157, v25, v157
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v25, 0, 1, s27
	v_mov_b16_e32 v9.l, v10.l
	v_mov_b16_e32 v10.l, v11.l
	v_cndmask_b32_e64 v26, 0, 1, s29
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v9.l, 8, v9.l
	v_mov_b16_e32 v11.l, v25.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_mov_b16_e32 v10.l, v26.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v155.h, v154.l
	v_mov_b16_e64 v154.l, v129.l
	v_mov_b16_e64 v154.h, v153.l
	v_mov_b16_e64 v151.h, v150.l
	v_mov_b16_e64 v150.l, v129.l
	v_mov_b16_e64 v150.h, v149.l
	v_mov_b16_e64 v149.h, v148.l
	v_mov_b16_e64 v148.l, v129.l
	v_mov_b16_e64 v148.h, v147.l
	v_mov_b16_e64 v147.l, v129.l
	v_mov_b16_e64 v147.h, v146.l
	v_mov_b16_e64 v142.h, v141.l
	v_mov_b16_e64 v141.l, v129.l
	v_mov_b16_e64 v141.h, v139.l
	v_mov_b16_e64 v138.h, v137.l
	v_mov_b16_e64 v137.l, v129.l
	v_mov_b16_e64 v137.h, v136.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_dual_mul_f32 v32, v125, v32 :: v_dual_mul_f32 v141, v132, v141
	v_mul_f32_e32 v19, v125, v19
	v_mul_f32_e32 v12, v125, v12
	v_mul_f32_e32 v18, v125, v18
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v9.l, v11.l, v9.l
	v_add_nc_u32_e32 v11, 0, v85
	v_or_b16 v9.h, v10.l, v9.h
	v_add_nc_u32_e32 v10, 0, v86
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v28, v125, v28 :: v_dual_mul_f32 v147, v19, v147
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.h, v160.l
	v_mov_b16_e64 v160.l, v129.l
	v_mov_b16_e64 v160.h, v159.l
	v_mov_b16_e64 v159.l, v129.l
	v_mov_b16_e64 v159.h, v158.l
	v_mov_b16_e64 v158.l, v129.l
	v_mov_b16_e64 v155.l, v129.l
	v_mov_b16_e64 v152.h, v151.l
	v_mov_b16_e64 v151.l, v129.l
	v_mov_b16_e64 v149.l, v129.l
	v_mov_b16_e64 v139.l, v129.l
	v_mov_b16_e64 v139.h, v138.l
	v_mov_b16_e64 v138.l, v129.l
	v_mov_b16_e64 v134.l, v129.l
	v_mov_b16_e64 v134.h, v133.l
	v_mov_b16_e64 v133.l, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v20, v20
	v_dual_mul_f32 v40, v125, v40 :: v_dual_mul_f32 v131, v32, v150
	v_mul_f32_e32 v39, v125, v39
	v_dual_mul_f32 v27, v125, v27 :: v_dual_mul_f32 v154, v28, v154
	v_mul_f32_e32 v38, v125, v38
	v_dual_mul_f32 v31, v125, v31 :: v_dual_mul_f32 v148, v18, v148
	v_mul_f32_e32 v17, v125, v17
	v_dual_mul_f32 v15, v125, v15 :: v_dual_mul_f32 v150, v166, v138
	v_mul_f32_e32 v16, v125, v16
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v11, v9
	ds_store_b16_d16_hi v114, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v10
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v10 offset:32
	ds_load_u16_d16 v11, v116
	ds_load_u16_d16 v19, v120 offset:32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v146.l, v129.l
	v_mov_b16_e64 v146.h, v145.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v21, v21
	v_mul_f32_e32 v20, v125, v20
	v_mul_f32_e32 v40, v40, v158
	v_dual_mul_f32 v36, v125, v36 :: v_dual_mul_f32 v39, v39, v159
	v_mul_f32_e32 v155, v27, v155
	v_dual_mul_f32 v37, v125, v37 :: v_dual_mul_f32 v38, v38, v160
	v_dual_mul_f32 v130, v31, v151 :: v_dual_mul_f32 v149, v17, v149
	v_mul_f32_e32 v158, v14, v135
	v_dual_mul_f32 v139, v165, v139 :: v_dual_mul_f32 v160, v16, v133
	v_mul_f32_e32 v159, v15, v134
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16 v15, v118
	ds_load_u16_d16_hi v16, v119
	ds_load_u16_d16_hi v18, v120
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16 v16, v118 offset:32
	ds_load_u16_d16_hi v17, v119 offset:32
	ds_load_u16_d16 v10, v115
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v115 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v151, v12, v137
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16_hi v11, v116 offset:32
	ds_load_u16_d16 v12, v117
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v117 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v13, v13
	v_dual_mul_f32 v21, v125, v21 :: v_dual_mul_f32 v146, v20, v146
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16 v20, v121
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v20, v121 offset:32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v153.h, v152.l
	v_mov_b16_e64 v152.l, v129.l
	v_mov_b16_e64 v145.h, v144.l
	v_mov_b16_e64 v144.l, v129.l
	v_mov_b16_e64 v144.h, v143.l
	v_mov_b16_e64 v143.l, v129.l
	v_mov_b16_e64 v143.h, v142.l
	v_mov_b16_e64 v142.l, v129.l
	v_mov_b16_e64 v136.l, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v29, v29
	v_mul_f32_e32 v22, v125, v22
	v_mul_f32_e32 v23, v125, v23
	v_mul_f32_e32 v30, v125, v30
	v_mul_f32_e32 v24, v125, v24
	v_mul_f32_e32 v13, v125, v13
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v143, v23, v143
	v_dual_mul_f32 v29, v125, v29 :: v_dual_mul_f32 v140, v30, v152
	v_mul_f32_e32 v142, v24, v142
	v_mul_f32_e32 v152, v13, v136
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v13.l, 8, v9.l
	v_lshrrev_b16 v13.h, 8, v9.h
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v9.h, 1, v9.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v145.l, v129.l
	v_mov_b16_e64 v164.h, v163.l
	v_mov_b16_e64 v163.l, v129.l
	v_mov_b16_e64 v163.h, v162.l
	v_mov_b16_e64 v162.l, v129.l
	v_mov_b16_e64 v162.h, v161.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v35, v125, v35
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v15.h, 8, v11.l
	v_lshrrev_b16 v23.l, 8, v18.h
	v_cmp_eq_u16_e64 s38, 1, v9.l
	v_cmp_eq_u16_e64 s17, 1, v9.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v144, v22, v144 :: v_dual_add_nc_u32 v9, 0, v65
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v22.h, 8, v17.h
	v_lshrrev_b16 v14.l, 8, v10.l
	v_lshrrev_b16 v18.l, 8, v12.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v21, v145
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v21.l, 8, v15.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v129.h, v164.l
	v_mov_b16_e64 v164.l, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v36, v162
	v_dual_mul_f32 v34, v125, v34 :: v_dual_mul_f32 v35, v35, v163
	v_mul_f32_e32 v33, v125, v33
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v13.l, 1, v13.l
	v_lshrrev_b16 v14.h, 8, v10.h
	v_and_b16 v15.h, 1, v15.h
	v_lshrrev_b16 v17.l, 8, v11.h
	v_lshrrev_b16 v19.h, 8, v12.h
	v_lshrrev_b16 v21.h, 8, v16.l
	v_lshrrev_b16 v22.l, 8, v16.h
	v_and_b16 v22.h, 1, v22.h
	v_lshrrev_b16 v23.h, 8, v19.l
	v_and_b16 v23.l, 1, v23.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v24.l, 8, v20.l
	v_lshrrev_b16 v24.h, 8, v20.h
	v_and_b16 v19.l, 1, v19.l
	v_and_b16 v14.l, 1, v14.l
	v_and_b16 v10.l, 1, v10.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.l, v129.l
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v11.l, 1, v11.l
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v12.l, 1, v12.l
	v_and_b16 v21.l, 1, v21.l
	v_and_b16 v15.l, 1, v15.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v153.l, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v34, v164 :: v_dual_mul_f32 v33, v33, v129
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v13.h, 1, v13.h
	v_and_b16 v14.h, 1, v14.h
	v_and_b16 v10.h, 1, v10.h
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v11.h, 1, v11.h
	v_and_b16 v19.h, 1, v19.h
	v_and_b16 v12.h, 1, v12.h
	v_and_b16 v21.h, 1, v21.h
	v_and_b16 v16.l, 1, v16.l
	v_and_b16 v22.l, 1, v22.l
	v_and_b16 v16.h, 1, v16.h
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v23.h, 1, v23.h
	v_and_b16 v24.l, 1, v24.l
	v_and_b16 v20.l, 1, v20.l
	v_and_b16 v24.h, 1, v24.h
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s39, 1, v13.l
	v_cmp_eq_u16_e64 s34, 1, v15.h
	v_cmp_eq_u16_e64 s22, 1, v23.l
	v_cmp_eq_u16_e64 s8, 1, v22.h
	v_cmp_eq_u16_e64 s6, 1, v19.l
	v_cmp_eq_u16_e64 s36, 1, v10.l
	v_cmp_eq_u16_e64 s37, 1, v14.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v37, v161
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s35, 1, v11.l
	v_cmp_eq_u16_e64 s31, 1, v12.l
	v_cmp_eq_u16_e64 s33, 1, v18.l
	v_cmp_eq_u16_e64 s28, 1, v15.l
	v_cmp_eq_u16_e64 s30, 1, v21.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v25, 0xff800000, v33, s38
	v_cndmask_b32_e64 v26, 0xff800000, v34, s39
	v_cndmask_b32_e64 v30, 0xff800000, v38, s34
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s24, 1, v16.h
	v_cmp_eq_u16_e64 s25, 1, v22.l
	v_cmp_eq_u16_e64 s21, 1, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v140, s22
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s19, 1, v20.l
	v_cmp_eq_u16_e64 s20, 1, v24.l
	v_cmp_eq_u16_e64 s18, 1, v13.h
	v_cmp_eq_u16_e64 s16, 1, v10.h
	v_cmp_eq_u16_e64 s15, 1, v14.h
	v_cmp_eq_u16_e64 s13, 1, v11.h
	v_cmp_eq_u16_e64 s14, 1, v17.l
	v_cmp_eq_u16_e64 s11, 1, v12.h
	v_cmp_eq_u16_e64 s12, 1, v19.h
	v_cmp_eq_u16_e64 s10, 1, v16.l
	v_cmp_eq_u16_e64 s9, 1, v21.h
	v_cmp_eq_u16_e64 s7, 1, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v22, 0xff800000, v151, s8
	v_cndmask_b32_e64 v140, 0xff800000, v152, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v153, v29, v153
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s5, 1, v23.h
	v_cmp_eq_u16_e64 s2, 1, v20.h
	v_cmp_eq_u16_e64 s4, 1, v24.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v27, 0xff800000, v35, s36
	v_cndmask_b32_e64 v28, 0xff800000, v36, s37
	v_cndmask_b32_e64 v29, 0xff800000, v37, s35
	v_cndmask_b32_e64 v31, 0xff800000, v39, s31
	v_cndmask_b32_e64 v32, 0xff800000, v40, s33
	v_cndmask_b32_e64 v33, 0xff800000, v157, s28
	v_cndmask_b32_e64 v34, 0xff800000, v156, s30
	v_cndmask_b32_e64 v35, 0xff800000, v155, s24
	v_cndmask_b32_e64 v36, 0xff800000, v154, s25
	v_cndmask_b32_e64 v39, 0xff800000, v130, s19
	v_cndmask_b32_e64 v40, 0xff800000, v131, s20
	v_cndmask_b32_e64 v130, 0xff800000, v149, s17
	v_cndmask_b32_e64 v131, 0xff800000, v148, s18
	v_cndmask_b32_e64 v132, 0xff800000, v147, s16
	v_cndmask_b32_e64 v133, 0xff800000, v146, s15
	v_cndmask_b32_e64 v134, 0xff800000, v145, s13
	v_cndmask_b32_e64 v135, 0xff800000, v144, s14
	v_cndmask_b32_e64 v136, 0xff800000, v143, s11
	v_cndmask_b32_e64 v137, 0xff800000, v142, s12
	v_cndmask_b32_e64 v138, 0xff800000, v141, s10
	v_cndmask_b32_e64 v139, 0xff800000, v139, s9
	v_cndmask_b32_e64 v21, 0xff800000, v150, s7
	v_cndmask_b32_e64 v141, 0xff800000, v158, s5
	v_cndmask_b32_e64 v23, 0xff800000, v159, s2
	v_cndmask_b32_e64 v24, 0xff800000, v160, s4
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v144, v22, v140
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v153, s21
	ds_store_b64 v9, v[25:26]
	ds_store_b64 v98, v[27:28]
	ds_store_b64 v99, v[29:30]
	ds_store_b64 v100, v[31:32]
	ds_store_b64 v101, v[33:34]
	ds_store_b64 v102, v[35:36]
	ds_store_b64 v103, v[37:38]
	ds_store_b64 v104, v[39:40]
	ds_store_b64 v105, v[130:131]
	ds_store_b64 v106, v[132:133]
	ds_store_b64 v107, v[134:135]
	ds_store_b64 v108, v[136:137]
	ds_store_b64 v109, v[138:139]
	ds_store_b64 v110, v[21:22]
	ds_store_b64 v111, v[140:141]
	ds_store_b64 v112, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[9:12], v113 offset1:16
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v15, v28, v29, v30
	v_max3_f32 v17, v34, v35, v36
	v_max3_f32 v18, v37, v38, v39
	v_max3_f32 v19, v40, v130, v131
	v_max3_f32 v16, v31, v32, v33
	v_max3_f32 v20, v132, v133, v134
	v_max3_f32 v142, v135, v136, v137
	v_max3_f32 v143, v138, v139, v21
	v_max_f32_e32 v145, v23, v24
.Ltmp4:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v127
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v13, v11, v11 :: v_dual_max_f32 v14, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v13, v14, v13
	v_max3_f32 v13, v13, v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v14, v13
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v13, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v14, v13
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v13, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v14, v13
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v13, v13, v14
	v_max_f32_e32 v14, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max3_f32 v14, v14, v27, v15
	v_max3_f32 v15, v17, v18, v19
	v_max3_f32 v18, v20, v142, v143
	v_max3_f32 v19, v144, v141, v145
	v_max3_f32 v14, v14, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v14, v14, v18, v19
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v16, v14, s73, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v18, v127, v14, v16
	v_dual_max_f32 v16, v60, v60 :: v_dual_mov_b32 v17, v13
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v14, v127, v18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v20, v25, v18
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v26, v18
	v_sub_f32_e32 v26, v27, v18
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v14, v14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v28, v18
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v17, v17
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v29, v18
	v_sub_f32_e32 v29, v30, v18
	v_sub_f32_e32 v30, v31, v18
	v_sub_f32_e32 v31, v32, v18
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v15
.Ltmp19:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v15, v128, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v127, 0, v14, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v33, v18
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v60, v16, v13
	v_max_f32_e32 v17, v15, v13
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v26, v26
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v10, v10, v60
	v_sub_f32_e32 v12, v12, v60
	v_sub_f32_e32 v9, v9, v60
	v_sub_f32_e32 v11, v11, v60
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v15, v128, v17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v14, v10
	v_exp_f32_e32 v12, v12
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v128, v130, v18 :: v_dual_mul_f32 v1, v1, v127
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v15, v15
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v130, v131, v18 :: v_dual_mul_f32 v5, v5, v127
	v_dual_sub_f32 v131, v132, v18 :: v_dual_mul_f32 v6, v6, v127
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v14, s23
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v12, 0, v12, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v132, v133, v18 :: v_dual_mul_f32 v7, v7, v127
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v19, 0, v15, s40
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v14, v12
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v34, v18
	v_sub_f32_e32 v34, v35, v18
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v9
	v_mad_u64_u32 v[9:10], null, s74, s43, v[42:43]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_sub_nc_u32_e32 v10, 0x800, v57
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v35, v36, v18 :: v_dual_mul_f32 v2, v2, v127
	v_sub_f32_e32 v36, v37, v18
	v_sub_f32_e32 v37, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s23, s69, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v10, 1, v9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v9, v9, s72, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v39, v18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s23, s0, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v40, v18
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v13, v11
.Ltmp23:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v10, 0x80000000, v10, s23
	v_cndmask_b32_e64 v13, 0x80000000, v9, s23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s39
	v_cndmask_b32_e64 v27, 0, v27, s37
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v11, v12
.Ltmp25:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[64:67], 0 offen
	buffer_load_b128 v[13:16], v13, s[64:67], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v25, v25
	v_cmp_o_f32_e64 s26, v27, v27
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v133, v40
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v23, v23, v18 :: v_dual_mul_f32 v4, v4, v127
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp28:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v133, v133 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v127
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v133
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v140, v18
	v_sub_f32_e32 v140, v141, v18
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v30, s31
.Ltmp32:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v141, v40
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v20
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v141, v141 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v18
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v128, v128
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v20, v40, v141
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, v25.h
	v_mov_b16_e64 v141.h, v129.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v137, v137, v18
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s24
.Ltmp38:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v40, v20
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v141, 1, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v131, v131
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v139, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v25, v141, 0x7fff
	v_mov_b16_e32 v25.l, v27.h
	v_mov_b16_e64 v25.h, v129.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v134, v18
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v20, v20, v40
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s23
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v25, 1, v25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v134
	v_exp_f32_e32 v134, v135
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v23, v23
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v25, v27, v25, 0x7fff
	v_mov_b16_e64 v27.h, v129.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v18
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s26
	v_cmp_o_f32_e64 s26, v29, v29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v136
	v_exp_f32_e32 v136, v137
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v137, v20
.Ltmp45:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s2
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s69, s69, 64
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v67, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[13:16] offset:4096
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v21, v18
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v28, 0, v28, s35
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v20, v20, v137
.Ltmp49:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v142, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.h, v129.l
	v_mov_b16_e32 v27.l, v28.h
	v_cmp_o_f32_e64 s27, v28, v28
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v20, v69, v19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v137.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v127
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v137, v137
	v_and_b32_e32 v27, 1, v27
	v_mov_b32_e32 v69, v20
	v_and_b32_e32 v127, 1, v142
	v_mov_b16_e64 v142.l, v26.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v27, v28, v27, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v66
	ds_load_u16_d16 v10, v66 offset:256
	ds_load_u16_d16 v11, v66 offset:512
	ds_load_u16_d16 v12, v66 offset:768
	ds_load_u16_d16 v13, v66 offset:1024
	ds_load_u16_d16 v14, v66 offset:1280
	ds_load_u16_d16 v15, v66 offset:1536
	ds_load_u16_d16 v16, v66 offset:1792
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v127, v137, v127, 0x7fff
	v_and_b32_e32 v137, 1, v142
	v_mov_b16_e64 v142.l, v29.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s69, s70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v141.l, 0x7fff, v127.h, s23
	v_add3_u32 v127, v26, v137, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v137, 1, v142
	v_cmp_o_f32_e64 s23, v26, v26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v31, s33
	v_cndmask_b32_e64 v21, 0, v21, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v31, v29, v137, 0x7fff
	v_mov_b16_e64 v29.h, v129.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v29.l, v26.h
	v_mov_b16_e64 v137.l, v30.h
	v_mov_b16_e64 v137.h, v129.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v25.l, 0x7fff, v127.h, s23
	v_and_b32_e32 v28, 1, v29
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s26
	v_and_b32_e32 v31, 1, v137
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v33, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v28, v26, v28, 0x7fff
	v_cmp_o_f32_e64 s23, v26, v26
	v_add3_u32 v26, v30, v31, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v32, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v32.l, v27.h
	v_mov_b16_e64 v32.h, v129.l
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s23
	v_cmp_o_f32_e64 s23, v30, v30
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e64 v30.h, v129.l
	v_and_b32_e32 v32, 1, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v35, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v28.l, 0x7fff, v26.h, s23
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v26, 1, v30
	v_add3_u32 v30, v27, v32, 0x7fff
	v_mov_b16_e32 v32.l, v33.h
	v_mov_b16_e64 v35.h, v129.l
	v_mov_b16_e64 v32.h, v129.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v22, v22, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v27, v27
	v_add3_u32 v26, v31, v26, 0x7fff
	v_cmp_o_f32_e64 s24, v31, v31
	v_and_b32_e32 v27, 1, v35
	v_and_b32_e32 v31, 1, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v37, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v34, v34
	v_cndmask_b16 v30.l, 0x7fff, v26.h, s24
	v_add3_u32 v26, v34, v27, 0x7fff
	v_add3_u32 v27, v33, v31, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v36, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v32.h
	v_cmp_o_f32_e64 s21, v33, v33
	v_mov_b16_e64 v33.h, v129.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v128, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.l, v31.h
	v_and_b32_e32 v34, 1, v35
	v_cndmask_b16 v35.l, 0x7fff, v26.h, s22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v39, s20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v24, v24, v18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v27.h, s21
	v_and_b32_e32 v27, 1, v33
	v_add3_u32 v33, v32, v34, 0x7fff
	v_cmp_o_f32_e64 s20, v32, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v38, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v26.h
	v_mov_b16_e64 v34.h, v129.l
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v33.h, s20
	v_mov_b16_e32 v33.l, v32.h
	v_mov_b16_e64 v33.h, v129.l
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s19, v31, v31
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v130, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v26, v26
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v34, v26, v34, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v26.l, v31.h
	v_mov_b16_e64 v38.h, v129.l
	v_mov_b16_e64 v26.h, v129.l
	v_cndmask_b16 v36.l, 0x7fff, v27.h, s19
	v_add3_u32 v27, v32, v33, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v34.h, s17
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v131, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v32, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v132, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v38
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e32 v38.l, v34.h
	v_mov_b16_e64 v127.h, v129.l
	v_mov_b16_e32 v127.l, v32.h
	v_add3_u32 v33, v37, v33, 0x7fff
	v_add3_u32 v26, v31, v26, 0x7fff
	v_cmp_o_f32_e64 s15, v31, v31
	v_cmp_o_f32_e64 s17, v37, v37
	v_and_b32_e32 v31, 1, v38
	v_cndmask_b16 v39.l, 0x7fff, v27.h, s16
	v_and_b32_e32 v27, 1, v127
	v_cndmask_b16 v37.h, 0x7fff, v26.h, s15
	v_cndmask_b16 v37.l, 0x7fff, v33.h, s17
	v_add3_u32 v26, v34, v31, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v134, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v27, v32, v27, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v40, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v32, v32
	v_cmp_o_f32_e64 s14, v34, v34
	v_mov_b16_e32 v32.l, v31.h
	v_mov_b16_e64 v32.h, v129.l
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e64 v34.h, v129.l
	v_cndmask_b16 v38.h, 0x7fff, v27.h, s13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v136, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.l, 0x7fff, v26.h, s14
	v_and_b32_e32 v26, 1, v32
	v_and_b32_e32 v32, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v135, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.l, v27.h
	v_mov_b16_e64 v40.h, v129.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v22, v22
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v26, v31, v26, 0x7fff
	v_cmp_o_f32_e64 s11, v31, v31
	v_mov_b16_e32 v31.l, v34.h
	v_mov_b16_e64 v31.h, v129.l
	v_and_b32_e32 v40, 1, v40
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.h, 0x7fff, v26.h, s11
	v_cmp_o_f32_e64 s11, v27, v27
	v_and_b32_e32 v26, 1, v31
	v_add3_u32 v31, v27, v40, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v138, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v22, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v26, v34, v26, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v31.h, s11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v139, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v32, v33, v32, 0x7fff
	v_cmp_o_f32_e64 s12, v33, v33
	v_cndmask_b16 v40.l, 0x7fff, v26.h, s10
	v_mov_b16_e64 v26.h, v129.l
	v_mov_b16_e32 v26.l, v31.h
	v_mov_b16_e32 v33.l, v22.h
	v_mov_b16_e64 v33.h, v129.l
	v_cndmask_b16 v132.l, 0x7fff, v32.h, s12
	v_mov_b16_e32 v32.l, v27.h
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e64 v32.h, v129.l
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e64 s7, v31, v31
	v_cmp_o_f32_e64 s9, v22, v22
	v_add3_u32 v26, v31, v26, 0x7fff
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v31, v22, v33, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v133, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v21.h
	v_mov_b16_e64 v34.h, v129.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.h, 0x7fff, v31.h, s9
	v_mov_b16_e32 v31.l, v22.h
	v_mov_b16_e64 v31.h, v129.l
	v_add3_u32 v32, v27, v32, 0x7fff
	v_cmp_o_f32_e64 s8, v27, v27
	v_and_b32_e32 v27, 1, v34
	v_mov_b16_e32 v34.l, v23.h
	v_and_b32_e32 v31, 1, v31
	v_cndmask_b16 v159.h, 0x7fff, v26.h, s7
	v_cmp_o_f32_e64 s2, v21, v21
	v_add3_u32 v26, v21, v27, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v24, v24
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v22, v31, 0x7fff
	v_and_b32_e32 v31, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v140, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v22, v22
	v_cmp_o_f32_e64 s7, v23, v23
	v_cndmask_b16 v159.l, 0x7fff, v32.h, s8
	v_add3_u32 v22, v23, v31, 0x7fff
	v_mov_b16_e32 v32.l, v27.h
	v_cndmask_b16 v161.l, 0x7fff, v21.h, s5
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v24, 0, v24, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v32.h, v129.l
	v_cndmask_b16 v162.l, 0x7fff, v22.h, s7
	v_permlanex16_b32 v22, v141, s73, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v33.h, v129.l
	v_mov_b16_e32 v33.l, v24.h
	v_and_b32_e32 v32, 1, v32
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s23
	v_perm_b32 v21, v22, v141, v122
	v_perm_b32 v22, v22, v141, v124
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v9, v66 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v10, v66 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v11, v66 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v12, v66 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v13, v66 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v14, v66 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v15, v66 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v16, v66 offset:1920
	ds_load_u16_d16 v135, v66 offset:2048
	ds_load_u16_d16 v136, v66 offset:2304
	ds_load_u16_d16 v137, v66 offset:2560
	ds_load_u16_d16 v138, v66 offset:2816
	ds_load_u16_d16 v139, v66 offset:3072
	ds_load_u16_d16 v140, v66 offset:3328
	ds_load_u16_d16 v141, v66 offset:3584
	ds_load_u16_d16 v142, v66 offset:3840
	ds_load_u16_d16 v143, v66 offset:4096
	ds_load_u16_d16 v144, v66 offset:4352
	ds_load_u16_d16 v145, v66 offset:4608
	ds_load_u16_d16 v146, v66 offset:4864
	ds_load_u16_d16 v147, v66 offset:5120
	ds_load_u16_d16 v148, v66 offset:5376
	ds_load_u16_d16 v149, v66 offset:5632
	ds_load_u16_d16 v150, v66 offset:5888
	ds_load_u16_d16 v151, v66 offset:6144
	ds_load_u16_d16 v152, v66 offset:6400
	ds_load_u16_d16 v153, v66 offset:6656
	ds_load_u16_d16 v154, v66 offset:6912
	ds_load_u16_d16 v155, v66 offset:7168
	ds_load_u16_d16 v156, v66 offset:7424
	ds_load_u16_d16 v157, v66 offset:7680
	ds_load_u16_d16 v158, v66 offset:7936
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v32, v27, v32, 0x7fff
	v_cmp_o_f32_e64 s4, v27, v27
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v160.l, 0x7fff, v26.h, s2
	v_add3_u32 v27, v24, v33, 0x7fff
	v_permlanex16_b32 v24, v25, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v28, s73, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v161.h, 0x7fff, v32.h, s4
	v_cndmask_b16 v162.h, 0x7fff, v27.h, s6
	v_permlanex16_b32 v32, v30, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v35, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v36, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v127, v39, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v24, v25, v122
	v_perm_b32 v24, v24, v25, v124
	v_perm_b32 v25, v26, v29, v122
	v_perm_b32 v26, v26, v29, v124
	v_perm_b32 v27, v31, v28, v122
	v_perm_b32 v28, v31, v28, v124
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v135, v66 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v66 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v66 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v138, v66 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v66 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v140, v66 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v141, v66 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v142, v66 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v143, v66 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v66 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v145, v66 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v146, v66 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v147, v66 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v148, v66 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v149, v66 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v150, v66 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v151, v66 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v152, v66 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v153, v66 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v154, v66 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v155, v66 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v156, v66 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v157, v66 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v158, v66 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v128, v37, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v130, v38, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v133, v132, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v134, v40, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v29, v32, v30, v122
	v_perm_b32 v30, v32, v30, v124
	v_perm_b32 v31, v33, v35, v122
	v_perm_b32 v32, v33, v35, v124
	v_perm_b32 v33, v34, v36, v122
	v_perm_b32 v34, v34, v36, v124
	v_perm_b32 v35, v127, v39, v122
	v_perm_b32 v36, v127, v39, v124
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[21:28], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v163, v159, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v164, v160, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v165, v161, s73, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v166, v162, s73, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v128, v37, v122
	v_perm_b32 v128, v128, v37, v124
	v_perm_b32 v129, v130, v38, v122
	v_perm_b32 v130, v130, v38, v124
	v_perm_b32 v131, v133, v132, v122
	v_perm_b32 v132, v133, v132, v124
	v_perm_b32 v133, v134, v40, v122
	v_perm_b32 v134, v134, v40, v124
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[135:142], v[29:36], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v9, v163, v159, v122
	v_perm_b32 v10, v163, v159, v124
	v_perm_b32 v11, v164, v160, v122
	v_perm_b32 v12, v164, v160, v124
	v_perm_b32 v13, v165, v161, v122
	v_perm_b32 v14, v165, v161, v124
	v_perm_b32 v15, v166, v162, v122
	v_perm_b32 v16, v166, v162, v124
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[143:150], v[127:134], v[1:8]
	v_dual_mov_b32 v127, v18 :: v_dual_mov_b32 v128, v17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[151:158], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s74, s69, s71
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v11, 0x800, v59
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v9, s74, v59
	v_or_b32_e32 v12, 2, v64
	v_or_b32_e32 v13, 4, v64
	v_or_b32_e32 v14, 6, v64
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s69, v11
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[9:10], null, v9, s42, v[41:42]
	v_or_b32_e32 v15, 8, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v11, s69, v64, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s2, s1, s2
	v_or_b32_e32 v16, 10, v64
	v_or_b32_e32 v17, 12, v64
	v_or_b32_e32 v18, 14, v64
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s2, s69, v63
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v12, v12, s69, 1
	v_add_lshl_u32 v13, v13, s69, 1
	v_add_lshl_u32 v14, v14, s69, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[9:10], v9, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v15, v15, s69, 1
	v_add_lshl_u32 v19, v70, s69, 1
	v_add_lshl_u32 v20, v71, s69, 1
	v_add_lshl_u32 v21, v72, s69, 1
	v_add_lshl_u32 v22, v73, s69, 1
	v_add_lshl_u32 v23, v74, s69, 1
	v_add_lshl_u32 v24, v75, s69, 1
	v_add_lshl_u32 v25, v76, s69, 1
	v_add_lshl_u32 v26, v77, s69, 1
	v_add_lshl_u32 v27, v78, s69, 1
	v_add_lshl_u32 v28, v79, s69, 1
	v_add_lshl_u32 v29, v80, s69, 1
	v_add_lshl_u32 v30, v81, s69, 1
	v_add_lshl_u32 v31, v82, s69, 1
	v_add_lshl_u32 v32, v83, s69, 1
	v_add_lshl_u32 v33, v84, s69, 1
	v_add_lshl_u32 v34, v87, s69, 1
	v_add_lshl_u32 v35, v88, s69, 1
	v_add_lshl_u32 v36, v89, s69, 1
	v_add_lshl_u32 v37, v90, s69, 1
	v_add_lshl_u32 v38, v91, s69, 1
	v_add_lshl_u32 v39, v92, s69, 1
	v_add_lshl_u32 v40, v93, s69, 1
	v_add_lshl_u32 v129, v126, s69, 1
	v_add_lshl_u32 v130, s69, v61, 1
	v_add_lshl_u32 v16, v16, s69, 1
	v_add_lshl_u32 v17, v17, s69, 1
	v_add_lshl_u32 v18, v18, s69, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v172, s51 :: v_dual_mov_b32 v171, s50
	v_dual_mov_b32 v170, s49 :: v_dual_mov_b32 v169, s48
	v_dual_mov_b32 v168, s47 :: v_dual_mov_b32 v167, s46
	v_dual_mov_b32 v166, s45 :: v_dual_mov_b32 v165, s44
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s69, v62
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s6, vcc_lo, s2
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v97, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v164, v11, s[60:63], 0 offen
	buffer_load_u16 v163, v12, s[60:63], 0 offen
	buffer_load_u16 v162, v13, s[60:63], 0 offen
	buffer_load_u16 v161, v14, s[60:63], 0 offen
	buffer_load_u16 v160, v15, s[60:63], 0 offen
	buffer_load_u16 v159, v16, s[60:63], 0 offen
	buffer_load_u16 v158, v17, s[60:63], 0 offen
	buffer_load_u16 v157, v18, s[60:63], 0 offen
	buffer_load_u16 v156, v19, s[60:63], 0 offen
	buffer_load_u16 v155, v20, s[60:63], 0 offen
	buffer_load_u16 v154, v21, s[60:63], 0 offen
	buffer_load_u16 v153, v22, s[60:63], 0 offen
	buffer_load_u16 v152, v23, s[60:63], 0 offen
	buffer_load_u16 v151, v24, s[60:63], 0 offen
	buffer_load_u16 v150, v25, s[60:63], 0 offen
	buffer_load_u16 v149, v26, s[60:63], 0 offen
	buffer_load_u16 v148, v27, s[60:63], 0 offen
	buffer_load_u16 v147, v28, s[60:63], 0 offen
	buffer_load_u16 v146, v29, s[60:63], 0 offen
	buffer_load_u16 v145, v30, s[60:63], 0 offen
	buffer_load_u16 v144, v31, s[60:63], 0 offen
	buffer_load_u16 v143, v32, s[60:63], 0 offen
	buffer_load_u16 v142, v33, s[60:63], 0 offen
	buffer_load_u16 v141, v34, s[60:63], 0 offen
	buffer_load_u16 v139, v35, s[60:63], 0 offen
	buffer_load_u16 v138, v36, s[60:63], 0 offen
	buffer_load_u16 v137, v37, s[60:63], 0 offen
	buffer_load_u16 v136, v38, s[60:63], 0 offen
	buffer_load_u16 v135, v39, s[60:63], 0 offen
	buffer_load_u16 v134, v40, s[60:63], 0 offen
	buffer_load_u16 v133, v129, s[60:63], 0 offen
	buffer_load_u16 v132, v130, s[60:63], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v68 offset1:1
	ds_load_2addr_stride64_b64 v[173:176], v68 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[177:180], v94 offset1:1
	ds_load_2addr_stride64_b64 v[181:184], v94 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[185:188], v95 offset1:1
	ds_load_2addr_stride64_b64 v[189:192], v95 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[193:196], v96 offset1:1
	ds_load_2addr_stride64_b64 v[197:200], v96 offset0:2 offset1:3
	v_mov_b16_e64 v130.l, 0
	v_mov_b16_e64 v129.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v130.h, v130.l
	v_mov_b16_e64 v131.l, v130.l
	v_mov_b16_e64 v140.l, v129.l
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[43:44], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[11:12], v[43:44], v[165:172] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[173:174], v[43:44], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[43:44], v[165:172] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[177:178], v[45:46], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[179:180], v[45:46], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[181:182], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[45:46], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[185:186], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[47:48], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[193:194], v[49:50], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[49:50], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[197:198], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[199:200], v[49:50], v[9:16] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s4, s6
	s_cbranch_execz .LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v130, s69, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v131, 31, v130
	v_add_co_u32 v130, s2, s54, v130
	v_add_co_ci_u32_e64 v131, null, s55, v131, s2
	global_load_b32 v130, v[130:131], off
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v140, 24, v130
	v_lshrrev_b32_e32 v131, 8, v130
	s_branch .LBB0_2
.LBB0_5:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v20, v8
.LBB0_6:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v58
	s_mov_b32 s1, 0x76543210
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v11, 28, v57
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp51:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v17 :: v_dual_cndmask_b32 v12, 0, v20
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v55
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s68, s68, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp55:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp57:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp59:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v54
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v10, v56, 2, 0
.Ltmp62:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s68
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp65:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_dual_mov_b32 v6, v3 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_barrier
	ds_load_b32 v10, v10
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_add_f32_e32 v3, v3, v6
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v9
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp76:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v2 :: v_dual_add_f32 v12, v12, v16
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v14, v14, v18
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v5, v10
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v9
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v3
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v10, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_add_f32 v14, v14, v18
.Ltmp92:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v12
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v8, v20 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v11
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v2
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v7, v5 :: v_dual_add_f32 v2, v2, v11
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_add_f32 v4, v3, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp104:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp106:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v10 :: v_dual_mov_b32 v10, v7
	v_dual_add_f32 v13, v13, v17 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v18, v8, v20
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v22, v18
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v12, v16 :: v_dual_add_f32 v13, v13, v17
	v_add_f32_e32 v17, v15, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v12, v8 :: v_dual_mov_b32 v15, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v15
	v_add_f32_e32 v16, v17, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v18, v22
	v_add_f32_e32 v15, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v16 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v18, v15
	v_mov_b32_e32 v14, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_8
; %bb.7:
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp122:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp124:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_8:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v13, v14 :: v_dual_lshlrev_b32 v9, 2, v0
	v_add_f32_e32 v15, v15, v18
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v2, v5
	v_dual_add_f32 v7, v8, v12 :: v_dual_and_b32 v2, 0xc0, v9
	v_add_f32_e32 v4, v1, v3
.Ltmp126:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v52
	v_and_b32_e32 v1, 28, v52
	v_and_b32_e32 v3, 32, v53
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v17, v20 :: v_dual_add_nc_u32 v2, 0, v2
	v_add_f32_e32 v16, v16, v19
.Ltmp128:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v2, v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[14:17] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v51
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp129:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 201
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 201
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10452
; TotalNumSgprs: 77
; NumVgprs: 201
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 201
; Occupancy: 7
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     201
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
