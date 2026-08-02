	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s8, s[0:1], 0x5c
	s_load_b32 s10, s[0:1], 0x84
	s_load_b64 s[4:5], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 3, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v18, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s14, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s9, s3, 9
	s_mov_b32 s7, 0x31027000
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s11, s14, s9
	.loc	1 787 79 is_stmt 0              ; attention.py:787:79
	v_lshlrev_b32_e32 v2, 3, v18
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s14, v50
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v61, 32, v0
	v_and_b32_e32 v63, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v67, 1, v61
	v_lshlrev_b32_e32 v68, 1, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v9, 0x70, v9
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s8, v50
	s_mul_i32 s2, s8, s11
	s_lshl_b32 s6, s8, 4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s15, s14, s10
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, v10, v9
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s15, s15, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v1, v1, v2, s2
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s8, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v69, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s6, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_gt_i32 s15, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v5, 0x80000000, v1
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(1)
	ds_store_b128 v69, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v69, v[5:8] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_lshlrev_b32_e32 v19, 1, v61
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_lshlrev_b32_e32 v17, 1, v63
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 19                          ; attention.py:0:19
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow91
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x38
	s_load_b32 s28, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v49, 2, v63
	v_and_b32_e32 v62, 64, v0
	v_lshrrev_b32_e32 v64, 1, v61
	v_bfe_u32 v65, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v5, v8 :: v_dual_add_nc_u32 v66, 0, v49
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
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
	v_mov_b32_e32 v72, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v87, 0xff800000 :: v_dual_lshlrev_b32 v2, 4, v18
	v_and_b32_e32 v1, 16, v0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_add_nc_u32_e32 v6, 0, v61
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v7, 0x70, v0
	v_lshrrev_b32_e32 v8, 4, v0
	v_bfe_i32 v13, v0, 0, 1
	v_lshlrev_b32_e32 v14, 5, v0
	v_bfe_i32 v15, v0, 2, 1
	v_lshlrev_b32_e32 v0, 7, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v70, v63, 7, v2
	v_lshl_add_u32 v6, v1, 2, v6
	v_lshrrev_b32_e32 v1, 1, v62
	v_lshrrev_b32_e32 v7, 2, v7
	v_and_b32_e32 v13, 0x90, v13
	v_and_b32_e32 v0, 0x700, v0
	s_clause 0x2
	s_load_b32 s18, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[16:17], s[0:1], 0x28
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s0, s15, 0x200
	.loc	1 759 21                        ; attention.py:759:21
	v_or3_b32 v3, s14, v63, v64
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s0, s0, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v4, v61, 6, v70
	v_and_b32_e32 v14, 0x160, v14
	v_and_b32_e32 v15, 0x90, v15
	v_lshlrev_b32_e32 v16, 4, v61
	v_add_nc_u32_e32 v51, 0, v1
	v_xor_b32_e32 v7, v13, v7
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v1, s9, v50
	v_add_nc_u32_e32 v13, 0, v0
	v_lshl_or_b32 v0, s3, 8, v8
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s1, s0, 31
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc_lo, s28, v49
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s1, s1, 28
	v_or3_b32 v73, v15, v16, v14
	s_add_i32 s1, s0, s1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v3
	.loc	1 903 13                        ; attention.py:903:13
	v_mul_lo_u32 v14, s8, v1
	v_mad_u64_u32 v[0:1], null, s28, v0, v[49:50]
	v_mov_b32_e32 v49, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v71, s10, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v3, 0x70, v4, 0
	v_xad_u32 v5, 0x60, v4, 0
	ds_load_b128 v[21:24], v3
	ds_load_b128 v[17:20], v5
	v_xad_u32 v3, 0x50, v4, 0
	v_xad_u32 v5, v4, 64, 0
	v_xad_u32 v9, v4, 48, 0
	v_xad_u32 v10, v4, 32, 0
	v_xad_u32 v11, v4, 16, 0
	v_add_nc_u32_e32 v4, 0, v4
	ds_load_b128 v[29:32], v3
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[37:40], v9
	ds_load_b128 v[33:36], v10
	ds_load_b128 v[45:48], v11
	ds_load_b128 v[41:44], v4
	v_xor_b32_e32 v3, 16, v70
	v_xor_b32_e32 v4, 32, v70
	v_xor_b32_e32 v5, 48, v70
	v_xor_b32_e32 v9, 64, v70
	v_xor_b32_e32 v10, 0x50, v70
	v_xor_b32_e32 v11, 0x60, v70
	v_xor_b32_e32 v12, 0x70, v70
	v_xor_b32_e32 v8, 16, v73
	.loc	1 811 33                        ; attention.py:811:33
	s_and_b32 s29, s1, -16
	.loc	1 903 13                        ; attention.py:903:13
	s_mul_i32 s1, s3, s28
	v_lshl_add_u32 v75, v14, 1, v2
	s_lshl_b32 s1, s1, 6
	v_add_nc_u32_e32 v76, 0, v3
	v_lshl_add_u32 v74, v63, 3, s1
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v77, 0, v4
	v_add_nc_u32_e32 v78, 0, v5
	v_add_nc_u32_e32 v79, 0, v9
	v_add_nc_u32_e32 v80, 0, v10
	v_add_nc_u32_e32 v81, 0, v11
	v_add_nc_u32_e32 v82, 0, v12
	v_add_nc_u32_e32 v83, v6, v68
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v86, 0, v8
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v15, v49
	v_dual_mov_b32 v16, v49 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_dual_mov_b32 v5, v49 :: v_dual_add_nc_u32 v84, v51, v68
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v8, v49
	v_add_nc_u32_e32 v85, v13, v7
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v7, v49
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s30, s18, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 903 13                        ; attention.py:903:13
	s_mov_b32 s15, 0
	s_and_b32 s25, s7, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_lshl_b32 s31, s28, 1
	s_lshl_b32 s33, s28, 3
	s_lshl_b32 s34, s8, 5
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s24, s6
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v50, 0x80000000, v75, s2
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v53, v49 :: v_dual_cndmask_b32 v90, 0x80000000, v0
	v_dual_mov_b32 v52, v49 :: v_dual_cndmask_b32 v91, 0x80000000, v74
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[57:60], v50, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v56, v49 :: v_dual_add_nc_u32 v103, 0, v73
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v88, 0, v70
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v89, s15, v65
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v93, v66, v62
	v_dual_mov_b32 v55, v49 :: v_dual_add_nc_u32 v92, v66, v67
	v_dual_mov_b32 v101, v56 :: v_dual_add_nc_u32 v74, s31, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v104, v72 :: v_dual_mov_b32 v99, v54
	v_dual_mov_b32 v97, v52 :: v_dual_add_nc_u32 v0, s33, v0
	v_dual_mov_b32 v100, v55 :: v_dual_mov_b32 v95, v50
	v_mov_b32_e32 v98, v53
	v_mov_b32_e32 v96, v51
	v_dual_mov_b32 v94, v49 :: v_dual_add_nc_u32 v55, 12, v89
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v50, 2, v89
	v_add_nc_u32_e32 v51, 4, v89
	v_add_nc_u32_e32 v52, 6, v89
	v_add_nc_u32_e32 v53, 8, v89
	v_add_nc_u32_e32 v54, 10, v89
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v56, 14, v89
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s3, v50, v71
	v_cmp_le_i32_e64 s4, v51, v71
	v_cmp_le_i32_e64 s5, v52, v71
	v_cmp_le_i32_e64 s6, v53, v71
	v_cmp_le_i32_e64 s7, v54, v71
	v_cmp_le_i32_e64 s8, v55, v71
	v_cmp_le_i32_e64 s9, v56, v71
	v_cmp_le_i32_e64 s1, v89, v71
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s3, s0, s3
	s_and_b32 s4, s0, s4
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s0, s9
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	s_and_b32 s1, s0, s1
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_mov_b16_e32 v102.l, 0
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v87
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s15, s15, 16
	v_add_nc_u32_e32 v75, s34, v75
	s_cmp_lt_i32 s15, s29
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v107.l, v102.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v72.h, v102.l
	v_mov_b16_e32 v89.h, v102.l
	v_mov_b16_e32 v109.h, v102.l
	v_mov_b16_e32 v108.h, v102.l
	v_mov_b16_e32 v111.h, v102.l
	v_mov_b16_e32 v110.h, v102.l
	v_mov_b16_e32 v105.h, v102.l
	v_mov_b16_e32 v106.h, v102.l
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v69, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v90, v90, s[24:27], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[59:60], v91, s[16:19], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v88
	ds_load_b128 v[54:57], v76
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[94:101], v[50:57], v[41:48], v[94:101]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v77
	ds_load_b128 v[54:57], v78
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[94:101], v[50:57], v[33:40], v[94:101]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v79
	ds_load_b128 v[54:57], v80
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[94:101], v[50:57], v[25:32], v[94:101]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[50:53], v81
	ds_load_b128 v[54:57], v82
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[94:101], v[50:57], v[17:24], v[94:101]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v52, s30, v96 :: v_dual_mul_f32 v57, s30, v101
	v_mul_f32_e32 v56, s30, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, s30, v94 :: v_dual_mul_f32 v53, s30, v97
	v_mul_f32_e32 v51, s30, v95
	v_mul_f32_e32 v55, s30, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v56, 0xff800000, v56, s8
	v_cndmask_b32_e64 v57, 0xff800000, v57, s9
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v54, s30, v98
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v50, 0xff800000, v50, s1
	v_cndmask_b32_e64 v51, 0xff800000, v51, s3
	v_cndmask_b32_e64 v52, 0xff800000, v52, s4
	v_cndmask_b32_e64 v53, 0xff800000, v53, s5
	v_cndmask_b32_e64 v55, 0xff800000, v55, s7
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v91, v56, v57
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v54, 0xff800000, v54, s6
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v58, v50, v51, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v88, v53, v54, v55
	v_max3_f32 v58, v58, v88, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v88, v58, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v112, v87, v58, v88
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v53, v53, v112
	v_sub_f32_e32 v50, v50, v112
	v_sub_f32_e32 v51, v51, v112
	v_sub_f32_e32 v52, v52, v112
	v_sub_f32_e32 v54, v54, v112
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v52, v52
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v53, 0, v53, s5
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v50, 0, v50, s1
	v_cndmask_b32_e64 v51, 0, v51, s3
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v55, v55, v112
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v52, 0, v52, s4
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v91, v53, 16, 1
	v_cmp_o_f32_e64 s5, v53, v53
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v96, v50, v51
.Ltmp7:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v55, v55
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v97, v52, v53
.Ltmp9:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v53, v53, v91, 0x7fff
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v58, v87, v112
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v87, v51, 16, 1
	v_cmp_o_f32_e64 s3, v51, v51
	v_cmp_o_f32_e64 s1, v50, v50
	v_bfe_u32 v88, v52, 16, 1
	v_cmp_o_f32_e64 s4, v52, v52
	v_add3_u32 v51, v51, v87, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v55, 0, v55, s7
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v87, v96, v97
.Ltmp11:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v58, v58
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v52, v52, v88, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v55, v55
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v113, 0, v58, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v58, v50, 16, 1
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v92, v113
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v50, v50, v58, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v114, v93
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v93, v55, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s1
	v_cndmask_b16 v50.h, 0x7fff, v51.h, s3
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v114
	v_mul_f32_e32 v9, v9, v114
	v_mul_f32_e32 v12, v12, v114
	v_mul_f32_e32 v14, v14, v114
	v_mul_f32_e32 v16, v16, v114
	v_mul_f32_e32 v2, v2, v114
	v_mul_f32_e32 v4, v4, v114
	v_mul_f32_e32 v5, v5, v114
	v_mul_f32_e32 v6, v6, v114
	v_mul_f32_e32 v7, v7, v114
	v_mul_f32_e32 v8, v8, v114
	v_mul_f32_e32 v13, v13, v114
	v_mul_f32_e32 v15, v15, v114
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v88, 8, v90
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v91, 0xffff0000, v59
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v54, v54
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v102.h, v59.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v56, v56, v112
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v107.h, v60.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v72.l, v90.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v59.l, v90.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v59.h, 4, v88.l
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v54, 0, v54, s6
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v57, v57, v112
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v59.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v59.h, v59.h, 15
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v98, v54, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp13:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v57, v57
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v56, 0, v56, s8
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v92, v54, 16, 1
	v_cmp_o_f32_e64 s6, v54, v54
	v_add3_u32 v55, v55, v93, 0x7fff
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v93, 24, v90
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v94, v56, 16, 1
	v_add3_u32 v54, v54, v92, 0x7fff
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v92, 0xffff0000, v60
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v60.h, v88.l, 15
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v57, 0, v57, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v56, v56
	v_cndmask_b16 v52.l, 0x7fff, v54.h, s6
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v58, v56, v57
.Ltmp15:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v95, v57, 16, 1
	v_add3_u32 v56, v56, v94, 0x7fff
	v_cmp_o_f32_e64 s9, v57, v57
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v58, v98, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v57, v57, v95, 0x7fff
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v95, v93, 0, 8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v53.l, 0x7fff, v56.h, s8
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v115, v87, v58
.Ltmp19:
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v87, v90, 0, 8
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v58.l, v90.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v58.h, 4, v90.l
	v_lshrrev_b32_e32 v90, 20, v90
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v53.h, 0x7fff, v57.h, s9
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v60.l, v87.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v58.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v58.h, v58.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v87, v88, 0, 8
	v_bfe_i32 v88, v72, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v60.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v60.l, 0, -16, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_store_b16 v83, v50
	ds_store_b16_d16_hi v83, v50 offset:128
	ds_store_b16 v83, v51 offset:256
	ds_store_b16_d16_hi v83, v51 offset:384
	ds_store_b16 v83, v52 offset:512
	ds_store_b16_d16_hi v83, v52 offset:640
	ds_store_b16 v83, v53 offset:768
	ds_store_b16_d16_hi v83, v53 offset:896
	s_waitcnt lgkmcnt(0)
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v72.l, v88.l
	.loc	1 1019 30                       ; attention.py:1019:30
	s_barrier
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v89.l, v58.l, v60.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v58.l, v58.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v60.l, v87.l
	v_mov_b16_e32 v87.l, v95.l
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	ds_load_u16_d16 v50, v84
	ds_load_u16_d16 v51, v84 offset:128
	ds_load_u16_d16 v52, v84 offset:256
	ds_load_u16_d16 v53, v84 offset:384
	ds_load_u16_d16 v54, v84 offset:512
	ds_load_u16_d16 v55, v84 offset:640
	ds_load_u16_d16 v56, v84 offset:768
	ds_load_u16_d16 v57, v84 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v84 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v84 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v84 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v84 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v84 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v84 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v84 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v84 offset:960
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v94.l, v58.h, v58.l, s4
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v72.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v72.l, 0, -16, s3
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v58.l, v90.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v60.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v60.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v58.h, v93.l, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v88.l, v59.l, v72.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v72.l, v59.h, -16
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v60.l, 4, v93.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v59.l, v58.l, -16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v58.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v87.l
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v72.l, v59.h, v72.l, s1
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v59.h, 0, -16, s3
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v59.l, v58.l, v59.l, s4
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v58.l, 0, -16, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v88, v88, 0, 16
	v_bfe_i32 v90, v89, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v87.l, v60.h, v59.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v59.h, v60.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v58.l, v58.h, v58.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v88, v88
	v_bfe_i32 v93, v94, 0, 16
	v_bfe_i32 v94, v72, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v60.l, v60.l, v59.h, s6
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v59, v59, 0, 16
	v_bfe_i32 v58, v58, 0, 16
	v_bfe_i32 v87, v87, 0, 16
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v58, v58
	v_bfe_i32 v60, v60, 0, 16
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v87, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v59, v107, v59 :: v_dual_mul_f32 v58, v92, v58
	v_mul_f32_e32 v93, v102, v93
	v_cvt_f32_i32_e32 v60, v60
	v_mul_f32_e32 v87, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v109.l, v59.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v88, v107, v88
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v111.l, v58.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v94, v91, v94
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v89.l, v93.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v60, v92, v60
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v108.l, v88.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v90, v102, v90
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v106.l, v87.h
	v_and_b32_e32 v95, 1, v111
	v_mov_b16_e32 v105.l, v94.h
	v_and_b32_e32 v91, 1, v108
	v_mov_b16_e32 v72.l, v90.h
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v10, v10, v114 :: v_dual_and_b32 v89, 1, v89
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.l, v60.h
	v_cmp_o_f32_e64 s1, v90, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v72, 1, v72
	v_and_b32_e32 v92, 1, v106
	v_cmp_o_f32_e64 s3, v93, v93
	v_cmp_o_f32_e64 s4, v88, v88
	v_add3_u32 v89, v93, v89, 0x7fff
	v_add3_u32 v72, v90, v72, 0x7fff
	v_and_b32_e32 v90, 1, v105
	v_add3_u32 v88, v88, v91, 0x7fff
	v_and_b32_e32 v91, 1, v109
	v_and_b32_e32 v93, 1, v110
	v_cmp_o_f32_e64 s5, v94, v94
	v_cmp_o_f32_e64 s6, v87, v87
	v_add3_u32 v90, v94, v90, 0x7fff
	v_add3_u32 v87, v87, v92, 0x7fff
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v58, v58
	v_add3_u32 v59, v59, v91, 0x7fff
	v_add3_u32 v60, v60, v93, 0x7fff
	v_add3_u32 v58, v58, v95, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s3
	v_cndmask_b16 v89.l, 0x7fff, v72.h, s1
	v_cndmask_b16 v72.h, 0x7fff, v90.h, s5
	v_cndmask_b16 v72.l, 0x7fff, v87.h, s6
	v_cndmask_b16 v59.l, 0x7fff, v88.h, s4
	v_cndmask_b16 v59.h, 0x7fff, v59.h, s7
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s8
	v_cndmask_b16 v60.l, 0x7fff, v58.h, s9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v85, v89, v72 offset1:8
	ds_store_2addr_b32 v85, v59, v60 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[88:91], v103
	ds_load_b128 v[96:99], v103 offset:1024
	ds_load_b128 v[92:95], v86
	ds_load_b128 v[100:103], v86 offset:1024
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v116, v115, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v87, v112 :: v_dual_add_f32 v72, v115, v116
	v_dual_mul_f32 v3, v3, v114 :: v_dual_fmac_f32 v72, v104, v113
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[88:95], v[50:57], v[9:16]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[96:103], v[50:57], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v19, v67
	v_mov_b32_e32 v17, v68
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_add_nc_u32_e32 v0, v66, v19
	v_add_nc_u32_e32 v18, v66, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v20, v65, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	ds_store_b32 v0, v72
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v18, v18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 2, v62
	.loc	1 1044 19                       ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, v0, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v21, 32, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_add_nc_u32_e32 v17, 0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v0, s14, v19
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v0, null, v18, v18, v9
	v_div_scale_f32 v23, null, v18, v18, v10
	v_div_scale_f32 v25, null, v18, v18, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v0
	v_rcp_f32_e32 v28, v23
	v_div_scale_f32 v26, null, v18, v18, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v29, v25
	v_div_scale_f32 v33, null, v18, v18, v13
	v_rcp_f32_e32 v31, v26
	v_div_scale_f32 v30, s2, v11, v18, v11
	v_fma_f32 v34, -v0, v27, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v35, -v23, v28, 1.0
	v_div_scale_f32 v22, vcc_lo, v9, v18, v9
	v_fma_f32 v36, -v25, v29, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v27, v34, v27 :: v_dual_fmac_f32 v28, v35, v28
	v_rcp_f32_e32 v34, v33
	v_fma_f32 v38, -v26, v31, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v36, v29
	v_div_scale_f32 v24, s1, v10, v18, v10
	v_div_scale_f32 v37, s4, v13, v18, v13
	v_dual_fmac_f32 v31, v38, v31 :: v_dual_mul_f32 v36, v24, v28
	v_div_scale_f32 v39, null, v18, v18, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v33, v34, 1.0
	v_div_scale_f32 v32, s3, v12, v18, v12
	v_fma_f32 v42, -v23, v36, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v44, v34
	v_mul_f32_e32 v38, v30, v29
	v_fmac_f32_e32 v36, v42, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v25, v38, v30
	v_dual_mul_f32 v35, v22, v27 :: v_dual_fmac_f32 v38, v43, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v0, v35, v22
	v_fmac_f32_e32 v35, v41, v27
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_lshrrev_b32_e32 v41, 6, v62
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v0, v35, v22
	v_fma_f32 v22, -v23, v36, v24
	v_rcp_f32_e32 v24, v39
	v_fma_f32 v23, -v25, v38, v30
	v_div_scale_f32 v25, null, v18, v18, v15
	v_div_fmas_f32 v0, v0, v27, v35
	v_dual_mul_f32 v27, v37, v34 :: v_dual_mul_f32 v40, v32, v31
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v9, v0, v18, v9
	v_fma_f32 v0, -v39, v24, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v45, -v26, v40, v32
	v_div_fmas_f32 v22, v22, v28, v36
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v28, null, v18, v18, v16
	v_fmac_f32_e32 v24, v0, v24
	v_div_scale_f32 v0, s1, v14, v18, v14
	v_fmac_f32_e32 v40, v45, v31
	v_div_fmas_f32 v23, v23, v29, v38
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v29, v28
	v_div_fixup_f32 v10, v22, v18, v10
	v_fma_f32 v26, -v26, v40, v32
	v_div_fixup_f32 v11, v23, v18, v11
	v_rcp_f32_e32 v22, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v23, v26, v31, v40
	v_fma_f32 v26, -v33, v27, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v28, v29, 1.0
	v_div_scale_f32 v38, s4, v7, v18, v7
	v_div_fixup_f32 v12, v23, v18, v12
	v_mul_f32_e32 v23, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v32, v29
	v_div_scale_f32 v32, s3, v16, v18, v16
	v_fma_f32 v31, -v39, v23, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v31, v24
	v_fmac_f32_e32 v27, v26, v34
	v_fma_f32 v26, -v25, v22, 1.0
	v_div_scale_f32 v31, null, v18, v18, v1
	v_fma_f32 v0, -v39, v23, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v33, v27, v37
	v_fmac_f32_e32 v22, v26, v22
	v_div_scale_f32 v26, s2, v15, v18, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v27, v30, v34, v27
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v31
	v_div_fmas_f32 v0, v0, v24, v23
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v27, v18, v13
	v_mul_f32_e32 v27, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v0, v18, v14
	v_fma_f32 v24, -v28, v27, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v30, v26, v22 :: v_dual_fmac_f32 v27, v24, v29
	v_fma_f32 v33, -v25, v30, v26
	v_div_scale_f32 v24, null, v18, v18, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v28, v27, v32
	v_fmac_f32_e32 v30, v33, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v25, v30, v26
	v_fma_f32 v25, -v31, v34, 1.0
	v_div_scale_f32 v26, null, v18, v18, v2
	v_div_fmas_f32 v22, v23, v22, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v25, v34
	v_rcp_f32_e32 v23, v26
	v_div_scale_f32 v25, s1, v1, v18, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v22, v18, v15
	v_rcp_f32_e32 v22, v24
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v28, v25, v34
	v_div_fmas_f32 v0, v0, v29, v27
	v_div_scale_f32 v29, s2, v2, v18, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v26, v23, 1.0
	v_fma_f32 v27, -v31, v28, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v0, v18, v16
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v23, v30, v23
	v_fma_f32 v30, -v24, v22, 1.0
	v_fmac_f32_e32 v28, v27, v34
	v_div_scale_f32 v27, null, v18, v18, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v30, v22
	v_div_scale_f32 v30, s3, v3, v18, v3
	v_mul_f32_e32 v32, v29, v23
	v_rcp_f32_e32 v33, v27
	v_fma_f32 v0, -v31, v28, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v31, v30, v22
	v_fma_f32 v25, -v26, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v34, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v34, null, v18, v18, v5
	v_fmac_f32_e32 v32, v25, v23
	v_fma_f32 v25, -v24, v31, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v27, v33, 1.0
	v_div_fixup_f32 v1, v0, v18, v1
	v_fma_f32 v0, -v26, v32, v29
	v_div_scale_f32 v26, s1, v4, v18, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v28, v33
	v_fmac_f32_e32 v31, v25, v22
	v_div_fmas_f32 v0, v0, v23, v32
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v25, v34
	v_div_scale_f32 v28, null, v18, v18, v6
	v_fma_f32 v23, -v24, v31, v30
	v_mul_f32_e32 v24, v26, v33
	v_div_fixup_f32 v2, v0, v18, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v28
	v_div_fmas_f32 v22, v23, v22, v31
	v_div_scale_f32 v31, null, v18, v18, v7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v34, v25, 1.0
	v_fma_f32 v23, -v27, v24, v26
	v_div_fixup_f32 v3, v22, v18, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v31
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v25, v29, v25
	v_div_scale_f32 v29, s2, v5, v18, v5
	v_fma_f32 v32, -v28, v30, 1.0
	v_mul_f32_e32 v22, v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v31, v35, 1.0
	v_dual_fmac_f32 v35, v0, v35 :: v_dual_fmac_f32 v24, v23, v33
	v_div_scale_f32 v23, s3, v6, v18, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v27, v24, v26
	v_fma_f32 v27, -v34, v22, v29
	v_dual_fmac_f32 v22, v27, v25 :: v_dual_mul_f32 v27, v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v31, v27, v38
	v_fmac_f32_e32 v27, v40, v35
	v_div_fmas_f32 v24, v26, v33, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_lshrrev_b32_e32 v33, 5, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, null, v18, v18, v8
	.loc	1 1044 28                       ; attention.py:1044:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v36, v23, v30 :: v_dual_add_nc_u32 v33, v17, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_add_nc_u32_e32 v17, v17, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v37, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, 1, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v24, v18, v4
	v_fma_f32 v26, -v28, v36, v23
	v_fma_f32 v24, -v34, v22, v29
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v26, v30
	v_div_fmas_f32 v22, v24, v25, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v0, -v32, v37, 1.0
	v_fma_f32 v24, -v31, v27, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v23, -v28, v36, v23
	v_div_fixup_f32 v5, v22, v18, v5
	v_fmac_f32_e32 v37, v0, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_mov_b16_e32 v0.l, v39.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v39, s1, v8, v18, v8
	v_div_fmas_f32 v23, v23, v30, v36
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	ds_store_b8 v33, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v0, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v17, v39, v37
	v_div_fmas_f32 v24, v24, v35, v27
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s28, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v32, v17, v39
	v_fmac_f32_e32 v17, v26, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v32, v17, v39
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v17, v25, v37, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v23, v18, v6
	v_div_fixup_f32 v6, v24, v18, v7
	v_div_fixup_f32 v7, v17, v18, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_cndmask_b32 v15, 0, v15
	v_dual_cndmask_b32 v9, 0, v10 :: v_dual_cndmask_b32 v10, 0, v11
	v_cndmask_b32_e32 v11, 0, v12, vcc_lo
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v12, s11, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v13, 0, v13 :: v_dual_cndmask_b32 v14, 0, v14
	v_dual_cndmask_b32 v16, 0, v16 :: v_dual_cndmask_b32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v12, s28, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
	v_dual_cndmask_b32 v4, 0, v4 :: v_dual_cndmask_b32 v5, 0, v5
	v_dual_cndmask_b32 v0, 0, v0 :: v_dual_cndmask_b32 v7, 0, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v17, v12, v20, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v6, 0, v6, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s28, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e32 v18, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v19, 8, v17
	v_add_nc_u32_e32 v22, 40, v17
	v_add_nc_u32_e32 v20, 32, v17
	buffer_store_b32 v8, v18, s[12:15], 0 offen
	v_add_nc_u32_e32 v8, 16, v17
	v_dual_cndmask_b32 v18, 0x80000000, v19 :: v_dual_add_nc_u32 v19, 24, v17
	buffer_store_b32 v9, v18, s[12:15], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v19, vcc_lo
	v_dual_cndmask_b32 v19, 0x80000000, v22 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v10, v8, s[12:15], 0 offen
	v_add_nc_u32_e32 v8, 48, v17
	s_clause 0x2
	buffer_store_b32 v11, v9, s[12:15], 0 offen
	buffer_store_b32 v13, v18, s[12:15], 0 offen
	buffer_store_b32 v14, v19, s[12:15], 0 offen
	v_add_nc_u32_e32 v9, 56, v17
	v_add_lshl_u32 v10, v12, v21, 2
	v_add_nc_u32_e32 v11, 0x88, v17
	v_add_nc_u32_e32 v12, 0x90, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[12:15], 0 offen
	buffer_store_b32 v16, v9, s[12:15], 0 offen
	buffer_store_b32 v1, v10, s[12:15], 0 offen
	buffer_store_b32 v2, v11, s[12:15], 0 offen
	buffer_store_b32 v3, v12, s[12:15], 0 offen
	v_add_nc_u32_e32 v1, 0x98, v17
	v_add_nc_u32_e32 v2, 0xa0, v17
	v_add_nc_u32_e32 v3, 0xa8, v17
	v_add_nc_u32_e32 v8, 0xb0, v17
	v_add_nc_u32_e32 v9, 0xb8, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[12:15], 0 offen
	buffer_store_b32 v5, v2, s[12:15], 0 offen
	buffer_store_b32 v0, v3, s[12:15], 0 offen
	buffer_store_b32 v6, v8, s[12:15], 0 offen
	buffer_store_b32 v7, v9, s[12:15], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 117
		.amdhsa_next_free_sgpr 36
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_vgpr, 117
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5644
; TotalNumSgprs: 38
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
