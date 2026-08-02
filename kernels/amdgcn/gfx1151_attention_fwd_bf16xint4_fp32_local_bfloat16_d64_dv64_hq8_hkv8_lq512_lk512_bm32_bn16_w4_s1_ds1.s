	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s33, s[0:1], 0x5c
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v18, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s19, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s34, s3, 9
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v18
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_add_i32 s15, s19, s34
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v4, s19, v2
	s_mov_b32 s7, 0x31027000
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v63, 15, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v49, 48, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	v_and_b32_e32 v66, 16, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v9, 0x70, v9
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[58:59], null, s33, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s33, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s33, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, v10, v9
	s_and_b32 s5, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s33, s15, v[58:59]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v67, 0, v9
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v2, v2, s6, 1
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s19, s13
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s19, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s14
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s14
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 32
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x200
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s35, s6, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 15
	s_mov_b32 s4, 0
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v67, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[5:8] offset:2048
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 28
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s40, s5, -16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s35, s40
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v17, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow100
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b32 s18, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v65, 0x7c, v0
	v_and_b32_e32 v64, 64, v0
	v_lshlrev_b32_e32 v59, 2, v63
	v_lshrrev_b32_e32 v62, 1, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v117, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v2, 3, v0
	v_lshlrev_b32_e32 v15, 3, v63
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v5, 2, v65
	.loc	1 788 26                        ; attention.py:788:26
	v_bfe_i32 v4, v0, 5, 1
	v_and_b32_e32 v16, 12, v0
	v_and_b32_e32 v50, 31, v0
	v_lshl_or_b32 v15, v49, 5, v15
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_lshlrev_b32 v49, 5, v2
	v_and_b32_e32 v1, 32, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s19, v5
	v_lshlrev_b32_e32 v51, 1, v16
	v_lshlrev_b32_e32 v53, 2, v50
	v_and_b32_e32 v4, 0x84, v4
	v_lshl_or_b32 v16, v16, 7, v49
	v_lshrrev_b32_e32 v49, 1, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v6, 4, v18
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v7, s14, v3
	v_xor_b32_e32 v4, v4, v53
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_lshlrev_b32 v50, 4, v50
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_and_b32 v49, 12, v49
	v_lshrrev_b32_e32 v53, 4, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v68, v63, 7, v6
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v69, s12, v7
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v70, s13, v7
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v7, 4, v0
	v_or3_b32 v73, v50, v53, v49
	v_lshlrev_b32_e32 v49, 5, v0
	v_bfe_i32 v56, v0, 2, 1
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v8, 0, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v6, v1, 6, v68
	v_lshlrev_b32_e32 v52, 2, v1
	v_lshl_or_b32 v74, s3, 8, v7
	v_lshlrev_b32_e32 v7, 1, v1
	v_and_b32_e32 v49, 0x160, v49
	v_and_b32_e32 v56, 0x90, v56
	v_lshlrev_b32_e32 v1, 4, v1
	s_clause 0x2
	s_load_b128 s[4:7], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x28
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v14, 0x70, v68
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v60, 7, v0
	s_add_i32 s1, s3, s0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v3
	v_or3_b32 v76, v56, v1, v49
	v_mov_b32_e32 v49, 0
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v3, 0x70, v0
	v_bfe_i32 v0, v0, 0, 1
	v_and_b32_e32 v60, 0x700, v60
	v_add_nc_u32_e32 v83, 0, v14
	v_mov_b32_e32 v14, v49
	v_lshrrev_b32_e32 v3, 2, v3
	v_and_b32_e32 v0, 0x90, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v9, 0x70, v6, 0
	v_lshl_or_b32 v52, v66, 4, v52
	v_xad_u32 v10, 0x60, v6, 0
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[17:20], v10
	v_xor_b32_e32 v0, v0, v3
	v_add_nc_u32_e32 v3, 0, v60
	v_xad_u32 v9, 0x50, v6, 0
	v_xor_b32_e32 v15, v15, v62
	v_xad_u32 v10, v6, 64, 0
	v_xad_u32 v11, v6, 48, 0
	v_add_nc_u32_e32 v95, v3, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v0, 2, v2
	v_mov_b32_e32 v2, v49
	v_or3_b32 v71, v16, v52, v51
	v_lshl_add_u32 v16, v64, 1, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v12, v6, 32, 0
	v_xad_u32 v13, v6, 16, 0
	v_add_nc_u32_e32 v6, 0, v6
	v_lshlrev_b32_e32 v57, 1, v63
	v_add_nc_u32_e32 v84, v16, v15
	v_mov_b32_e32 v15, v49
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[37:40], v11
	ds_load_b128 v[33:36], v12
	ds_load_b128 v[45:48], v13
	ds_load_b128 v[41:44], v6
	v_xor_b32_e32 v11, 64, v68
	v_lshrrev_b32_e32 v54, 5, v64
	v_lshrrev_b32_e32 v61, 1, v64
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s42, s4, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s4, s1, -8
	v_add_nc_u32_e32 v80, 0, v11
	v_mov_b32_e32 v11, v49
	v_lshl_add_u32 v1, v66, 2, v8
	v_or_b32_e32 v72, v4, v54
	v_add_nc_u32_e32 v8, 0, v61
	v_xor_b32_e32 v6, 16, v68
	v_xor_b32_e32 v9, 32, v68
	v_add_nc_u32_e32 v93, v1, v57
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v10, 48, v68
	v_xor_b32_e32 v12, 0x50, v68
	v_xor_b32_e32 v13, 0x60, v68
	v_xor_b32_e32 v4, 8, v71
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[60:61], null, s7, v5, v[0:1]
	v_xor_b32_e32 v50, 16, v71
	v_xor_b32_e32 v51, 24, v71
	v_xor_b32_e32 v52, 0x108, v72
	v_xor_b32_e32 v53, 4, v73
	v_xor_b32_e32 v54, 8, v73
	v_xor_b32_e32 v55, 12, v73
	v_add_nc_u32_e32 v75, 0, v59
	v_xor_b32_e32 v56, 16, v76
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s4, s3, s4
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s6, s4
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s1, s5, s1
	v_add_nc_u32_e32 v77, 0, v6
	v_add_nc_u32_e32 v78, 0, v9
	v_add_nc_u32_e32 v79, 0, v10
	v_add_nc_u32_e32 v81, 0, v12
	v_add_nc_u32_e32 v82, 0, v13
	v_add_nc_u32_e32 v85, 0, v4
	v_add_nc_u32_e32 v86, 0, v50
	v_add_nc_u32_e32 v87, 0, v51
	v_add_nc_u32_e32 v88, 0, v52
	v_add_nc_u32_e32 v89, 0, v53
	v_add_nc_u32_e32 v90, 0, v54
	v_add_nc_u32_e32 v91, 0, v55
	v_add_nc_u32_e32 v94, v8, v57
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v96, 0, v56
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v8, v49
	v_add_nc_u32_e32 v92, v75, v7
	v_mov_b32_e32 v7, v49
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v61, 1, v0
	v_or_b32_e32 v97, 2, v0
	v_or_b32_e32 v98, 3, v0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v99, 1, v60
	v_add_nc_u32_e32 v100, 2, v60
	v_add_nc_u32_e32 v101, 3, v60
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s7, s19
	s_add_i32 s43, s4, s1
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s41, s3, 5
	s_add_i32 s43, s43, s5
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s22
	s_mov_b32 s29, s23
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s36, s10
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s18, v59
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s1, s35, s34
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v54, s35, v0
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s1, s1, s33
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v56, s35, v97
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v50, s1, v58, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v55, s35, v61
	v_or_b32_e32 v57, s35, v98
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s1, s43, s35
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v54, v70
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v103, s1, v60, 2
	v_add_lshl_u32 v104, s1, v100, 2
	v_add_lshl_u32 v106, s1, v99, 2
	v_add_lshl_u32 v107, s1, v101, 2
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[50:53], v50, s[24:27], 0 offen
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v54, v69
	v_cmp_ge_i32_e64 s6, v56, v69
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s7, v56, v70
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s4, v55, v69
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v55, v70
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s8, v57, v69
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s9, v57, v70
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s1, s1, s3
	s_and_b32 s3, s6, s7
	s_and_b32 s4, s4, s5
	s_and_b32 s1, s0, s1
	s_and_b32 s6, s8, s9
	s_and_b32 s5, s0, s3
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_cndmask_b32_e64 v54, 0x80000000, v103, s1
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s3, s0, s4
	s_and_b32 s4, s0, s6
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v55, 0x80000000, v104, s5
	v_cndmask_b32_e64 v57, 0x80000000, v107, s4
	v_cndmask_b32_e64 v56, 0x80000000, v106, s3
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v116, 0, v68
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s7, s35, 4
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s6, s35, 1
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s7, s7, s41
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v108, v108, v108 :: v_dual_mov_b32 v103, v117
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v105
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v106.l, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s35, s35, 16
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v118.h, v106.l
	v_mov_b16_e32 v119.h, v106.l
	v_mov_b16_e32 v120.h, v106.l
	v_mov_b16_e32 v122.h, v106.l
	v_mov_b16_e32 v121.h, v106.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v123.l, v106.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v109, 0, v71
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v115, 0, v72
	v_add_nc_u32_e32 v114, 0, v73
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v107, v102, v102 :: v_dual_add_nc_u32 v104, 0, v76
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v67, v[50:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x3
	buffer_load_b32 v111, v54, s[28:31], 0 offen
	buffer_load_b32 v112, v55, s[28:31], 0 offen
	buffer_load_b32 v110, v57, s[28:31], 0 offen
	buffer_load_b32 v113, v56, s[28:31], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v51, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[132:135], v116
	ds_load_b128 v[136:139], v77
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v56, v49
	v_mov_b32_e32 v50, v49
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v57, v75, v64
	v_mov_b32_e32 v55, v49
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v117, s6, v74
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s6, s7, s18
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v131, v56 :: v_dual_mov_b32 v128, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v130, v55 :: v_dual_mov_b32 v129, v54
	v_dual_mov_b32 v126, v51 :: v_dual_mov_b32 v127, v52
	v_dual_mov_b32 v124, v49 :: v_dual_mov_b32 v125, v50
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v52, s6, v59, 1
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[50:51], null, v117, s18, v[59:60]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e32 v56, 0x80000000, v52, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[124:131], v[132:139], v[41:48], v[124:131]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[132:135], v78
	ds_load_b128 v[136:139], v79
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v140, 0x80000000, v50, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[124:131], v[132:139], v[33:40], v[124:131]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[132:135], v80
	ds_load_b128 v[136:139], v81
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[124:131], v[132:139], v[25:32], v[124:131]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[132:135], v82
	ds_load_b128 v[136:139], v83
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[124:131], v[132:139], v[17:24], v[124:131]
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v50, 0xff800000, v111, s1
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v51, 0xff800000, v112, s5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v53, 0xff800000, v110, s4
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v52, 0xff800000, v113, s3
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v50
	v_cmp_neq_f32_e64 s6, 0xff800000, v51
	v_cmp_neq_f32_e64 s8, 0xff800000, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s9, 0xff800000, v52
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b64 v84, v[50:51], v[52:53] offset1:32
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s1, s1, s7
	s_and_b32 s5, s5, s6
	v_cndmask_b32_e64 v52, 0, 1, s1
	s_and_b32 s6, s3, s9
	s_and_b32 s3, s4, s8
	v_cndmask_b32_e64 v50, 0, 1, s5
	v_cndmask_b32_e64 v51, 0, 1, s3
	v_cndmask_b32_e64 v53, 0, 1, s6
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v50.l, 8, v50.l
	v_lshlrev_b16 v50.h, 8, v51.l
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[54:55], v109
	ds_load_b64 v[110:111], v85
	ds_load_b64 v[112:113], v86
	ds_load_b64 v[116:117], v87
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v50.l, v52.l, v50.l
	v_or_b16 v50.h, v53.l, v50.h
	ds_store_b16 v115, v50
	ds_store_b16_d16_hi v88, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v50, v114
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v50, v89
	ds_load_u16_d16 v51, v90
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v51, v91
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s35, s40
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v55
	v_dual_mul_f32 v110, 0x3fb8aa3b, v110 :: v_dual_mul_f32 v111, 0x3fb8aa3b, v111
	v_dual_mul_f32 v112, 0x3fb8aa3b, v112 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v113
	v_dual_mul_f32 v132, 0x3fb8aa3b, v116 :: v_dual_mul_f32 v133, 0x3fb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v54, s42, v124 :: v_dual_fmac_f32 v55, s42, v125
	v_dual_fmac_f32 v110, s42, v126 :: v_dual_fmac_f32 v111, s42, v127
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_and_b16 v52.l, 1, v50.l
	v_lshrrev_b16 v50.l, 8, v50.l
	v_and_b16 v52.h, 1, v50.h
	v_lshrrev_b16 v50.h, 8, v50.h
	v_and_b16 v53.l, 1, v51.l
	v_lshrrev_b16 v51.l, 8, v51.l
	v_lshrrev_b16 v53.h, 8, v51.h
	v_and_b16 v50.l, 1, v50.l
	v_and_b16 v50.h, 1, v50.h
	v_and_b16 v51.h, 1, v51.h
	v_and_b16 v51.l, 1, v51.l
	v_and_b16 v53.h, 1, v53.h
	v_cmp_eq_u16_e64 s4, 1, v52.l
	v_cmp_eq_u16_e64 s10, 1, v50.l
	v_cmp_eq_u16_e64 s7, 1, v52.h
	v_cmp_eq_u16_e64 s11, 1, v50.h
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v112, s42, v128 :: v_dual_fmac_f32 v113, s42, v129
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s8, 1, v53.l
	v_cmp_eq_u16_e64 s12, 1, v51.l
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v132, s42, v130 :: v_dual_fmac_f32 v133, s42, v131
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s9, 1, v51.h
	v_cmp_eq_u16_e64 s13, 1, v53.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v54, 0xff800000, v54, s4
	v_cndmask_b32_e64 v55, 0xff800000, v55, s10
	v_cndmask_b32_e64 v114, 0xff800000, v110, s7
	v_cndmask_b32_e64 v115, 0xff800000, v111, s11
	v_cndmask_b32_e64 v116, 0xff800000, v112, s8
	v_cndmask_b32_e64 v117, 0xff800000, v113, s12
	v_cndmask_b32_e64 v52, 0xff800000, v132, s9
	v_cndmask_b32_e64 v53, 0xff800000, v133, s13
	ds_store_b64 v109, v[54:55]
	ds_store_b64 v85, v[114:115]
	ds_store_b64 v86, v[116:117]
	ds_store_b64 v87, v[52:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v126, v140, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[124:125], v56, s[20:23], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v50, v54, v55, v114
	v_max3_f32 v51, v115, v116, v117
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b64 v[110:113], v84 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v56, v52, v53
.Ltmp4:
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v127.h, v106.l
	v_mov_b16_e64 v128.h, v106.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v50, v50, v51, v56
.Ltmp6:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v129.h, v106.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v51, v50, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v109, v105, v50, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v51, v55, v109
	v_sub_f32_e32 v55, v115, v109
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v115, v105, v109
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v56, v116, v109
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v116, v112, v112
.Ltmp10:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v50, v54, v109
	v_sub_f32_e32 v54, v114, v109
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v115, v115
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v115, 0, v115, s14
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v51, 0, v51, s10
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v55, 0, v55, s11
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v92, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v134, v57
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v114, v117, v109 :: v_dual_max_f32 v117, v110, v110
	v_sub_f32_e32 v52, v52, v109
	v_sub_f32_e32 v53, v53, v109
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v131, v55, 16, 1
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v105, v117, v116
.Ltmp12:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v50, v50
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v117, v51, 16, 1
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v105, v105, v111, v113
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v116, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v50, 0, v50, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v134
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v114, v114
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v134
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v115, v50, 16, 1
	v_cmp_o_f32_e64 s4, v50, v50
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v116, v116 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v134
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v52, v52
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v50, v50, v115, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v134
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v53, v53
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v114, 0, v114, s12
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v134
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v134
	v_mul_f32_e32 v3, v3, v134
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v115, v114, 16, 1
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v52, 0, v52, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v114, v114
	v_cmp_o_f32_e64 s9, v55, v55
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v53, 0, v53, s13
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v57, v114, v115, 0x7fff
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v115, v116, v116
.Ltmp19:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v54, v54
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s12, v52, v52
	v_cmp_o_f32_e64 s13, v53, v53
	v_add3_u32 v55, v55, v131, 0x7fff
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v105, v105, v115
.Ltmp21:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v56, v56
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v134
	v_mul_f32_e32 v8, v8, v134
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v54, 0, v54, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v51, v51
	v_add3_u32 v51, v51, v117, 0x7fff
	v_bfe_u32 v117, v52, 16, 1
	v_bfe_u32 v130, v54, 16, 1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v56, 0, v56, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v54, v54
	v_add3_u32 v114, v52, v117, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v51.h, s7
	v_add3_u32 v54, v54, v130, 0x7fff
	v_bfe_u32 v130, v53, 16, 1
	v_bfe_u32 v132, v56, 16, 1
	v_cmp_o_f32_e64 s10, v56, v56
	v_cndmask_b16 v51.h, 0x7fff, v55.h, s9
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s8
	v_add3_u32 v53, v53, v130, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v114.h, s12
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v114, v105
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v56, v56, v132, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v57.h, s11
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v114, v114 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v52.l, 0x7fff, v56.h, s10
	ds_store_b16 v93, v50
	ds_store_b16_d16_hi v93, v50 offset:128
	ds_store_b16 v93, v51 offset:256
	ds_store_b16_d16_hi v93, v51 offset:384
	ds_store_b16 v93, v52 offset:512
	ds_store_b16_d16_hi v93, v52 offset:640
	ds_store_b16 v93, v53 offset:768
	ds_store_b16_d16_hi v93, v53 offset:896
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v114, v114, v114
.Ltmp27:
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_load_u16_d16 v50, v94
	ds_load_u16_d16 v51, v94 offset:128
	ds_load_u16_d16 v52, v94 offset:256
	ds_load_u16_d16 v53, v94 offset:384
	ds_load_u16_d16 v54, v94 offset:512
	ds_load_u16_d16 v55, v94 offset:640
	ds_load_u16_d16 v56, v94 offset:768
	ds_load_u16_d16 v57, v94 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v94 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v94 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v94 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v94 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v94 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v94 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v94 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v94 offset:960
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v105, v105, v114
.Ltmp29:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v13, v134 :: v_dual_and_b32 v116, 0xffff0000, v124
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v108, v108, v105
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v14, v14, v134
	v_mul_f32_e32 v16, v16, v134
	v_dual_mul_f32 v1, v1, v134 :: v_dual_max_f32 v114, v107, v105
	v_mul_f32_e32 v2, v2, v134
	v_mul_f32_e32 v5, v5, v134
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v105, v110, v108
	v_sub_f32_e32 v107, v112, v108
	v_sub_f32_e32 v110, v111, v108
	v_sub_f32_e32 v111, v113, v108
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v117, 0xffff0000, v125
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v107, v107
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v111, v111
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v106.h, v124.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v112.l, v126.h
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v123.h, v125.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v124, 24, v126
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v125, 20, v126
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v105, 0, v105, s1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v107, 0, v107, s6
	v_cndmask_b32_e64 v110, 0, v110, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v111, 0, v111, s3
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v4, v4, v134 :: v_dual_add_f32 v105, v105, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v107, v110, v111
.Ltmp31:
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v110, v126, 0, 8
	v_lshrrev_b32_e32 v111, 8, v126
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v105, v105, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v110.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v110.h, v111.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v107, v105
	v_mov_b32_dpp v107, v107 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v115, v105, v107
.Ltmp36:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v105.l, v126.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v105.h, 4, v126.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v107.l, v126.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v126, v111, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v107.h, 4, v111.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v105.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v105.h, v105.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v111, v112, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v107.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v107.h, v107.h, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v110.l, 0, -16, s1
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v112, v124, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v118.l, v105.l, v110.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.l, v105.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v110.l, v126.l
	v_cmp_gt_i16_e64 s6, 0, v112.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v119.l, v105.h, v105.l, s4
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v111.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v111.l, 0, -16, s3
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v105.l, v125.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v110.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v105.h, v124.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v110.h
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v120.l, v107.l, v111.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b16 v111.l, v107.h, -16
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v110.l, 4, v124.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v107.l, v105.l, -16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v105.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v124, v118, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v111.l, v107.h, v111.l, s1
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v107.h, 0, -16, s3
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v107.l, v105.l, v107.l, s4
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v105.l, 0, -16, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v125, v119, 0, 16
	v_bfe_i32 v111, v111, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v112.l, v110.h, v107.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v107.h, v110.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v105.l, v105.h, v105.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_bfe_i32 v112, v112, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v110.l, v110.l, v107.h, s6
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v126, v120, 0, 16
	v_bfe_i32 v105, v105, 0, 16
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_bfe_i32 v110, v110, 0, 16
	v_mul_f32_e32 v124, v106, v124
	v_mul_f32_e32 v106, v106, v125
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v113, v102, v114 :: v_dual_mul_f32 v112, v116, v112
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v107, 0, 16
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v122.l, v124.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v111, v116, v111
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v121.l, v106.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v107, v107
	v_mul_f32_e32 v125, v123, v126
	v_mul_f32_e32 v110, v117, v110
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v116, 1, v122
	v_mov_b16_e32 v118.l, v111.h
	v_mov_b16_e32 v119.l, v112.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v105, v117, v105
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v117, 1, v121
	v_cmp_o_f32_e64 s3, v106, v106
	v_mov_b16_e32 v120.l, v125.h
	v_mov_b16_e64 v128.l, v110.h
	v_cmp_o_f32_e64 s1, v124, v124
	v_add3_u32 v106, v106, v117, 0x7fff
	v_and_b32_e32 v117, 1, v118
	v_and_b32_e32 v118, 1, v119
	v_mov_b16_e64 v129.l, v105.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v107, v123, v107 :: v_dual_and_b32 v120, 1, v120
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v116, v124, v116, 0x7fff
	v_and_b32_e32 v121, 1, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v122, 1, v129
	v_mov_b16_e32 v127.l, v107.h
	v_cmp_o_f32_e64 s9, v105, v105
	v_add3_u32 v119, v125, v120, 0x7fff
	v_cmp_o_f32_e64 s5, v111, v111
	v_add3_u32 v105, v105, v122, 0x7fff
	v_and_b32_e32 v120, 1, v127
	v_cmp_o_f32_e64 s6, v112, v112
	v_cmp_o_f32_e64 s8, v110, v110
	v_add3_u32 v112, v112, v118, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v116.h, s1
	v_add3_u32 v110, v110, v121, 0x7fff
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v102
	v_mov_b32_e32 v102, v114
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v111, v111, v117, 0x7fff
	v_cmp_o_f32_e64 s4, v125, v125
	v_cmp_o_f32_e64 s7, v107, v107
	v_cndmask_b16 v110.l, 0x7fff, v105.h, s9
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v105, v115
.Ltmp38:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v107, v107, v120, 0x7fff
	v_cndmask_b16 v106.h, 0x7fff, v106.h, s3
	v_cndmask_b16 v111.h, 0x7fff, v111.h, s5
	v_cndmask_b16 v111.l, 0x7fff, v112.h, s6
	v_cndmask_b16 v107.l, 0x7fff, v119.h, s4
	v_cndmask_b16 v107.h, 0x7fff, v107.h, s7
	v_cndmask_b16 v110.h, 0x7fff, v110.h, s8
	ds_store_2addr_b32 v95, v106, v111 offset1:8
	ds_store_2addr_b32 v95, v107, v110 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v104
	ds_load_b128 v[126:129], v104 offset:1024
	ds_load_b128 v[122:125], v96
	ds_load_b128 v[130:133], v96 offset:1024
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v104, v113
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v105, v105 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v117, v115, v105
	v_mov_b32_e32 v105, v109
.Ltmp41:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v104, 0, v104, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v117, v103, v104
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[118:125], v[50:57], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[50:57], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v17, v66
.LBB0_7:                                ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_add_nc_u32_e32 v0, 0, v65
	v_add3_u32 v18, 0, v59, v64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s17, s17, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b32 v0, v117
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v18, v18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 2, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v19, v0, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 32, v62
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s19, v19
	s_mov_b32 s19, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v20, null, v18, v18, v9
	v_div_scale_f32 v22, null, v18, v18, v10
	v_div_scale_f32 v24, null, v18, v18, v11
	v_rcp_f32_e32 v28, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v29, v22
	v_div_scale_f32 v26, null, v18, v18, v12
	v_div_scale_f32 v27, null, v18, v18, v13
	v_rcp_f32_e32 v30, v24
	v_div_scale_f32 v33, null, v18, v18, v14
	v_div_scale_f32 v21, vcc_lo, v9, v18, v9
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v36, -v20, v28, 1.0
	v_rcp_f32_e32 v32, v26
	v_rcp_f32_e32 v34, v27
	v_fma_f32 v37, -v22, v29, 1.0
	v_rcp_f32_e32 v39, v33
	v_fmac_f32_e32 v28, v36, v28
	v_div_scale_f32 v23, s1, v10, v18, v10
	v_fma_f32 v38, -v24, v30, 1.0
	v_fmac_f32_e32 v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v37, v21, v28
	v_div_scale_f32 v25, s2, v11, v18, v11
	v_fma_f32 v40, -v26, v32, 1.0
	v_fma_f32 v36, -v27, v34, 1.0
	v_fma_f32 v41, -v33, v39, 1.0
	v_fma_f32 v43, -v20, v37, v21
	v_fmac_f32_e32 v30, v38, v30
	v_mul_f32_e32 v38, v23, v29
	v_div_scale_f32 v35, s4, v13, v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v43, v28
	v_fmac_f32_e32 v39, v41, v39
	v_fma_f32 v44, -v22, v38, v23
	v_fmac_f32_e32 v34, v36, v34
	v_fmac_f32_e32 v32, v40, v32
	v_mul_f32_e32 v40, v25, v30
	v_fma_f32 v20, -v20, v37, v21
	v_fmac_f32_e32 v38, v44, v29
	v_div_scale_f32 v31, s3, v12, v18, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v24, v40, v25
	v_div_fmas_f32 v20, v20, v28, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v21, -v22, v38, v23
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v35, v34
	v_fmac_f32_e32 v40, v45, v30
	v_div_fixup_f32 v9, v20, v18, v9
	v_div_fmas_f32 v21, v21, v29, v38
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v20, null, v18, v18, v15
	v_fma_f32 v22, -v24, v40, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v10, v21, v18, v10
	v_fma_f32 v21, -v27, v43, v35
	v_mul_f32_e32 v42, v31, v32
	v_rcp_f32_e32 v24, v20
	v_div_fmas_f32 v22, v22, v30, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v43, v21, v34
	v_fma_f32 v36, -v26, v42, v31
	v_div_scale_f32 v29, null, v18, v18, v1
	v_div_fixup_f32 v11, v22, v18, v11
	v_div_scale_f32 v22, s2, v14, v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v36, v32
	v_div_scale_f32 v25, null, v18, v18, v16
	v_mul_f32_e32 v21, v22, v39
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v26, v42, v31
	v_div_scale_f32 v31, null, v18, v18, v2
	v_fma_f32 v26, -v33, v21, v22
	v_rcp_f32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v23, v23, v32, v42
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v26, v39
	v_div_scale_f32 v26, s3, v15, v18, v15
	v_div_fixup_f32 v12, v23, v18, v12
	v_fma_f32 v23, -v27, v43, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v22, -v33, v21, v22
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v27, -v20, v24, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v34, v43
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v35, s2, v1, v18, v1
	v_div_fmas_f32 v21, v22, v39, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v23, v18, v13
	v_fma_f32 v23, -v25, v28, 1.0
	v_fma_f32 v36, -v31, v33, 1.0
	v_fmac_f32_e32 v24, v27, v24
	v_rcp_f32_e32 v27, v29
	v_div_fixup_f32 v14, v21, v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v28, v23, v28 :: v_dual_fmac_f32 v33, v36, v33
	v_mul_f32_e32 v30, v26, v24
	v_div_scale_f32 v23, s4, v16, v18, v16
	v_div_scale_f32 v36, s5, v2, v18, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v20, v30, v26
	v_fma_f32 v32, -v29, v27, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v30, v22, v24 :: v_dual_fmac_f32 v27, v32, v27
	v_div_scale_f32 v32, null, v18, v18, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v20, v30, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v35, v27
	v_rcp_f32_e32 v37, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v20, v24, v30
	v_fma_f32 v21, -v29, v38, v35
	v_div_scale_f32 v24, s3, v3, v18, v3
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v20, v18, v15
	v_fmac_f32_e32 v38, v21, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v32, v37, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v37, v26, v37 :: v_dual_mul_f32 v34, v23, v28
	v_div_scale_f32 v26, null, v18, v18, v4
	v_fma_f32 v22, -v25, v34, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v22, v28
	v_mul_f32_e32 v22, v36, v33
	v_fma_f32 v23, -v25, v34, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v31, v22, v36
	v_fma_f32 v25, -v29, v38, v35
	v_rcp_f32_e32 v29, v26
	v_div_fmas_f32 v23, v23, v28, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v21, v33
	v_mul_f32_e32 v21, v24, v37
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v25, v25, v27, v38
	v_fma_f32 v27, -v31, v22, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v28, -v32, v21, v24
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v23, v18, v16
	v_fma_f32 v23, -v26, v29, 1.0
	v_div_fmas_f32 v22, v27, v33, v22
	v_fmac_f32_e32 v21, v28, v37
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v31, null, v18, v18, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v22, v18, v2
	v_fma_f32 v20, -v32, v21, v24
	v_div_scale_f32 v22, null, v18, v18, v5
	v_fmac_f32_e32 v29, v23, v29
	v_div_scale_f32 v23, null, v18, v18, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v20, v37, v21
	v_rcp_f32_e32 v21, v22
	v_div_scale_f32 v24, null, v18, v18, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v27, v23
	v_div_fixup_f32 v1, v25, v18, v1
	v_div_scale_f32 v25, vcc_lo, v4, v18, v4
	v_rcp_f32_e32 v28, v24
	v_div_fixup_f32 v3, v20, v18, v3
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v20, -v22, v21, 1.0
	v_mul_f32_e32 v30, v25, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v23, v27, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v20, v21
	v_div_scale_f32 v20, s2, v5, v18, v5
	v_fma_f32 v35, -v24, v28, 1.0
	v_fma_f32 v34, -v26, v30, v25
	v_fma_f32 v37, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v20, v21
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, s3, v6, v18, v6
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s4, v7, v18, v7
	v_fmac_f32_e32 v30, v34, v29
	v_fma_f32 v34, -v22, v36, v20
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, s5, v8, v18, v8
	v_dual_mul_f32 v38, v32, v27 :: v_dual_mul_f32 v39, v35, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v34, v21
	v_mul_f32_e32 v40, v37, v33
	v_fma_f32 v25, -v26, v30, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v26, -v23, v38, v32
	v_fma_f32 v34, -v24, v39, v35
	v_fma_f32 v20, -v22, v36, v20
	v_fma_f32 v22, -v31, v40, v37
	v_div_fmas_f32 v25, v25, v29, v30
	v_fmac_f32_e32 v38, v26, v27
	v_fmac_f32_e32 v39, v34, v28
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v40, v22, v33
	v_div_fmas_f32 v20, v20, v21, v36
	v_fma_f32 v21, -v23, v38, v32
	v_fma_f32 v22, -v24, v39, v35
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v23, -v31, v40, v37
	v_div_fixup_f32 v4, v25, v18, v4
	v_div_fmas_f32 v21, v21, v27, v38
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v20, v18, v5
	v_div_fmas_f32 v22, v22, v28, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v21, v18, v6
	v_div_fmas_f32 v23, v23, v33, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v22, v18, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v20, v11, 16, 1
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v23, v18, v8
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v18, s15, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v19, v9, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s4, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v9, v19, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v11, v20, 0x7fff
	v_add3_u32 v11, v12, v21, 0x7fff
	v_bfe_u32 v12, v14, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v13, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v12, v14, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v14, v14
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s4
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v13, v16, 16, 1
	v_bfe_u32 v14, v2, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s4, v15, v15
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v1, v2, v14, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s4
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_bfe_u32 v13, v5, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s4
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_bfe_u32 v5, v6, 16, 1
	v_bfe_u32 v12, v7, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	v_add3_u32 v4, v6, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v5, v7, v12, 0x7fff
	v_bfe_u32 v6, v8, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_eq_u32_e64 s4, 0, v17
	v_mov_b32_e32 v7, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_add3_u32 v6, v8, v6, 0x7fff
	v_cmp_o_f32_e64 s5, v8, v8
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v7, 0x1054, v7, s4
	v_cndmask_b32_e64 v12, 0x3276, v12, s4
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s3
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s5
	v_cndmask_b32_e64 v8, v9, v19, s4
	v_lshl_or_b32 v5, v7, 8, v7
	v_lshl_or_b32 v6, v12, 8, v12
	v_cndmask_b32_e64 v7, v19, v9, s4
	v_cndmask_b32_e64 v9, v11, v10, s4
	v_cndmask_b32_e64 v10, v10, v11, s4
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v11, v3, v1, s4
	v_cndmask_b32_e64 v1, v1, v3, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v18, s18, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v3, v5, 4, v5
	v_lshl_or_b32 v5, v6, 4, v6
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v12, v4, v2, s4
	v_cndmask_b32_e64 v2, v2, v4, s4
	v_permlanex16_b32 v4, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v3
	v_and_b32_e32 v13, 0x7060706, v5
	v_permlanex16_b32 v5, v10, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s18, v62
	v_cmp_gt_i32_e64 s2, s18, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v6, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v8, v7
	v_perm_b32 v2, v4, v8, v13
	v_perm_b32 v3, v5, v9, v7
	v_perm_b32 v4, v5, v9, v13
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v9, v18, v62, 1
	v_add_lshl_u32 v0, v18, v0, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v5, v6, v11, v7
	v_perm_b32 v6, v6, v11, v13
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v7, v10, v12, v7
	v_perm_b32 v8, v10, v12, v13
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[1:4], v9, s[16:19], 0 offen
	buffer_store_b128 v[5:8], v0, s[16:19], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 141
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_vgpr, 141
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7400
; TotalNumSgprs: 47
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 141
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
